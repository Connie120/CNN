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


//
// Top level module for pipelined memory access.
//
// Properties - Coalesced: No, Ordered: N/A, Hazard-Safe: Yes, Pipelined: Yes
//              (see lsu_top.v for details)
//
// Description: Requests are submitted as soon as they are received.
//              Pipelined access to memory so multiple requests can be 
//              in flight at a time.

// Pipelined read unit:
//    Accept read requests on the upstream interface.  When a request is
//    received, store the requested byte address in the request fifo and
//    pass the request through to the avalon interface.  Response data
//    is buffered in the response fifo and the appropriate word is muxed
//    out of the response fifo based on the address in the request fifo.
//    The response fifo has limited capacity, so a counter is used to track
//    the number of pending responses to generate an upstream stall if
//    we run out of room.

// altera message_off 10036

`default_nettype none

module lsu_pipelined_read
(
    clk, resetn, o_stall, i_valid, i_address, i_stall, o_valid, o_readdata, 
    o_active, //Debugging signal
    avm_address, avm_read, avm_readdata, avm_waitrequest, avm_byteenable,
    avm_readdatavalid,
    o_input_fifo_depth,
    avm_burstcount,
    ecc_err_status
);

/*************
* Parameters *
*************/
parameter AWIDTH=32;            // Address width (32-bits for Avalon)
parameter WIDTH_BYTES=4;        // Width of the memory access (bytes)
parameter MWIDTH_BYTES=32;      // Width of the global memory bus (bytes)
parameter ALIGNMENT_ABITS=2;    // Request address alignment (address bits)
parameter KERNEL_SIDE_MEM_LATENCY=32;    // The max number of live threads
parameter BURSTCOUNT_WIDTH=6;   // Size of Avalon burst count port
parameter USEINPUTFIFO=1;
parameter USEOUTPUTFIFO=1;
parameter INPUTFIFOSIZE=32;
parameter ASYNC_RESET=1;        // 1:resetn is used as an asynchonous reset, and resets all registers, 0:resetn is used as a synchronous reset, and resets only registers which require a reset
parameter SYNCHRONIZE_RESET=0;  // set to '1' to pass the incoming resetn signal through a synchronizer before use
parameter enable_ecc = "FALSE"; // Enable error correction coding

localparam INPUTFIFO_USEDW_MAXBITS=$clog2(INPUTFIFOSIZE);

// Derived parameters
localparam MAX_BURST=2**(BURSTCOUNT_WIDTH-1);
localparam WIDTH=8*WIDTH_BYTES;
localparam MWIDTH=8*MWIDTH_BYTES;
localparam BYTE_SELECT_BITS=$clog2(MWIDTH_BYTES);
localparam SEGMENT_SELECT_BITS=BYTE_SELECT_BITS-ALIGNMENT_ABITS;
//
// We only o_stall if we have more than KERNEL_SIDE_MEM_LATENCY inflight requests
//
localparam RETURN_FIFO_SIZE=KERNEL_SIDE_MEM_LATENCY+1;
localparam COUNTER_WIDTH=$clog2(RETURN_FIFO_SIZE+1);

/********
* Ports *
********/
// Standard global signals
input wire clk;
input wire resetn;

// Upstream interface
output logic o_stall;
input wire i_valid;
input wire [AWIDTH-1:0] i_address;

// Downstream interface
input wire i_stall;
output logic o_valid;
output logic [WIDTH-1:0] o_readdata;
output reg o_active;

// Avalon interface
output logic [AWIDTH-1:0] avm_address;
output logic avm_read;
input wire [MWIDTH-1:0] avm_readdata;
input wire avm_waitrequest;
output logic [MWIDTH_BYTES-1:0] avm_byteenable;
input wire avm_readdatavalid;

output logic [BURSTCOUNT_WIDTH-1:0] avm_burstcount;

// For profiler/performance monitor
output logic [INPUTFIFO_USEDW_MAXBITS-1:0] o_input_fifo_depth;    // this badly misnamed signal indicates the current occupancy (not depth) of the input FIFO (if present)
output logic  [1:0] ecc_err_status;  // ecc status signals

/***************
* Architecture *
***************/

// asynchronous/synchronous reset logic
localparam                    NUM_RESET_COPIES = 1;
localparam                    RESET_PIPE_DEPTH = 2;
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
   .clk                    (clk),
   .i_resetn               (resetn),
   .o_aclrn                (aclrn),
   .o_sclrn                (sclrn),
   .o_resetn_synchronized  (resetn_synchronized)
);



wire valid_from_fifo;
wire [AWIDTH-1:0] address_from_fifo;
wire stall_to_fifo;

wire read_accepted;
wire read_used;
wire [BYTE_SELECT_BITS-1:0] byte_select;
wire ready;
logic [1:0] ecc_err_status_0, ecc_err_status_1, ecc_err_status_2;

localparam FIFO_DEPTH_BITS=USEINPUTFIFO ? $clog2(INPUTFIFOSIZE) : 0;
wire [FIFO_DEPTH_BITS-1:0] usedw_true_width;
generate
   if (USEINPUTFIFO)
      assign o_input_fifo_depth[FIFO_DEPTH_BITS-1:0] = usedw_true_width;

   // Set unused bits to 0
   genvar bit_index;
   for(bit_index = FIFO_DEPTH_BITS; bit_index < INPUTFIFO_USEDW_MAXBITS; bit_index = bit_index + 1)
   begin: read_fifo_depth_zero_assign
      assign o_input_fifo_depth[bit_index] = 1'b0;
   end
endgenerate


generate
if(USEINPUTFIFO)
begin
  acl_fifo #(
    .DATA_WIDTH(AWIDTH),
    .DEPTH(INPUTFIFOSIZE),
    .ASYNC_RESET(ASYNC_RESET),
    .SYNCHRONIZE_RESET(0),
    .enable_ecc(enable_ecc)
  ) input_fifo (
    .clock(clk),
    .resetn(resetn_synchronized),
    .data_in( i_address ),
    .data_out( address_from_fifo ),
    .valid_in( i_valid ),
    .valid_out( valid_from_fifo ),
    .stall_in( stall_to_fifo ),
    .stall_out( o_stall ),
    .usedw( usedw_true_width ),
    .ecc_err_status(ecc_err_status_0)
  );
end
else
begin
  assign valid_from_fifo = i_valid;
  assign address_from_fifo = i_address;
  assign o_stall = stall_to_fifo;
  assign ecc_err_status_0 = 2'h0;
end
endgenerate

// Track the number of transactions waiting in the pipeline here
reg [COUNTER_WIDTH-1:0] counter;
wire incr, decr;
wire [1:0] counter_update;
wire [COUNTER_WIDTH-1:0] counter_update_extended;
assign incr = read_accepted;
assign decr = read_used;
assign counter_update = incr - decr;
assign counter_update_extended = $signed(counter_update);
always@(posedge clk or negedge aclrn)
begin
    if(~aclrn)
    begin
        counter <= '0;
        o_active <= '0;
    end
    else
    begin
        o_active <= (counter != {COUNTER_WIDTH{1'b0}});
        counter <= counter + counter_update_extended;
        if (~sclrn[0]) begin
          counter <= '0;
          o_active <= '0;
        end
    end 
end


assign ready = (counter <= (RETURN_FIFO_SIZE-1));

assign stall_to_fifo = !ready || avm_waitrequest;

wire [WIDTH-1:0] rdata;
// Byte-addresses enter a FIFO so we can demux the appropriate data back out.
generate
if(SEGMENT_SELECT_BITS > 0)
begin
  wire [SEGMENT_SELECT_BITS-1:0] segment_address_out;
  wire [SEGMENT_SELECT_BITS-1:0] segment_address_in;
  assign segment_address_in = address_from_fifo[ALIGNMENT_ABITS +: BYTE_SELECT_BITS-ALIGNMENT_ABITS];
  
    hld_fifo #(
        .WIDTH (SEGMENT_SELECT_BITS),
        .DEPTH (KERNEL_SIDE_MEM_LATENCY+1),
        .ALMOST_EMPTY_CUTOFF (0),
        .ALMOST_FULL_CUTOFF (0),
        .INITIAL_OCCUPANCY (0),
        .ASYNC_RESET (ASYNC_RESET),
        .SYNCHRONIZE_RESET (0),
        .RESET_EVERYTHING (0),
        .RESET_EXTERNALLY_HELD (1),
        .STALL_IN_EARLINESS (0),
        .VALID_IN_EARLINESS (0),
        .REGISTERED_DATA_OUT_COUNT (SEGMENT_SELECT_BITS),   //output data is the select for the rdata mux
        .NEVER_OVERFLOWS (1),                               //occupancy tracking is already handled separately
        .HOLD_DATA_OUT_WHEN_EMPTY (0),
        .WRITE_AND_READ_DURING_FULL (1),                    //to match behavior of acl_ll_fifo, it is not known if this is necessary but it is safer to have this
        .USE_STALL_LATENCY_UPSTREAM (0),
        .USE_STALL_LATENCY_DOWNSTREAM (0),
        .STYLE ("ll"),
        .enable_ecc(enable_ecc)
    )
    req_fifo
    (
        .clock          (clk),
        .resetn         (resetn_synchronized),
    
        .i_data         (segment_address_in),
        .i_valid        (read_accepted),
        .o_stall        (),
        .o_almost_full  (),
    
        .o_data         (segment_address_out),
        .o_valid        (),
        .i_stall        (~avm_readdatavalid), //r_avm_readdatavalid is a forced read
        .o_almost_empty (),
        .o_empty        (),
        .ecc_err_status (ecc_err_status_1)
    );
  assign byte_select = (segment_address_out << ALIGNMENT_ABITS);
  assign rdata = avm_readdata[8*byte_select +: WIDTH];
end
else
begin
  assign byte_select = '0;
  assign rdata = avm_readdata;
  assign ecc_err_status_1 = 2'h0;
end
endgenerate

// Status bits
assign read_accepted = valid_from_fifo && ready && !avm_waitrequest;
assign read_used = o_valid && !i_stall;

assign avm_byteenable = {MWIDTH_BYTES{1'b1}};
assign avm_address = ((address_from_fifo >> BYTE_SELECT_BITS) << BYTE_SELECT_BITS);
assign avm_read = valid_from_fifo && ready;
assign avm_burstcount = {{(BURSTCOUNT_WIDTH-1){1'b0}}, {1'b1}};

// ---------------------------------------------------------------------------------
// Output fifo - must be at least as deep as the maximum number of pending requests
// so that we can guarantee a place for the response data if the downstream blocks
// are stalling.
//
generate
if(USEOUTPUTFIFO)
begin
acl_data_fifo #(
   .DATA_WIDTH(WIDTH),
   .DEPTH(RETURN_FIFO_SIZE),
    .ASYNC_RESET(ASYNC_RESET),
    .SYNCHRONIZE_RESET(0),
   .IMPL("ram"),
   .enable_ecc(enable_ecc)
) data_fifo (
   .clock(clk),
   .resetn(resetn_synchronized),
   .data_in( rdata ),
   .data_out( o_readdata ),
   .valid_in( avm_readdatavalid ),
   .valid_out( o_valid ),
   .stall_in( i_stall ),
   .stall_out(),
   .ecc_err_status(ecc_err_status_2)
);
end
else
begin
   assign o_valid = avm_readdatavalid;
   assign o_readdata = rdata;
   assign ecc_err_status_2 = 2'h0;
end
endgenerate

assign ecc_err_status = ecc_err_status_0 | ecc_err_status_1 | ecc_err_status_2;

endmodule

/******************************************************************************/

// Pipelined write unit:
//    Accept write requests on the upstream interface.  Mux the data into the
//    appropriate word lines based on the segment select bits.  Also toggle
//    the appropriate byte-enable lines to preserve data we are not 
//    overwriting.  A counter keeps track of how many requests have been
//    send but not yet acknowledged by downstream blocks.
module lsu_pipelined_write
(
    clk, resetn, o_stall, i_valid, i_address, i_writedata, i_stall, o_valid, i_byteenable,
    o_active, //Debugging signal
    avm_address, avm_write, avm_writeack, avm_writedata, avm_byteenable, avm_waitrequest, o_input_fifo_depth,
    ecc_err_status
);

/*************
* Parameters *
*************/
parameter AWIDTH=32;    // Address width (32-bits for Avalon)
parameter WIDTH_BYTES=4;     // Width of the kernel side memory access
parameter MWIDTH_BYTES=32;   // Width of the global memory bus
parameter ALIGNMENT_ABITS=2;    // Request address alignment (address bits)
parameter COUNTER_WIDTH=6;   // This parameter is not set by lsu_top, so is left at it's default value.  It seems like this should be derived frmo the INPUTFIFOSIZE parameter?
parameter KERNEL_SIDE_MEM_LATENCY=32;
parameter USEINPUTFIFO=1;
parameter STALLFREE = 0;   //set to '1' if this LSU is in a stall-free region and the memory system/arbitration is guaranteed to never stall
parameter USE_BYTE_EN=0;
parameter INPUTFIFOSIZE=32;
parameter INPUTFIFO_USEDW_MAXBITS=$clog2(INPUTFIFOSIZE);
parameter ASYNC_RESET=1;        // 1:resetn is used as an asynchonous reset, and resets all registers, 0:resetn is used as a synchronous reset, and resets only registers which require a reset
parameter SYNCHRONIZE_RESET=0;  // set to '1' to pass the incoming resetn signal through a synchronizer before use
parameter enable_ecc = "FALSE"; // Enable error correction coding

localparam WIDTH=8*WIDTH_BYTES;
localparam MWIDTH=8*MWIDTH_BYTES;
localparam BYTE_SELECT_BITS=$clog2(MWIDTH_BYTES);
localparam SEGMENT_SELECT_BITS=BYTE_SELECT_BITS-ALIGNMENT_ABITS;
localparam NUM_SEGMENTS=2**SEGMENT_SELECT_BITS;
localparam SEGMENT_WIDTH=8*(2**ALIGNMENT_ABITS);
localparam SEGMENT_WIDTH_BYTES=(2**ALIGNMENT_ABITS);

/********
* Ports *
********/
// Standard global signals
input wire clk;
input wire resetn;

// Upstream interface
output logic o_stall;
input wire i_valid;
input wire [AWIDTH-1:0] i_address;
input wire [WIDTH-1:0] i_writedata;
input wire [WIDTH_BYTES-1:0] i_byteenable;
// Downstream interface
input wire i_stall;
output logic o_valid;
output reg o_active;

// Avalon interface
output logic [AWIDTH-1:0] avm_address;
output logic avm_write;
input wire avm_writeack;
output reg [MWIDTH-1:0] avm_writedata;
output reg [MWIDTH_BYTES-1:0] avm_byteenable;
input wire avm_waitrequest;

// For profiler/performance monitor
output logic [INPUTFIFO_USEDW_MAXBITS-1:0] o_input_fifo_depth;
output logic  [1:0] ecc_err_status;  // ecc status signals

/***************
* Architecture *
***************/

// asynchronous/synchronous reset logic
localparam                    NUM_RESET_COPIES = 1;
localparam                    RESET_PIPE_DEPTH = 2;
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
   .clk                    (clk),
   .i_resetn               (resetn),
   .o_aclrn                (aclrn),
   .o_sclrn                (sclrn),
   .o_resetn_synchronized  (resetn_synchronized)
);


reg transaction_complete;
wire write_accepted;
wire ready;
wire sr_stall;

wire valid_from_fifo;
wire [AWIDTH-1:0] address_from_fifo;
wire [WIDTH-1:0] writedata_from_fifo;
wire [WIDTH_BYTES-1:0] byteenable_from_fifo;
wire stall_to_fifo;

localparam FIFO_DEPTH_BITS=USEINPUTFIFO ? $clog2(INPUTFIFOSIZE) : 0;
wire [FIFO_DEPTH_BITS-1:0] usedw_true_width;
generate
   if (USEINPUTFIFO)
      assign o_input_fifo_depth[FIFO_DEPTH_BITS-1:0] = usedw_true_width;

   // Set unused bits to 0
   genvar bit_index;
   for(bit_index = FIFO_DEPTH_BITS; bit_index < INPUTFIFO_USEDW_MAXBITS; bit_index = bit_index + 1)
   begin: write_fifo_depth_zero_assign
      assign o_input_fifo_depth[bit_index] = 1'b0;
   end
endgenerate


localparam DATA_WIDTH = AWIDTH+WIDTH+(USE_BYTE_EN ? WIDTH_BYTES : 0);

generate
if(USEINPUTFIFO)
begin
wire valid_int;
wire stall_int;
wire [DATA_WIDTH-1:0] data_int;
logic [1:0] ecc_err_status_0, ecc_err_status_1;
   if(!USE_BYTE_EN)
   begin
     
      acl_fifo #(
          .DATA_WIDTH(AWIDTH+WIDTH),
          .DEPTH(INPUTFIFOSIZE),
          .enable_ecc(enable_ecc)
      ) data_fifo (
          .clock(clk),
          .resetn(resetn),
          .data_in( {i_address,i_writedata} ),
          .data_out( data_int ),
          .valid_in( i_valid ),
          .valid_out( valid_int ),
          .stall_in( stall_int ),
          .stall_out( o_stall ),
          .usedw( usedw_true_width ),
          .ecc_err_status(ecc_err_status_0)
      );
      acl_data_fifo #(
          .DATA_WIDTH(AWIDTH+WIDTH),
          .DEPTH(2),
          .IMPL("ll_reg"),
          .enable_ecc(enable_ecc)
      ) input_buf (
          .clock(clk),
          .resetn(resetn),
          .data_in( data_int ),
          .data_out( {address_from_fifo,writedata_from_fifo} ),
          .valid_in( valid_int ),
          .valid_out( valid_from_fifo ),
          .stall_in( stall_to_fifo ),
          .stall_out( stall_int ),
          .ecc_err_status(ecc_err_status_1)
      );
      assign byteenable_from_fifo =  {WIDTH_BYTES{1'b1}};

   end else begin
      acl_fifo #(
          .DATA_WIDTH(DATA_WIDTH),
          .DEPTH(INPUTFIFOSIZE),
          .enable_ecc(enable_ecc)
      ) data_fifo (
          .clock(clk),
          .resetn(resetn),
          .data_in( {i_byteenable, i_address,i_writedata}),
          .data_out( data_int ),
          .valid_in( i_valid ),
          .valid_out( valid_int ),
          .stall_in( stall_int ),
          .stall_out( o_stall ),
          .usedw( usedw_true_width ),
          .ecc_err_status(ecc_err_status_0)
      );
      acl_data_fifo #(
          .DATA_WIDTH(DATA_WIDTH),
          .DEPTH(2),
          .IMPL("ll_reg"),
          .enable_ecc(enable_ecc)
      ) input_buf (
          .clock(clk),
          .resetn(resetn),
          .data_in( data_int ),
          .data_out({byteenable_from_fifo,address_from_fifo,writedata_from_fifo}),
          .valid_in( valid_int ),
          .valid_out( valid_from_fifo ),
          .stall_in( stall_to_fifo ),
          .stall_out( stall_int ),
          .ecc_err_status(ecc_err_status_1)
      );
   end  
assign ecc_err_status = ecc_err_status_0 | ecc_err_status_1;
end
else
begin
   assign valid_from_fifo = i_valid;
   assign address_from_fifo = i_address;
   assign writedata_from_fifo = i_writedata;
   assign o_stall = stall_to_fifo;
   assign byteenable_from_fifo = USE_BYTE_EN ? i_byteenable : {WIDTH_BYTES{1'b1}}; 
   assign ecc_err_status = 2'h0;
end
endgenerate

// Avalon interface
assign avm_address = ((address_from_fifo >> BYTE_SELECT_BITS) << BYTE_SELECT_BITS);
assign avm_write = ready && valid_from_fifo;


// Mux in the correct data
generate
if(SEGMENT_SELECT_BITS > 0)
begin
  wire [SEGMENT_SELECT_BITS-1:0] segment_select;
  assign segment_select = address_from_fifo[ALIGNMENT_ABITS +: BYTE_SELECT_BITS-ALIGNMENT_ABITS];
  always@(*)
  begin
    avm_writedata = {MWIDTH{1'bx}};
    avm_writedata[segment_select*SEGMENT_WIDTH +: WIDTH] = writedata_from_fifo;

    avm_byteenable = {MWIDTH_BYTES{1'b0}};
    avm_byteenable[segment_select*SEGMENT_WIDTH_BYTES +: WIDTH_BYTES] = byteenable_from_fifo;
  end
end
else
begin
  always@(*)
  begin
    avm_writedata = writedata_from_fifo;
    avm_byteenable = byteenable_from_fifo;
  end
end
endgenerate

// Control logic

generate
if (STALLFREE)    // in a stall free memory system, we can greatly simplify the control logic
begin

  reg avm_writeack_dly;                // writeack signal delayed by one clock cycle
  
  always@(posedge clk or negedge aclrn)
  begin
      if(~aclrn)
      begin
          avm_writeack_dly <= '0;
      end
      else
      begin
          avm_writeack_dly <= avm_writeack;
      end
  end
  
  assign ready = '1;                                        // no stall, so always ready
  assign write_accepted = avm_write;                        // no stall, so writes are always accepted
  assign stall_to_fifo = '0;                                // never stall
  assign o_valid = avm_writeack_dly;
  assign o_active = '0;                                     // active signal not used in stall free regions

  


end
else
begin
  // Track the number of transactions waiting in the pipeline here
  reg [COUNTER_WIDTH-1:0] occ_counter; // occupancy counter
  wire occ_incr, occ_decr;
  reg [COUNTER_WIDTH-1:0] ack_counter; // acknowledge writes counter
  wire ack_incr, ack_decr;

  assign occ_incr = write_accepted;
  assign occ_decr = o_valid && !i_stall;
  assign ack_incr = avm_writeack;
  assign ack_decr = o_valid && !i_stall;
  always@(posedge clk or negedge aclrn)
  begin
      if(~aclrn)
      begin
          occ_counter <= '0;
          ack_counter <= '0;
          o_active <= '0;
      end
      else
      begin
          // incr - add one; decr - subtr one; both - stay the same
          occ_counter <= occ_counter + { {(COUNTER_WIDTH-1){!occ_incr && occ_decr}}, (occ_incr ^ occ_decr) };
          ack_counter <= ack_counter + { {(COUNTER_WIDTH-1){!ack_incr && ack_decr}}, (ack_incr ^ ack_decr) };
          o_active <= (occ_counter != {COUNTER_WIDTH{1'b0}});
          if(~sclrn[0]) begin
             occ_counter <= '0;
             ack_counter <= '0;
             o_active <= '0;
          end
      end
  end
  assign ready = (occ_counter != {COUNTER_WIDTH{1'b1}});
  assign write_accepted = avm_write && !avm_waitrequest;
  assign stall_to_fifo = !ready || avm_waitrequest;
  assign o_valid = (ack_counter != {COUNTER_WIDTH{1'b0}});
end
endgenerate

endmodule

`default_nettype wire
