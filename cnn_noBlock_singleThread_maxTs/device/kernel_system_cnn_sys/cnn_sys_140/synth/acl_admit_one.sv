// (C) 1992-2019 Intel Corporation.                            
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


/*
  This module is used in loop orchestration. Its function is to admit an upstream thread into a downstream loop and subsequently generate loop iterations (with the specified II) until the loop exits, 
  at which time the process repeats. It supports separate latencies on the data (the stall-valid round trip), empty, and exit.
  This module supports both zero and non-zero latencies on its stall-valid interfaces.

  It should be noted that this module, on its own, is not considered to be a node in a stall-valid network, which is why it does not have a complete stall-latency interface (for example it is
  missing o_empty/o_almost_empty ports).
  Rather it combines with other pieces to form a node that, overall, conforms to the S/V protocol and interface.
  For more details on this and to understand this module's role in overall loop orchestration, please see the corresponding FD: //depot/docs/hld/compiler/S10_Loop_Orchestration_FD.docx

*/

`timescale 1ps/1ps
`default_nettype none

module acl_admit_one #(
    parameter int II = 1,                                       // Initiation-interval of the loop
    parameter int LATENCY_FORKED_TO_EXIT = 1,                   // Minimum possible observed latency (# of cycles) from when o_forked is asserted to when i_exit is asserted. Must be >= 1.
    parameter int LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP = 1,  // Latency from de-assertion of o_stall to valid data arriving to downstream cluster body. Must be >= 0.
    parameter int LATENCY_UPSTREAM_EMPTY = 1,                   // Latency from upstream's empty to i_empty. Assumes that upstream's empty updates coincident with its valid-out or earlier. Must be >= 0.
    parameter int ASYNC_RESET = 1,                              // 1 = Registers are reset asynchronously. 0 = Registers are reset synchronously -- the reset signal is pipelined before consumption. In both cases, some registesr are not reset at all.
    parameter int SYNCHRONIZE_RESET = 0                         // 1 = resetn is synchronized before consumption. The consumption itself is either asynchronous or synchronous, as specified by ASYNC_RESET.
)
(
    input  wire     clock,
    input  wire     resetn,

    /*  
      Stall-valid interface to upstream. 
      Note: this module does not generate o_valid by passing the valid from upstream through. Instead it generates o_valid, synchronized
      to the arrival of data to downstream by looking ahead to when that data will arrive. This is so o_valid can be registered when LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP > 0.
      This module uses the following to determine when data will arrive downstream:
      LATENCY_UPSTREAM_EMPTY specifies when i_empty will be updated and is safe to consume, i_empty indicates if upstream has data, and LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP specifies when
      valid data will arrive at the downstream node.
    */
    output  logic   o_stall,
    input   wire    i_empty,

    // Stall-valid interface to downstream
    output  logic   o_valid,
    input   wire    i_stall,

    // Loop-specific interface signals with downstream
    output  logic   o_forked,
    input   wire    i_exit_valid, // Validates i_exit
    input   wire    i_exit
);

  /* Latency from i_stall to o_valid. This latency can't be set here, rather, this localparam must report what the latency is and must be kept up to date.
    This localparam is read by the testbench.
  */
  localparam LATENCY_INTERNAL_STALL_TO_VALID = (LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP==0)? 0 : 1;

  // Calculate the widths of the down counters. Force the minimum width to be 1.
  localparam EMPTY_COUNTER_WIDTH  = ($clog2(LATENCY_UPSTREAM_EMPTY) == 0)? 1 : $clog2(LATENCY_UPSTREAM_EMPTY);
  localparam SV_COUNTER_WIDTH     = ($clog2(LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP) == 0)? 1 : $clog2(LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP);
  localparam II_COUNTER_WIDTH     = $clog2(II); // II must be > 0.
  localparam FORKED_COUNTER_WIDTH = ($clog2(LATENCY_FORKED_TO_EXIT) == 0)? 1 : $clog2(LATENCY_FORKED_TO_EXIT);

  enum logic [1:0] {
    STATE_WAIT_FOR_THREAD = 2'b00, // Wait for upstream to have a new thread available so we can invoke a new loop.
    STATE_WAIT_FOR_DATA   = 2'b01, // Once we've issued the read to upstream, wait for the data to arrive downstream
    STATE_LOOP            = 2'b10  // Generate iterations of the current loop
  } state;

  /* 
    Declare down counters. These count from (threshold-2) down to -1.
    Add an extra bit on the MSB to detect when the counter rolls over to a value of -1.
  */
  logic [EMPTY_COUNTER_WIDTH:0] upstream_empty_latency_counter; // Counts latency from o_stall to i_empty being updated
  logic upstream_empty_latency_elapsed;
  logic [SV_COUNTER_WIDTH:0] upstream_sv_latency_counter; // Counts latency from o_stall to valid data arriving at downstream node.
  logic [II_COUNTER_WIDTH:0] ii_counter;
  logic [FORKED_COUNTER_WIDTH:0] forked_counter;
  logic forked_latency_elapsed;
  logic ii_elapsed;

  logic o_valid_reg, o_forked_reg;
  logic o_valid_comb, o_forked_comb;

  localparam                    NUM_RESET_COPIES = 1;
  localparam                    RESET_PIPE_DEPTH = 3;
  logic                         aclrn;
  logic [NUM_RESET_COPIES-1:0]  sclrn;
  logic                         resetn_synchronized;

  /*
    If SYNCHRONIZE_RESET==1, the synchronized version of resetn is distributed down the hierarchy to submodules, and submodules will not synchronize again.
    Currently resetn_synchronized is not consumed (there are no submodules) but leaving it here as a reminder that it should be used in the future if submodules are added.
  */
  acl_reset_handler
  #(
      .ASYNC_RESET            (ASYNC_RESET),
      .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
      .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
      .PIPE_DEPTH             (RESET_PIPE_DEPTH),
      .NUM_COPIES             (NUM_RESET_COPIES) 
  )
  acl_reset_handler_inst
  (
      .clk                    (clock),
      .i_resetn               (resetn),
      .o_aclrn                (aclrn),
      .o_resetn_synchronized  (resetn_synchronized),  
      .o_sclrn                (sclrn)
  );

  always @(posedge clock or negedge aclrn) begin
    if (!aclrn) begin
      state                           <= STATE_WAIT_FOR_THREAD;
      upstream_empty_latency_counter  <= LATENCY_UPSTREAM_EMPTY - 2;
      o_stall                         <= 1'b1;
      o_forked_reg                    <= 1'b0;
      o_valid_reg                     <= 1'b0;    
      upstream_sv_latency_counter     <= 'x;
      ii_counter                      <= 'x;
      forked_counter                  <= 'x;
      forked_latency_elapsed          <= 1'bx;
      ii_elapsed                      <= 1'b1;
      upstream_empty_latency_elapsed  <= 1'b0;
    end else begin
      case (state)
        STATE_WAIT_FOR_THREAD: begin
          /*
            Issue reads to upstream when it has data, but we must allow at least LATENCY_UPSTREAM_EMPTY cycles for i_empty
            to update and ii must be respected. And do not read if being stalled from downsteram.
          */
          if (!i_empty && upstream_empty_latency_elapsed && ii_elapsed && !i_stall) begin
            o_stall <= 1'b0;
            state   <= (LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP == 0)? STATE_LOOP : STATE_WAIT_FOR_DATA;
          end else begin
            o_stall <= 1'b1;
          end

          /* 
              When we enter this state, either after reset or from STATE_LOOP, it is ensured that we always wait
              for the empty latency to elapse before attempting to read from upstream. Here's an example of why this is important.
              Say LATENCY_UPSTREAM_EMPTY is large, and i_empty==0 but upstream has exactly 1 piece of data. If we do one read, enter STATE_LOOP but exit
              very quickly, we will re-enter STATE_WAIT_FOR_THREAD and i_empty would not have had time to update, so we'll be fooled into thinking upstream has more data.
          */
          // Keep decrementing until the counter reaches -1. If LATENCY_UPSTREAM_EMPTY==0, upstream_empty_latency_counter will have a start value of -2, whose MSB is 1, 
          // so we will read from upstream after 1 cycle, which is fine. LATENCY_UPSTREAM_EMPTY==0 behaves the same as LATENCY_UPSTREAM_EMPTY==1.
          if (upstream_empty_latency_counter[EMPTY_COUNTER_WIDTH]) begin 
            upstream_empty_latency_counter  <= LATENCY_UPSTREAM_EMPTY - 2;
          end else begin
            upstream_empty_latency_counter  <= upstream_empty_latency_counter - 1;
          end
          upstream_empty_latency_elapsed <= upstream_empty_latency_elapsed || upstream_empty_latency_counter[EMPTY_COUNTER_WIDTH];


          /* Set ii_counter=-1 when we jump directly to STATE_LOOP, which is when LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP == 0. 
             In this scenario, o_valid is generated combinationally when ii_counter rolls over.
             When we enter STATE_LOOP, o_valid needs to be asserted, so set ii_counter to its roll over value of -1.

             When we enter *this* state from STATE_LOOP, the ii_counter will continue counting.
             When we enter this state after reset, ii_counter powers up to an unknown value since it's not reset, but it doesn't matter because 
             ii_elapsed is reset to 1'b1 since we don't need to wait ii cycles before generating the first iteration.
          */ 
          if (ii_counter[II_COUNTER_WIDTH] || ii_elapsed) begin
            ii_counter  <= -1;  // Counter will get stuck at a value of -1, as intended, either when it reaches the rollover value or after reset (ii_elapsed resets to 1'b1).
          end else begin
            ii_counter  <= ii_counter - 1;
          end
          ii_elapsed <= ii_elapsed || ii_counter[II_COUNTER_WIDTH];

          upstream_sv_latency_counter <= LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP - 2;
 
          forked_counter          <= LATENCY_FORKED_TO_EXIT - 2;
          forked_latency_elapsed  <= 1'b0;
          o_valid_reg             <= 1'b0;
          o_forked_reg            <= 1'b0;

        end
        STATE_WAIT_FOR_DATA: begin
          if (upstream_sv_latency_counter[SV_COUNTER_WIDTH]) begin // Data will arrive downstream on the next cycle
            state                       <= STATE_LOOP;
            o_valid_reg                 <= 1'b1;
            o_forked_reg                <= 1'b1;
          end else begin
            upstream_sv_latency_counter <= upstream_sv_latency_counter - 1;
            o_valid_reg                 <= 1'b0;
            o_forked_reg                <= 1'b0;          
          end
          o_stall                 <= 1'b1;
          ii_counter              <= II-2;
          forked_counter          <= LATENCY_FORKED_TO_EXIT - 2;
          forked_latency_elapsed  <= 1'b0;
        end
        STATE_LOOP: begin // Generate loop iterations until the loop exits
          if (ii_counter[II_COUNTER_WIDTH]) begin
            ii_counter  <= II-2;
          end else begin
            ii_counter  <= ii_counter - 1;
          end

          // Output a valid each time the ii_counter rolls over, but not when stalled.
          o_valid_reg                   <= ii_counter[II_COUNTER_WIDTH] & !i_stall; // If latency from i_stall to o_valid ever changes, be sure to update LATENCY_INTERNAL_STALL_TO_VALID
          forked_counter                <= forked_counter - 1;
          /* 
            Assert flag when forked_counter rolls over. The forked_counter is used to ensure that we wait LATENCY_FORKED_TO_EXIT cycles before sampling i_exit.
            There may still be garbage in the loop from a previous invocation that causes i_exit to spuriously assert so we need to ignore all activity on i_exit until its behaviour is 
            gauranteed to be reflective of the current loop invocation. This amount of waiting time is LATENCY_FORKED_TO_EXIT.
          */
          forked_latency_elapsed        <= forked_latency_elapsed || (!forked_latency_elapsed && forked_counter[FORKED_COUNTER_WIDTH]); 

          // Watch for the exit condition
          if ((forked_latency_elapsed || LATENCY_FORKED_TO_EXIT == 0) && i_exit_valid && i_exit) begin
            state                           <= STATE_WAIT_FOR_THREAD;
            upstream_empty_latency_counter  <= LATENCY_UPSTREAM_EMPTY - 2;  
            ii_elapsed                      <= 1'b0;
            upstream_empty_latency_elapsed  <= 1'b0;
          end

          o_stall       <= 1'b1;
          o_forked_reg  <= 1'b0;
        end
        default: begin
          state                         <= STATE_WAIT_FOR_THREAD;  
        end
      endcase
      if (!sclrn[0]) begin 
        state                           <= STATE_WAIT_FOR_THREAD;
        upstream_empty_latency_counter  <= LATENCY_UPSTREAM_EMPTY - 2;
        o_stall                         <= 1'b1;
        o_forked_reg                    <= 1'b0;
        o_valid_reg                     <= 1'b0;
        ii_elapsed                      <= 1'b1;  // After reset, we don't need to wait for ii cycles before starting the first iteration of the first loop.
        upstream_empty_latency_elapsed  <= 1'b0;
      end
    end
  end

  assign o_valid_comb = (state == STATE_LOOP) && (!o_stall || (ii_counter[II_COUNTER_WIDTH] && !i_stall));
  assign o_forked_comb = (state == STATE_LOOP) && !o_stall;

  assign o_valid = (LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP == 0)? o_valid_comb : o_valid_reg;
  assign o_forked = (LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP == 0)? o_forked_comb : o_forked_reg;

endmodule
`default_nettype wire
