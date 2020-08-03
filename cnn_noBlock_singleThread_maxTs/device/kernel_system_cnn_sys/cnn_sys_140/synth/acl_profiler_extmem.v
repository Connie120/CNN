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
// This module provides profiler support for the interface between a kernel
// system and the global memory interfaces provided by the board.  It instruments
// the Avalon-MM interface at the root of the interconnect to memory. Some signals
// are passed through from the Avalon interface to the profiler counters
// inside the kernel, such as readdatavalid.  Other signals are generated within
// this IP such as a signal asserted at the start of each burst request.
//
// A different instance of this IP is created for each kernel and each memory interface
// used by that kernel.  We only aggregate data when the enable signal is asserted.
// This allows the external memory stats to be correlated with the execution of specific kernels.

// Read bursts do not need to be tracked in detail - they are fire and forget with each read
// request starting a new burst.  Write bursts do need to be tracked in more detail.
// We need to find the start of each burst so that the burst size can be accumulated.
//

`default_nettype none

module acl_profiler_external_memory
#(
  parameter BURSTCOUNT_WIDTH=6,
  parameter ASYNC_RESET=1,                              // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
  parameter SYNCHRONIZE_RESET=0                         // set to '1' to pass the incoming reset signal through a synchronizer before use
)
(
  input wire clk,
  input wire resetn,

  // Input signals from boundary between the memory interconnect and memory interface
  input wire [BURSTCOUNT_WIDTH-1:0] burstcount_in,
  input wire readdatavalid_in,
  input wire write_in,
  input wire read_in,
  input wire waitrequest_in,

  // Outputs to profiling infrastructure:
  // First two signals are single bit increment enables
  output reg read_count_enable_out,
  output reg write_count_enable_out,
  // Other two signals cause accumulation of burstcount values, so each contain two signals:
  // 1. Single bit increment enable
  // 2. Multi-bit burst value to increment by
  output reg read_burst_count_enable_out,
  output reg [BURSTCOUNT_WIDTH-1:0] read_burst_count_value_out,
  output reg write_burst_count_enable_out,
  output reg [BURSTCOUNT_WIDTH-1:0] write_burst_count_value_out,

  // Replicate the the incement enables for the burst counter.  Simplifies implementation in system integrator.
  output reg read_burst_count_dup_enable_out,
  output reg write_burst_count_dup_enable_out
);

  logic new_read_request, new_write_request, new_request;
  logic write_burst_in_progress;
  logic [BURSTCOUNT_WIDTH-1:0] r_burst_counter;

  logic read_burst_count_en;
  logic write_burst_count_en;
  
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
      .clk                    (clk),
      .i_resetn               (resetn),
      .o_aclrn                (aclrn),
      .o_sclrn                (sclrn),
      .o_resetn_synchronized  (resetn_synchronized)
   );
  
  assign read_burst_count_enable_out = read_burst_count_en;
  assign read_burst_count_dup_enable_out = read_burst_count_en;
  assign write_burst_count_enable_out = write_burst_count_en;
  assign write_burst_count_dup_enable_out = write_burst_count_en;

  assign new_read_request = read_in && !waitrequest_in;
  assign new_write_request = write_in && !waitrequest_in && !write_burst_in_progress;
  assign new_request = new_read_request || new_write_request;

  assign write_burst_in_progress = (r_burst_counter > 1);

  always@(posedge clk or negedge aclrn)
  begin
    if (~aclrn)
      begin
        read_count_enable_out <= '0;
        write_count_enable_out <= '0;
        read_burst_count_en <= '0;
        write_burst_count_en <= '0;
        read_burst_count_value_out <= '0;
        write_burst_count_value_out <= '0;
      end
    else
      begin
        // "valid data on bus" signals to rd/wr word count signals in profile infrastructure
        read_count_enable_out <= readdatavalid_in;
        write_count_enable_out <= write_in && !waitrequest_in;

        // Burstcount accumulation signals to the profile infrastructure
        read_burst_count_en<= read_in && new_request;
        write_burst_count_en<= write_in && new_request;
        read_burst_count_value_out <= burstcount_in;
        write_burst_count_value_out <= burstcount_in;
        
        if (~sclrn[0]) begin
          read_count_enable_out <= '0;
          write_count_enable_out <= '0;
          read_burst_count_en <= '0;
          write_burst_count_en <= '0;
          read_burst_count_value_out <= '0;
          write_burst_count_value_out <= '0;
        end
      end
  end

  // Counter that tracks where we are in a write burst transfer.  Lets us
  // pick out burst boundaries.
  always@(posedge clk or negedge aclrn)
  begin
  if (~aclrn)
    begin
      r_burst_counter <= 1;
    end
  else
    begin
      if (new_write_request)
        begin
          r_burst_counter <= burstcount_in;
        end
      else
        begin
          if (write_in && !waitrequest_in)
            begin
              r_burst_counter <= r_burst_counter - 1;
            end
        end
      if (~sclrn[0]) r_burst_counter <= 1;
    end
  end

endmodule

`default_nettype wire
