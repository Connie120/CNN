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


`default_nettype none

module acl_shift_register(
clock, resetn, clear, enable, Q, D
);
parameter WIDTH=32;
parameter STAGES=1;
parameter ASYNC_RESET=1;        // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
parameter SYNCHRONIZE_RESET=0;  // set to '1' to pass the incoming reset signal through a synchronizer before use

input wire clock,resetn,clear,enable;
input wire [WIDTH-1:0] D;
output wire [WIDTH-1:0] Q;
reg [WIDTH-1:0] stages[STAGES-1:0];

generate

if (STAGES == 0) begin

assign Q = D;

end
else begin
genvar istage;

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

for (istage=0;istage<STAGES;istage=istage+1) begin : stages_loop

always@(posedge clock or negedge aclrn) begin
  if (~aclrn) begin
    stages[istage] <= {(WIDTH){1'b0}};
  end else begin
    if (clear) begin
      stages[istage] <= {(WIDTH){1'b0}};
    end
    else if (enable) begin
      if (istage == 0) begin
        stages[istage] <= D;
      end
      else begin
        stages[istage] <= stages[istage-1];
      end
    end
    if (~sclrn[0]) stages[istage] <= {(WIDTH){1'b0}};
  end
end

end

assign Q = stages[STAGES-1];
end

endgenerate

endmodule


`default_nettype wire
