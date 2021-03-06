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

// SystemVerilog created from cnn_bb_B2
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B2 (
    input wire [63:0] in_add84_0,
    input wire [63:0] in_add84_1,
    input wire [63:0] in_coo_067_0,
    input wire [63:0] in_coo_067_1,
    input wire [0:0] in_forked32_0,
    input wire [0:0] in_forked32_1,
    input wire [63:0] in_input,
    input wire [0:0] in_intel_reserved_ffwd_12_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_96_0,
    input wire [63:0] in_intel_reserved_ffwd_97_0,
    input wire [63:0] in_intel_reserved_ffwd_98_0,
    input wire [63:0] in_output,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [63:0] in_weights,
    output wire [63:0] out_add84,
    output wire [63:0] out_c0_exe1787,
    output wire [63:0] out_intel_reserved_ffwd_13_0,
    output wire [63:0] out_intel_reserved_ffwd_14_0,
    output wire [63:0] out_intel_reserved_ffwd_15_0,
    output wire [63:0] out_intel_reserved_ffwd_16_0,
    output wire [64:0] out_intel_reserved_ffwd_17_0,
    output wire [0:0] out_intel_reserved_ffwd_18_0,
    output wire [0:0] out_intel_reserved_ffwd_19_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_cnn_B2_stall_region_out_add84;
    wire [63:0] bb_cnn_B2_stall_region_out_c0_exe1787;
    wire [63:0] bb_cnn_B2_stall_region_out_intel_reserved_ffwd_13_0;
    wire [63:0] bb_cnn_B2_stall_region_out_intel_reserved_ffwd_14_0;
    wire [63:0] bb_cnn_B2_stall_region_out_intel_reserved_ffwd_15_0;
    wire [63:0] bb_cnn_B2_stall_region_out_intel_reserved_ffwd_16_0;
    wire [64:0] bb_cnn_B2_stall_region_out_intel_reserved_ffwd_17_0;
    wire [0:0] bb_cnn_B2_stall_region_out_intel_reserved_ffwd_18_0;
    wire [0:0] bb_cnn_B2_stall_region_out_intel_reserved_ffwd_19_0;
    wire [0:0] bb_cnn_B2_stall_region_out_stall_out;
    wire [0:0] bb_cnn_B2_stall_region_out_valid_out;
    wire [63:0] cnn_B2_branch_out_add84;
    wire [63:0] cnn_B2_branch_out_c0_exe1787;
    wire [0:0] cnn_B2_branch_out_stall_out;
    wire [0:0] cnn_B2_branch_out_valid_out_0;
    wire [63:0] cnn_B2_merge_out_add84;
    wire [63:0] cnn_B2_merge_out_coo_067;
    wire [0:0] cnn_B2_merge_out_forked32;
    wire [0:0] cnn_B2_merge_out_stall_out_0;
    wire [0:0] cnn_B2_merge_out_stall_out_1;
    wire [0:0] cnn_B2_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // cnn_B2_merge(BLACKBOX,4)
    cnn_B2_merge thecnn_B2_merge (
        .in_add84_0(in_add84_0),
        .in_add84_1(in_add84_1),
        .in_coo_067_0(in_coo_067_0),
        .in_coo_067_1(in_coo_067_1),
        .in_forked32_0(in_forked32_0),
        .in_forked32_1(in_forked32_1),
        .in_stall_in(bb_cnn_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add84(cnn_B2_merge_out_add84),
        .out_coo_067(cnn_B2_merge_out_coo_067),
        .out_forked32(cnn_B2_merge_out_forked32),
        .out_stall_out_0(cnn_B2_merge_out_stall_out_0),
        .out_stall_out_1(cnn_B2_merge_out_stall_out_1),
        .out_valid_out(cnn_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_B2_stall_region(BLACKBOX,2)
    cnn_bb_B2_stall_region thebb_cnn_B2_stall_region (
        .in_add84(cnn_B2_merge_out_add84),
        .in_coo_067(cnn_B2_merge_out_coo_067),
        .in_forked32(cnn_B2_merge_out_forked32),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_96_0(in_intel_reserved_ffwd_96_0),
        .in_intel_reserved_ffwd_97_0(in_intel_reserved_ffwd_97_0),
        .in_intel_reserved_ffwd_98_0(in_intel_reserved_ffwd_98_0),
        .in_stall_in(cnn_B2_branch_out_stall_out),
        .in_valid_in(cnn_B2_merge_out_valid_out),
        .out_add84(bb_cnn_B2_stall_region_out_add84),
        .out_c0_exe1787(bb_cnn_B2_stall_region_out_c0_exe1787),
        .out_intel_reserved_ffwd_13_0(bb_cnn_B2_stall_region_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_cnn_B2_stall_region_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_cnn_B2_stall_region_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_cnn_B2_stall_region_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_cnn_B2_stall_region_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_cnn_B2_stall_region_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_cnn_B2_stall_region_out_intel_reserved_ffwd_19_0),
        .out_stall_out(bb_cnn_B2_stall_region_out_stall_out),
        .out_valid_out(bb_cnn_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_B2_branch(BLACKBOX,3)
    cnn_B2_branch thecnn_B2_branch (
        .in_add84(bb_cnn_B2_stall_region_out_add84),
        .in_c0_exe1787(bb_cnn_B2_stall_region_out_c0_exe1787),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_cnn_B2_stall_region_out_valid_out),
        .out_add84(cnn_B2_branch_out_add84),
        .out_c0_exe1787(cnn_B2_branch_out_c0_exe1787),
        .out_stall_out(cnn_B2_branch_out_stall_out),
        .out_valid_out_0(cnn_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add84(GPOUT,23)
    assign out_add84 = cnn_B2_branch_out_add84;

    // out_c0_exe1787(GPOUT,24)
    assign out_c0_exe1787 = cnn_B2_branch_out_c0_exe1787;

    // out_intel_reserved_ffwd_13_0(GPOUT,25)
    assign out_intel_reserved_ffwd_13_0 = bb_cnn_B2_stall_region_out_intel_reserved_ffwd_13_0;

    // out_intel_reserved_ffwd_14_0(GPOUT,26)
    assign out_intel_reserved_ffwd_14_0 = bb_cnn_B2_stall_region_out_intel_reserved_ffwd_14_0;

    // out_intel_reserved_ffwd_15_0(GPOUT,27)
    assign out_intel_reserved_ffwd_15_0 = bb_cnn_B2_stall_region_out_intel_reserved_ffwd_15_0;

    // out_intel_reserved_ffwd_16_0(GPOUT,28)
    assign out_intel_reserved_ffwd_16_0 = bb_cnn_B2_stall_region_out_intel_reserved_ffwd_16_0;

    // out_intel_reserved_ffwd_17_0(GPOUT,29)
    assign out_intel_reserved_ffwd_17_0 = bb_cnn_B2_stall_region_out_intel_reserved_ffwd_17_0;

    // out_intel_reserved_ffwd_18_0(GPOUT,30)
    assign out_intel_reserved_ffwd_18_0 = bb_cnn_B2_stall_region_out_intel_reserved_ffwd_18_0;

    // out_intel_reserved_ffwd_19_0(GPOUT,31)
    assign out_intel_reserved_ffwd_19_0 = bb_cnn_B2_stall_region_out_intel_reserved_ffwd_19_0;

    // out_stall_out_0(GPOUT,32)
    assign out_stall_out_0 = cnn_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,33)
    assign out_stall_out_1 = cnn_B2_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,34)
    assign out_valid_out_0 = cnn_B2_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,35)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
