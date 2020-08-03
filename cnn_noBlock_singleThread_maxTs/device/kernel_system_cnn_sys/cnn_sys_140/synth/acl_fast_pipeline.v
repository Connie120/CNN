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


// This is a dummy IP required to preserve compatibility with the old pipelining
// scheme - it simply wires up some inputs to some outputs

`default_nettype none

module acl_fast_pipeline (
	clock,
	resetn,
	data_in,
    valid_out,
    stall_in,
    stall_out,
    valid_in,
    data_out,
    not_exitcond_in,
    not_exitcond_stall_out,
    not_exitcond_valid_in,
    pipeline_valid_out,
    pipeline_stall_in,
    exiting_valid_out
);

    parameter FIFO_DEPTH = 1;
    parameter string STYLE = "SPECULATIVE";  
    parameter ENABLED = 0;
    parameter ASYNC_RESET = 1;
    parameter SYNCHRONIZE_RESET = 0;

input wire clock, resetn, stall_in, valid_in, not_exitcond_valid_in, pipeline_stall_in;
output logic stall_out, valid_out, not_exitcond_stall_out, pipeline_valid_out;
input wire data_in, not_exitcond_in;
output logic data_out;
output logic exiting_valid_out;

// Pass through the following signals:
//    - Exit condition - will be tapped by the admit IP
//    - Pipelined valid - to provide a valid signal to the admit IP
//    - Data out - to provide the exit condition to other consumers through the datapath
assign exiting_valid_out = not_exitcond_in;
assign pipeline_valid_out = valid_in;
assign data_out = not_exitcond_in;
assign not_exitcond_stall_out = 1'b0;

endmodule

`default_nettype wire
