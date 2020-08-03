// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #277)
// 
// Legal Notice: Copyright 2019 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from cnn_i_llvm_fpga_ffwd_source_i1_unnamed_80_cnn377
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_llvm_fpga_ffwd_source_i1_unnamed_80_cnn377 (
    output wire [0:0] out_intel_reserved_ffwd_70_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_enable_in,
    input wire [0:0] in_src_data_in_70_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [6:0] c_i7_0gr_q;
    wire [7:0] element_extension_q;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_enable_in;
    wire i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_enable_in_bitsignaltemp;
    wire [7:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_source_in;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_valid_in;
    wire i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_valid_in_bitsignaltemp;
    wire [7:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_source_out;
    wire [0:0] adapt_scalar_trunc_sel_x_b;


    // c_i7_0gr(CONSTANT,3)
    assign c_i7_0gr_q = 7'b0000000;

    // element_extension(BITJOIN,4)@9
    assign element_extension_q = {c_i7_0gr_q, in_src_data_in_70_0};

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378(EXTIFACE,5)@9
    assign i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_enable_in = in_enable_in;
    assign i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_source_in = element_extension_q;
    assign i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_enable_in_bitsignaltemp = i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_enable_in[0];
    assign i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_valid_in[0];
    acl_ffwdsrc #(
        .WIDTH(8)
    ) thei_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378 (
        .enable_in(i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_enable_in_bitsignaltemp),
        .source_in(element_extension_q),
        .valid_in(i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_valid_in_bitsignaltemp),
        .source_out(i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_source_out),
        .clock(clock),
        .resetn(resetn)
    );

    // adapt_scalar_trunc_sel_x(BITSELECT,9)@20000000
    assign adapt_scalar_trunc_sel_x_b = i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn378_source_out[0:0];

    // regfree_osync(GPOUT,6)
    assign out_intel_reserved_ffwd_70_0 = adapt_scalar_trunc_sel_x_b;

    // sync_out(GPOUT,8)@9
    assign out_stall_out = in_stall_in;

    // dupName_0_sync_out_x(GPOUT,11)@9
    assign out_valid_out = in_valid_in;

endmodule
