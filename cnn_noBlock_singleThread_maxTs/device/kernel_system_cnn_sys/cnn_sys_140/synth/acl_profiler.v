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
// This module records profiling information. It is connected to the desired
// pipeline ports that are needed to be profiled. 
// cntl_in signal determines when a profiling register is updated.
// incr_in signal determines the increment value for each counter.
// NUM_COUNTERS of profiling registers are instantiated. When the profile_shift
// signal is high, profiling registers are shifted out DAISY_WIDTH bits (64-bits) at a time.
//
// TEST_MODE causes the counters to scan out fixed IDs corresponding to their location in the
// scan chain.  Used to test profile data readback through the CRA.
//
`default_nettype none
module acl_profiler
(
  clock,
  resetn,
  enable,

  profile_shift, 
  incr_cntl,
  incr_val,
  daisy_out,
  daisy_in
);

parameter COUNTER_WIDTH=64;
parameter INCREMENT_WIDTH=32;
parameter NUM_COUNTERS=4;
parameter TOTAL_INCREMENT_WIDTH=INCREMENT_WIDTH * NUM_COUNTERS;
parameter DAISY_WIDTH=64;
parameter TEST_MODE=0;
parameter ENABLE_TESSELLATION=0;
parameter TESSELLATION_SECTION_SIZE=16; // Must be <= INCREMENT_WIDTH
parameter ASYNC_RESET=1;        // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
parameter SYNCHRONIZE_RESET=0;  // set to '1' to pass the incoming reset signal through a synchronizer before use
// Note that this level of hierarchy does NOT include a reset handler, the input reset signal and parameters are simply passed through to sub-modules.
// The acl_profile_counter modules are likely to be widely distributed throughout the chip, so this is a case where hierarchy is NOT a good proxy for locality and we are better
// off using the global reset signal to distribute reset to each counter, and synchronize locally.

input wire clock;
input wire resetn;
input wire enable;

input wire profile_shift;
input wire [NUM_COUNTERS-1:0] incr_cntl;
input wire [TOTAL_INCREMENT_WIDTH-1:0] incr_val;
output logic [DAISY_WIDTH-1:0] daisy_out;
input wire [DAISY_WIDTH-1:0] daisy_in;

// if there are NUM_COUNTER counters, there are NUM_COUNTER-1 connections between them
wire [NUM_COUNTERS-2:0][DAISY_WIDTH-1:0] shift_wire;
wire [31:0] data_out [0:NUM_COUNTERS-1];// for debugging, always 32-bit for ease of modelsim

genvar n;
generate
   for(n=0; n<NUM_COUNTERS; n++)
   begin : counter_n
   if(NUM_COUNTERS == 1)
      acl_profile_counter #(
         .COUNTER_WIDTH( COUNTER_WIDTH ),
         .INCREMENT_WIDTH( INCREMENT_WIDTH ),
         .DAISY_WIDTH( DAISY_WIDTH ),
         .TEST_MODE( TEST_MODE ),
         .TEST_VALUE( n+1 ),
         .ENABLE_TESSELLATION(ENABLE_TESSELLATION),
         .TESSELLATION_SECTION_SIZE(TESSELLATION_SECTION_SIZE),
         .ASYNC_RESET(ASYNC_RESET),
         .SYNCHRONIZE_RESET(SYNCHRONIZE_RESET)
      ) counter (
         .clock( clock ),
         .resetn( resetn ),
         .enable( enable ),
         .shift( profile_shift ),
         .incr_cntl( incr_cntl[n] ),
         .shift_in( daisy_in ),
         .incr_val( incr_val[ ((n+1)*INCREMENT_WIDTH-1) : (n*INCREMENT_WIDTH) ] ),
         .data_out( data_out[ n ] ),
         .shift_out( daisy_out )
      );
   else if(n == 0)
      acl_profile_counter #(
         .COUNTER_WIDTH( COUNTER_WIDTH ),
         .INCREMENT_WIDTH( INCREMENT_WIDTH ),
         .DAISY_WIDTH( DAISY_WIDTH ),
         .TEST_MODE( TEST_MODE ),
         .TEST_VALUE( n+1 ),
         .ENABLE_TESSELLATION(ENABLE_TESSELLATION),
         .TESSELLATION_SECTION_SIZE(TESSELLATION_SECTION_SIZE),
         .ASYNC_RESET(ASYNC_RESET),
         .SYNCHRONIZE_RESET(SYNCHRONIZE_RESET)
      ) counter (
         .clock( clock ),
         .resetn( resetn ),
         .enable( enable ),
         .shift( profile_shift ),
         .incr_cntl( incr_cntl[n] ),
         .shift_in( shift_wire[n] ),
         .incr_val( incr_val[ ((n+1)*INCREMENT_WIDTH-1) : (n*INCREMENT_WIDTH) ] ),
         .data_out( data_out[ n ] ),
         .shift_out( daisy_out )
      );
   else if(n == NUM_COUNTERS-1)
      acl_profile_counter #(
         .COUNTER_WIDTH( COUNTER_WIDTH ),
         .INCREMENT_WIDTH( INCREMENT_WIDTH ),
         .DAISY_WIDTH( DAISY_WIDTH ),
         .TEST_MODE( TEST_MODE ),
         .TEST_VALUE( n+1 ),
         .ENABLE_TESSELLATION(ENABLE_TESSELLATION),
         .TESSELLATION_SECTION_SIZE(TESSELLATION_SECTION_SIZE),
         .ASYNC_RESET(ASYNC_RESET),
         .SYNCHRONIZE_RESET(SYNCHRONIZE_RESET)
      ) counter (
         .clock( clock ),
         .resetn( resetn ),
         .enable( enable ),
         .shift( profile_shift ),
         .incr_cntl( incr_cntl[n] ),
         .shift_in( daisy_in ),
         .incr_val( incr_val[ ((n+1)*INCREMENT_WIDTH-1) : (n*INCREMENT_WIDTH) ] ),
         .data_out( data_out[ n ] ),
         .shift_out( shift_wire[n-1] )
      );
   else
      acl_profile_counter #(
         .COUNTER_WIDTH( COUNTER_WIDTH ),
         .INCREMENT_WIDTH( INCREMENT_WIDTH ),
         .DAISY_WIDTH( DAISY_WIDTH ),
         .TEST_MODE( TEST_MODE ),
         .TEST_VALUE( n+1 ),
         .ENABLE_TESSELLATION(ENABLE_TESSELLATION),
         .TESSELLATION_SECTION_SIZE(TESSELLATION_SECTION_SIZE),
         .ASYNC_RESET(ASYNC_RESET),
         .SYNCHRONIZE_RESET(SYNCHRONIZE_RESET)
      ) counter (
         .clock( clock ),
         .resetn( resetn ),
         .enable( enable ),
         .shift( profile_shift ),
         .incr_cntl( incr_cntl[n] ),
         .shift_in( shift_wire[n] ),
         .incr_val( incr_val[ ((n+1)*INCREMENT_WIDTH-1) : (n*INCREMENT_WIDTH) ] ),
         .data_out( data_out[ n ] ),
         .shift_out( shift_wire[n-1] )
      );
   end
endgenerate

endmodule

module acl_profile_counter
(
  clock,
  resetn,
  enable,

  shift,
  incr_cntl,
  shift_in,
  incr_val,
  data_out,
  shift_out
);

parameter COUNTER_WIDTH=64;
parameter INCREMENT_WIDTH=32;
parameter DAISY_WIDTH=64;
parameter TEST_MODE=0;
parameter TEST_VALUE=0;
parameter ASYNC_RESET=1;        // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
parameter SYNCHRONIZE_RESET=0;  // set to '1' to pass the incoming reset signal through a synchronizer before use
parameter ENABLE_TESSELLATION=0;
parameter TESSELLATION_SECTION_SIZE=8; // Must be <= INCREMENT_WIDTH

input wire clock;
input wire resetn;
input wire enable;

input wire shift;
input wire incr_cntl;
input wire [DAISY_WIDTH-1:0] shift_in;
input wire [INCREMENT_WIDTH-1:0] incr_val;

output logic [31:0] data_out;// for debugging, always 32-bit for ease of modelsim
output logic [DAISY_WIDTH-1:0] shift_out;

logic tess_clear;
reg [COUNTER_WIDTH-1:0] counter, tess_counter;

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

always@(posedge clock)
begin
  if (ENABLE_TESSELLATION) begin
    if (shift | !resetn_synchronized) begin
      tess_clear <= '1;
    end else begin
      tess_clear <= '0;
    end
  end
end

generate
  if (ENABLE_TESSELLATION) begin
    /*
      This is a pipelined (AKA tessellated) accumulator so it has latency > 1, meaning the result is not ready immediately. But it can be incremented on every cycle.
      The latency is (ACCUMULATOR_WIDTH/SECTION_SIZE)+1 cycles.
    */
    acl_multistage_accumulator #(
      .ACCUMULATOR_WIDTH (COUNTER_WIDTH),
      .INCREMENT_WIDTH (INCREMENT_WIDTH),
      .SECTION_SIZE (TESSELLATION_SECTION_SIZE),
      .ASYNC_RESET (ASYNC_RESET),
      .SYNCHRONIZE_RESET (0)  // If reset signal should be synchronized it will happen in acl_profile_counter's reset handler (this module)
    )
    tessellated_counter
    (
      .clock        (clock),
      .resetn       (!tess_clear),            // This resets everything but the counter
      .clear        (tess_clear),             // This resets the counter itself
      .increment    (incr_val),               // Increment value
      .go           (enable && incr_cntl),    // Trigger an increment
      .result       (tess_counter)            // Output
    );
  end else begin
    assign tess_counter = '0;
  end
endgenerate

always@(posedge clock or negedge aclrn)
begin
  if( ~aclrn )
  begin
    if(TEST_MODE==0)
      counter <= { COUNTER_WIDTH{1'b0} };
    else
      counter <= TEST_VALUE;
  end else begin
    if (shift) begin// shift by DAISY_WIDTH bits
      counter <= {counter, shift_in};
    end else if (TEST_MODE == 0) begin // If TEST_MODE == 1, counter is assigned TEST_VALUE on reset and never changes.
      if (ENABLE_TESSELLATION && enable) begin
        counter <= tess_counter;
      end else if(enable && incr_cntl) begin // Use a normal, non-tessellated counter
        counter <= counter + incr_val;
      end
    end

    if (~sclrn[0]) begin
      if(TEST_MODE==0)
        counter <= { COUNTER_WIDTH{1'b0} };
      else
        counter <= TEST_VALUE;
    end

  end
end

assign data_out = counter;
assign shift_out = {counter, shift_in} >> COUNTER_WIDTH;

endmodule
`default_nettype wire
