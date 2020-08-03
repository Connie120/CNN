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

// SystemVerilog created from cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_coA000000Z06_cnn2681_data_fifo
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_coA000000Z06_cnn2681_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0,
    input wire [63:0] in_i_data_1,
    input wire [63:0] in_i_data_2,
    input wire [0:0] in_i_data_3,
    input wire [0:0] in_i_data_4,
    input wire [63:0] in_i_data_5,
    input wire [63:0] in_i_data_6,
    input wire [63:0] in_i_data_7,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0,
    output wire [63:0] out_o_data_1,
    output wire [63:0] out_o_data_2,
    output wire [0:0] out_o_data_3,
    output wire [0:0] out_o_data_4,
    output wire [63:0] out_o_data_5,
    output wire [63:0] out_o_data_6,
    output wire [63:0] out_o_data_7,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc_in;
    wire [0:0] adapt_scalar_trunc_q;
    wire [47:0] c_i48_0gr_q;
    wire [55:0] c_i56_0gr_q;
    wire [6:0] c_i7_0gr_q;
    wire [447:0] dsdk_ip_adapt_bitjoin_q;
    wire [7:0] element_extension_q;
    wire [447:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_almost_full_bitsignaltemp;
    wire [447:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect_b;
    wire [63:0] ip_dsdk_adapt_cast_b;
    wire [0:0] dupName_0_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_0_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_0_element_extension_x_q;
    wire [63:0] dupName_0_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_0_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_1_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_1_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_1_element_extension_x_q;
    wire [63:0] dupName_1_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_1_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_2_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_2_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_3_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_3_ip_dsdk_adapt_cast_x_b;
    wire [63:0] dupName_4_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_5_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_6_ip_dsdk_adapt_bitselect_x_b;


    // c_i48_0gr(CONSTANT,3)
    assign c_i48_0gr_q = 48'b000000000000000000000000000000000000000000000000;

    // c_i7_0gr(CONSTANT,5)
    assign c_i7_0gr_q = 7'b0000000;

    // dupName_1_element_extension_x(BITJOIN,20)
    assign dupName_1_element_extension_x_q = {c_i7_0gr_q, in_i_data_4};

    // dupName_0_element_extension_x(BITJOIN,15)
    assign dupName_0_element_extension_x_q = {c_i7_0gr_q, in_i_data_3};

    // c_i56_0gr(CONSTANT,4)
    assign c_i56_0gr_q = 56'b00000000000000000000000000000000000000000000000000000000;

    // element_extension(BITJOIN,7)
    assign element_extension_q = {c_i7_0gr_q, in_i_data_0};

    // dsdk_ip_adapt_bitjoin(BITJOIN,6)
    assign dsdk_ip_adapt_bitjoin_q = {in_i_data_7, in_i_data_6, in_i_data_5, c_i48_0gr_q, dupName_1_element_extension_x_q, dupName_0_element_extension_x_q, in_i_data_2, in_i_data_1, c_i56_0gr_q, element_extension_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682(EXTIFACE,8)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_data = dsdk_ip_adapt_bitjoin_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(16),
        .ASYNC_RESET(0),
        .RESET_EXTERNALLY_HELD(0),
        .STYLE("hs"),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(448)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682 (
        .i_data(dsdk_ip_adapt_bitjoin_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,12)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_stall;

    // dupName_6_ip_dsdk_adapt_bitselect_x(BITSELECT,29)
    assign dupName_6_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_data[447:384];

    // dupName_3_ip_dsdk_adapt_cast_x(BITSELECT,26)
    assign dupName_3_ip_dsdk_adapt_cast_x_b = dupName_6_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_5_ip_dsdk_adapt_bitselect_x(BITSELECT,28)
    assign dupName_5_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_data[383:320];

    // dupName_2_ip_dsdk_adapt_cast_x(BITSELECT,24)
    assign dupName_2_ip_dsdk_adapt_cast_x_b = dupName_5_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_4_ip_dsdk_adapt_bitselect_x(BITSELECT,27)
    assign dupName_4_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_data[319:256];

    // dupName_1_ip_dsdk_adapt_cast_x(BITSELECT,22)
    assign dupName_1_ip_dsdk_adapt_cast_x_b = dupName_4_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_3_ip_dsdk_adapt_bitselect_x(BITSELECT,25)
    assign dupName_3_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_data[200:200];

    // dupName_1_adapt_scalar_trunc_x(ROUND,18)
    assign dupName_1_adapt_scalar_trunc_x_in = dupName_3_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_1_adapt_scalar_trunc_x_q = dupName_1_adapt_scalar_trunc_x_in[0:0];

    // dupName_2_ip_dsdk_adapt_bitselect_x(BITSELECT,23)
    assign dupName_2_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_data[192:192];

    // dupName_0_adapt_scalar_trunc_x(ROUND,13)
    assign dupName_0_adapt_scalar_trunc_x_in = dupName_2_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_0_adapt_scalar_trunc_x_q = dupName_0_adapt_scalar_trunc_x_in[0:0];

    // dupName_1_ip_dsdk_adapt_bitselect_x(BITSELECT,21)
    assign dupName_1_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_data[191:128];

    // dupName_0_ip_dsdk_adapt_cast_x(BITSELECT,17)
    assign dupName_0_ip_dsdk_adapt_cast_x_b = dupName_1_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_0_ip_dsdk_adapt_bitselect_x(BITSELECT,16)
    assign dupName_0_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_data[127:64];

    // ip_dsdk_adapt_cast(BITSELECT,10)
    assign ip_dsdk_adapt_cast_b = dupName_0_ip_dsdk_adapt_bitselect_x_b[63:0];

    // ip_dsdk_adapt_bitselect(BITSELECT,9)
    assign ip_dsdk_adapt_bitselect_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_data[0:0];

    // adapt_scalar_trunc(ROUND,2)
    assign adapt_scalar_trunc_in = ip_dsdk_adapt_bitselect_b;
    assign adapt_scalar_trunc_q = adapt_scalar_trunc_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,31)@20000005
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_almost_full;
    assign out_o_data_0 = adapt_scalar_trunc_q;
    assign out_o_data_1 = ip_dsdk_adapt_cast_b;
    assign out_o_data_2 = dupName_0_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_3 = dupName_0_adapt_scalar_trunc_x_q;
    assign out_o_data_4 = dupName_1_adapt_scalar_trunc_x_q;
    assign out_o_data_5 = dupName_1_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_6 = dupName_2_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_7 = dupName_3_ip_dsdk_adapt_cast_x_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2682_o_valid;

endmodule
