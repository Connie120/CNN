//// (C) 1992-2019 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 


// Generates global and local ids for given set of group ids.
// Need one of these for each kernel instance.
//
// This block accepts a workgroup id along with the global id that corresponds with the first item of that workgroup id.  It 
// then issues local/workgroup/global ids to the kernel.
// 
//    - Items for the same workgroup are issued contiguously.
//      That is, items from different workgroups are never interleaved.
//
//    - Subject to the previous constraint, we make the lower 
//      order ids (e.g. local_id[0]) iterate faster than 
//      higher order (e.g. local_id[2])
//
//    - Id values start at zero and only increase.
//
//    - Behaviour is unspecified if too many workgroups are dispatched
//      (global_id[0] * global_id[1] * global_id[2] times) between times
//      that "start" is asserted.
// There are 2 versions of the code, one for families prior to Stratix10 and another for Stratix10 (and later)

`default_nettype none

module acl_id_iterator
#(
  parameter WIDTH = 32,                      // width of all the id outputs
  parameter LOCAL_WIDTH_X = 32,              // internal width of local_id[0] counter
  parameter LOCAL_WIDTH_Y = 32,              // internal width of local_id[1] counter
  parameter LOCAL_WIDTH_Z = 32,              // internal width of local_id[2] counter
  parameter ENABLE_TESSELLATION = 0,
  parameter STALL_OUT_LOOKAHEAD_COUNT = 1,   // assert stall_out_lookahead when there is only room for this many valid_in signals before a stall will happen (value to be set based on upstream block requirements)
  parameter VALID_OUT_LOOKAHEAD_COUNT = 3,   // de-assert valid_out_lookahead when there are this many consecutive VALID signals available (value to be set based on downstream block requirements)
  parameter HYPER_PIPELINE = 0,              // enable optimizations targeting HIPI based architectures, note that this can result in a large increase in area
  parameter enable_ecc = "FALSE",            // Enable error correction coding
  parameter ASYNC_RESET=1,                   // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
  parameter SYNCHRONIZE_RESET=0              // set to '1' to pass the incoming reset signal through a synchronizer before use
)

(
  input  wire clock,
  input  wire resetn,                              // Reset input. Asynchronous for families prior to Stratix 10, Synchronous for Stratix 10 and later
  input  wire start,                               // asserted to restart (reset) the iterator
  
  // handshaking with work group dispatcher
  input  wire valid_in,
  output wire stall_out,
  output wire stall_out_lookahead,
  
  // handshaking with kernel instance
  input  wire stall_in,
  output wire valid_out,
  output wire valid_out_lookahead,
  
  // comes from group dispatcher, qualified with valid_in/stall_out
  input  wire [WIDTH-1:0] group_id_in[2:0],
  input  wire [WIDTH-1:0] global_id_base_in[2:0],
  
  // kernel parameters from the higher level (assumed stable between assertions of 'start' signal)
  input  wire [WIDTH-1:0] local_size[2:0],         // size of each workgroup
  input  wire [WIDTH-1:0] global_size[2:0],        // total global size, not needed, used only for debugging
  
  // actual outputs, qualified with valid_out/stall_in
  output wire [WIDTH-1:0] local_id[2:0],
  output wire [WIDTH-1:0] global_id[2:0],
  output wire [WIDTH-1:0] group_id[2:0],
  output wire [1:0]       ecc_err_status          // ecc status signals
);

   localparam                    NUM_RESET_COPIES = 1;
   localparam                    RESET_PIPE_DEPTH = 3;
   logic                         aclrn;
   logic [NUM_RESET_COPIES-1:0]  sclrn;
   logic                         resetn_synchronized;
   acl_reset_handler #(
      .ASYNC_RESET            (ASYNC_RESET),
      .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
      .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
      .PIPE_DEPTH             (RESET_PIPE_DEPTH),
      .NUM_COPIES             (NUM_RESET_COPIES)
   ) acl_reset_handler_inst (
      .clk                    (clock),
      .i_resetn               (resetn),
      .o_aclrn                (aclrn),
      .o_sclrn                (sclrn),
      .o_resetn_synchronized  (resetn_synchronized)
   );

  
  genvar index;
  generate
    logic [1:0] ecc_err_status_0, ecc_err_status_1;
    if (!HYPER_PIPELINE) begin
    
      // Storing group id vector and global id offsets vector.
      // Global id offsets help work item iterators calculate global
      // ids without using multipliers.
      localparam FIFO_WIDTH = 2 * 3 * WIDTH;
      localparam FIFO_DEPTH = 4;
      localparam TESSELLATION_STAGES = ENABLE_TESSELLATION ? 3 : 0;
      
      
      wire last_in_group;
      wire valid_out_wire;
      wire valid_out_wire_input;
      wire enable;
      wire issue = valid_out_wire & enable;
      wire issue_check = valid_out_wire;
      
      reg just_seen_last_in_group;
      wire [WIDTH-1:0] global_id_from_iter_wire[2:0];
      wire [WIDTH-1:0] global_id_base[2:0];
      wire [WIDTH-1:0] global_id_base_wire[2:0];


      wire [WIDTH-1:0] local_id_wire[2:0];
      wire [WIDTH-1:0] global_id_wire[2:0];
      wire [WIDTH-1:0] group_id_wire[2:0];

      assign enable = !valid_out |  !stall_in;
      
      for ( index = 0; index < 3; index=index+1 ) 
      begin : register_block
        acl_shift_register #(
          .WIDTH(WIDTH),
          .STAGES(TESSELLATION_STAGES),
          .ASYNC_RESET(ASYNC_RESET),
          .SYNCHRONIZE_RESET(0)
          ) acl_gid(.clock(clock), .resetn(resetn_synchronized), .clear(start), .enable(enable) , .Q(global_id_base[index]), .D(global_id_base_wire[index])
          );
        acl_shift_register  #(
          .WIDTH(WIDTH),
          .STAGES(TESSELLATION_STAGES),
          .ASYNC_RESET(ASYNC_RESET),
          .SYNCHRONIZE_RESET(0)
          ) acl_lid(.clock(clock), .resetn(resetn_synchronized), .clear(start), .enable(enable) , .Q(local_id[index]), .D(local_id_wire[index])
          );
        acl_shift_register  #(
          .WIDTH(WIDTH),
          .STAGES(TESSELLATION_STAGES),
          .ASYNC_RESET(ASYNC_RESET),
          .SYNCHRONIZE_RESET(0)
          ) acl_grid(.clock(clock), .resetn(resetn_synchronized), .clear(start), .enable(enable) , .Q(group_id[index]), .D(group_id_wire[index])
          );
      end

      acl_shift_register  #(
        .WIDTH(1),
        .STAGES(TESSELLATION_STAGES),
        .ASYNC_RESET(ASYNC_RESET),
        .SYNCHRONIZE_RESET(0)
        ) acl_valid(.clock(clock), .resetn(resetn_synchronized), .clear(start), .enable(enable) , .Q(valid_out), .D(valid_out_wire)
        );

      // takes one cycle for the work iterm iterator to register
      // global_id_base. During that cycle, just use global_id_base
      // directly.
      wire use_base_wire;
      wire use_base;
      wire [WIDTH-1:0] use_base_wide;
      assign use_base_wire = just_seen_last_in_group;
      acl_shift_register  #(
        .WIDTH(1),
        .STAGES(TESSELLATION_STAGES),
        .ASYNC_RESET(ASYNC_RESET),
        .SYNCHRONIZE_RESET(0)
        ) use_base_inst(.clock(clock), .resetn(resetn_synchronized), .clear(start), .enable(enable) , .Q(use_base), .D(use_base_wire)
        );
      assign global_id[0] = use_base ? global_id_base[0] : global_id_from_iter_wire[0];
      assign global_id[1] = use_base ? global_id_base[1] : global_id_from_iter_wire[1];
      assign global_id[2] = use_base ? global_id_base[2] : global_id_from_iter_wire[2];
      
      // Group ids (and global id offsets) are stored in a fifo.
      acl_fifo #(
        .DATA_WIDTH(FIFO_WIDTH),
        .DEPTH(FIFO_DEPTH),
        .enable_ecc(enable_ecc),
        .ASYNC_RESET(ASYNC_RESET),
        .SYNCHRONIZE_RESET(0)
      ) group_id_fifo (
        .clock(clock),
        .resetn(resetn_synchronized),
        .data_in ( {group_id_in[2], group_id_in[1], group_id_in[0], 
                    global_id_base_in[2], global_id_base_in[1], global_id_base_in[0]} ),
        .data_out( {group_id_wire[2], group_id_wire[1], group_id_wire[0], 
                    global_id_base_wire[2], global_id_base_wire[1], global_id_base_wire[0]} ),
        .valid_in(valid_in),
        .stall_out(stall_out),
        .valid_out(valid_out_wire),
        .stall_in(!last_in_group | !issue),
        .ecc_err_status(ecc_err_status_0)
      );
        
      
      acl_work_item_iterator #(
       .WIDTH                       (WIDTH),
       .LOCAL_WIDTH_X               (LOCAL_WIDTH_X),
       .LOCAL_WIDTH_Y               (LOCAL_WIDTH_Y),
       .LOCAL_WIDTH_Z               (LOCAL_WIDTH_Z),
       .VALID_OUT_LOOKAHEAD_COUNT   (VALID_OUT_LOOKAHEAD_COUNT),
       .ENABLE_TESSELLATION         (ENABLE_TESSELLATION),
       .HYPER_PIPELINE              (HYPER_PIPELINE),
       .enable_ecc                  (enable_ecc),
       .ASYNC_RESET                 (ASYNC_RESET),
       .SYNCHRONIZE_RESET           (0)
      ) work_item_iterator (
        .clock(clock),
        .resetn(resetn_synchronized),
        .start(start),
        .issue(issue),
        
        .local_size(local_size),
        .global_size(global_size),
        .global_id_base(global_id_base_wire),
        
        .local_id(local_id_wire),
        .global_id(global_id_from_iter_wire),
        .last_in_group(last_in_group),
        .input_enable(enable),
        .ecc_err_status(ecc_err_status_1)
      );
      
      // goes high one cycle after last_in_group. stays high until
      // next cycle where 'issue' is high.
      always @(posedge clock or negedge aclrn) begin
        if ( ~aclrn ) begin
          just_seen_last_in_group <= 1'b1;
        end else begin
          if ( start )
            just_seen_last_in_group <= 1'b1;
          else if (last_in_group & issue)
            just_seen_last_in_group <= 1'b1;
          else if (issue)
            just_seen_last_in_group <= 1'b0;
          else
            just_seen_last_in_group <= just_seen_last_in_group;
          if (~sclrn[0]) just_seen_last_in_group <= 1'b1;
        end
      end

    end else begin      // HYPER_PIPELINE=1

      localparam FIFO_WIDTH = 2 * 3 * WIDTH;           // store group_id_in and global_id_base_in, each is 3 words wide, each word is width WIDTH
      localparam FIFO_DEPTH = 8;                       // this is pretty arbitrary, determines how many work groups each id_iterator will absorb before allowing the next iterator to start accepting work groups
                                      // due to latency through the FIFO, setting this to 4 does not allow for 'bubble-free' operation, so 8 is the minimum

      // connections to the local FIFO for storing group id and global base id
      wire [WIDTH-1:0] global_id_base_from_fifo[2:0];
      wire [WIDTH-1:0] group_id_from_fifo[2:0];
      wire valid_out_from_fifo;
      wire valid_out_lookahead_from_fifo;
      wire stall_in_to_fifo;

      // Group ids and global id offsets are stored in a fifo, allows this kernel to accept multiple workgroups before the next kernel will start receiving workgroups
      acl_fifo_stall_valid_lookahead #(
       .DATA_WIDTH(FIFO_WIDTH),
       .DEPTH(FIFO_DEPTH),
       .STALL_OUT_LOOKAHEAD_COUNT(STALL_OUT_LOOKAHEAD_COUNT),
       .VALID_OUT_LOOKAHEAD_COUNT(3),   // de-assert valid_out_lookahead when there are 3 (or fewer) valid words in the FIFO  NOTE: any value less than 3 can result in EMPTY being asserted while ALMOST_EMPTY is not asserted, which results in functional errors
       .enable_ecc(enable_ecc),
       .ASYNC_RESET(ASYNC_RESET),
       .SYNCHRONIZE_RESET(0)
      ) group_id_fifo (
       .clock(clock),
       .resetn(resetn_synchronized),
       .valid_in(valid_in),
       .stall_out(stall_out),
       .stall_out_lookahead(stall_out_lookahead),
       .data_in ( {group_id_in[2], group_id_in[1], group_id_in[0], 
               global_id_base_in[2], global_id_base_in[1], global_id_base_in[0]} ),
       .valid_out(valid_out_from_fifo),
       .valid_out_lookahead(valid_out_lookahead_from_fifo),
       .stall_in(stall_in_to_fifo),
       .data_out( {group_id_from_fifo[2], group_id_from_fifo[1], group_id_from_fifo[0], 
               global_id_base_from_fifo[2], global_id_base_from_fifo[1], global_id_base_from_fifo[0]} ),
       .ecc_err_status(ecc_err_status_0)
      );

/* Future change (Case:483305) replace acl_fifo_stall_valid_lookahead with acl_high_speed_fifo or hld_fifo      
      acl_high_speed_fifo #(
       .WIDTH                          (FIFO_WIDTH),
       .DEPTH                          (FIFO_DEPTH),
       .ALMOST_EMPTY_CUTOFF            (2),
       .ALMOST_FULL_CUTOFF             (STALL_OUT_LOOKAHEAD_COUNT),
       .ASYNC_RESET                    (ASYNC_RESET),
       .SYNCHRONIZE_RESET              (0),
       .RESET_EVERYTHING               (0),
       .RESET_EXTERNALLY_HELD          (1),
       .RAM_BLOCK_TYPE                 ("MLAB")
      ) group_id_fifo (
       .clock                          (clock),
       .resetn                         (resetn_synchronized),
       .valid_in                       (valid_in),
       .data_in                        ( {group_id_in[2], group_id_in[1], group_id_in[0], 
                                         global_id_base_in[2], global_id_base_in[1], global_id_base_in[0]} ),
       .stall_out                      (stall_out),
       .almost_full                    (stall_out_lookahead),
       .valid_out                      (valid_out_from_fifo),
       .data_out                       ( {group_id_from_fifo[2], group_id_from_fifo[1], group_id_from_fifo[0], 
                                         global_id_base_from_fifo[2], global_id_base_from_fifo[1], global_id_base_from_fifo[0]} ),
       .stall_in                       (stall_in_to_fifo),
       .almost_empty                   (valid_out_lookahead_from_fifo),
       .forced_read_out                ()
      );
*/

      acl_work_item_iterator #(
       .WIDTH                       (WIDTH),
       .LOCAL_WIDTH_X               (LOCAL_WIDTH_X),
       .LOCAL_WIDTH_Y               (LOCAL_WIDTH_Y),
       .LOCAL_WIDTH_Z               (LOCAL_WIDTH_Z),
       .VALID_OUT_LOOKAHEAD_COUNT   (VALID_OUT_LOOKAHEAD_COUNT),
       .ENABLE_TESSELLATION         (ENABLE_TESSELLATION),
       .HYPER_PIPELINE              (HYPER_PIPELINE),
       .enable_ecc                  (enable_ecc),
       .ASYNC_RESET                 (ASYNC_RESET),
       .SYNCHRONIZE_RESET           (0)
      ) work_item_iterator (
       .clock(clock),
       .resetn(resetn_synchronized),
       .start(start),
       .valid_in(valid_out_from_fifo),
       .valid_in_lookahead(valid_out_lookahead_from_fifo),
       .stall_out(stall_in_to_fifo),
       .stall_in(stall_in),
       .valid_out(valid_out),
       .valid_out_lookahead(valid_out_lookahead),
       .group_id_in(group_id_from_fifo),
       .global_id_base_in(global_id_base_from_fifo),
       .local_size(local_size),
       .local_id(local_id),
       .global_id(global_id),
       .group_id(group_id),
       .ecc_err_status(ecc_err_status_1)
      );

    end
    assign ecc_err_status = ecc_err_status_0 | ecc_err_status_1;
  endgenerate
endmodule

`default_nettype wire

