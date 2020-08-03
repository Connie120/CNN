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

module acl_multistage_adder(clock, resetn, clear, enable, result, dataa, datab, add_sub);
  // This module tessellates the accumulator into SECTION_SIZE-bit chunks.
  parameter WIDTH = 32;
  parameter SECTION_SIZE = 19;
  parameter ASYNC_RESET=1;                   // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
  parameter SYNCHRONIZE_RESET=0;             // set to '1' to pass the incoming reset signal through a synchronizer before use
  input wire clock, resetn, clear, add_sub, enable;
  input wire [WIDTH-1:0] dataa;
  input wire [WIDTH-1:0] datab;
  output wire [WIDTH-1:0] result;
  
  wire [WIDTH-1:0] dataa_inter;
  wire [WIDTH-1:0] datab_inter;
  function integer stage_count;
    input integer width;
    input integer size;
    integer temp,i;
    begin
      temp = width/size;
      if ((width % size) > 0) temp = temp+1;
      stage_count = temp;
    end
  endfunction
  
  function integer mymax;
    input integer a;
    input integer b;
    integer temp;
    begin
      if (a > b) temp = a; else temp = b;
      mymax = temp;
    end
  endfunction 

  function integer mymin;
    input integer a;
    input integer b;
    integer temp;
    begin
      if (a < b) temp = a; else temp = b;
      mymin = temp;
    end
  endfunction   

  localparam TOTAL_STAGES = stage_count(WIDTH, SECTION_SIZE);

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
  
  assign dataa_inter = dataa;
  assign datab_inter = datab;
  
  // This little trick is for modelsim to resolve its handling of generate statements.
  // It prevents modelsim from thinking there is an out-of-bound access.
  // This also simplifies one of the if statements below.
  reg [TOTAL_STAGES-1 : -1] pipelined_add_sub;  
  reg [TOTAL_STAGES-1 : -1] pipelined_carry;  
  reg [WIDTH-1 : 0] pipelined_datab [TOTAL_STAGES-1 : -1];
  reg [WIDTH-1 : 0] pipelined_result [TOTAL_STAGES-1 : -1];
  
  genvar i;
  generate
    for (i = 0; i < TOTAL_STAGES; i = i + 1)
    begin: add_sub_stage
      always@(posedge clock or negedge aclrn)
      begin
        if( ~aclrn )
        begin
          pipelined_add_sub[i] <= 1'b0;
          pipelined_datab[i] <= {{WIDTH}{1'b0}};
        end else begin
          if (enable)
          begin
            if( clear )  
            begin
              pipelined_add_sub[i] <= 1'b0;
              pipelined_datab[i] <= {{WIDTH}{1'b0}};
            end
            else
            begin
              if ( i == 0) begin
              pipelined_add_sub[i] <= add_sub;
              pipelined_datab[i] <= datab_inter;
              end
              else begin
              pipelined_add_sub[i] <= pipelined_add_sub[i-1];
              pipelined_datab[i] <= pipelined_datab[i-1];       
              end
            end
          end
          if (~sclrn[0]) begin
            pipelined_add_sub[i] <= 1'b0;
            pipelined_datab[i] <= {{WIDTH}{1'b0}};
          end
        end
      end
      
      always@(posedge clock or negedge aclrn)
      begin
        if( ~aclrn )
        begin
          pipelined_result[i] <= {{WIDTH}{1'b0}};
          pipelined_carry[i] <= 1'b0;
        end else begin
          if (enable)
          begin
            if( clear )  
            begin
              pipelined_result[i] <= {{WIDTH}{1'b0}};
              pipelined_carry[i] <= 1'b0;
            end
            else
            begin
              if (i > 0)
              begin
                pipelined_result[i][mymax(SECTION_SIZE*i - 1,0):0] <= pipelined_result[i-1][mymax(SECTION_SIZE*i - 1,0):0];
              end
          
              if ( i == 0 ) begin
                {pipelined_carry[i], pipelined_result[i][mymin(SECTION_SIZE*(i+1), WIDTH) - 1 : SECTION_SIZE*i]} <=
                 dataa_inter[mymin(SECTION_SIZE*(i+1), WIDTH) - 1 : SECTION_SIZE*i] + 
                 (datab_inter[mymin(SECTION_SIZE*(i+1), WIDTH) - 1 : SECTION_SIZE*i] ^ {{SECTION_SIZE}{add_sub}})
                 + add_sub;
                if (SECTION_SIZE*(i+1) < WIDTH)
                begin
                  pipelined_result[i][WIDTH-1: mymin(SECTION_SIZE*(i+1), WIDTH-1)] <= dataa_inter[WIDTH-1: mymin(SECTION_SIZE*(i+1), WIDTH-1)];
                end
              end else begin
                {pipelined_carry[i], pipelined_result[i][mymin(SECTION_SIZE*(i+1), WIDTH) - 1 : SECTION_SIZE*i]} <=
                 pipelined_result[i-1][mymin(SECTION_SIZE*(i+1), WIDTH) - 1 : SECTION_SIZE*i] + 
                 (pipelined_datab[i-1][mymin(SECTION_SIZE*(i+1), WIDTH) - 1 : SECTION_SIZE*i] ^ {{SECTION_SIZE}{pipelined_add_sub[i-1]}})
                 + pipelined_carry[i-1];
                if (SECTION_SIZE*(i+1) < WIDTH)
                begin
                  pipelined_result[i][WIDTH-1: mymin(SECTION_SIZE*(i+1), WIDTH-1)] <= pipelined_result[i-1][WIDTH-1: mymin(SECTION_SIZE*(i+1), WIDTH-1)];
                end
              end
            end
          end
          if (~sclrn[0]) begin
            pipelined_result[i] <= {{WIDTH}{1'b0}};
            pipelined_carry[i] <= 1'b0;
          end
        end
      end
    end
  endgenerate  
  
  assign result = pipelined_result[TOTAL_STAGES-1];

endmodule


`default_nettype wire
