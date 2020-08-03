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

// SystemVerilog created from cnn_bb_B6
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B6 (
    input wire [63:0] in_add1787_0,
    input wire [63:0] in_add1787_1,
    input wire [63:0] in_add3192_0,
    input wire [63:0] in_add3192_1,
    input wire [63:0] in_add81_0,
    input wire [63:0] in_add81_1,
    input wire [63:0] in_col_060_replace_phi103_0,
    input wire [63:0] in_col_060_replace_phi103_1,
    input wire [63:0] in_input,
    input wire [63:0] in_intel_reserved_ffwd_22_0,
    input wire [64:0] in_intel_reserved_ffwd_24_0,
    input wire [0:0] in_intel_reserved_ffwd_26_0,
    input wire [63:0] in_mul8598_0,
    input wire [63:0] in_mul8598_1,
    input wire [0:0] in_notcmp71105_0,
    input wire [0:0] in_notcmp71105_1,
    input wire [0:0] in_notcmp75101_0,
    input wire [0:0] in_notcmp75101_1,
    input wire [63:0] in_output,
    input wire [63:0] in_row_063_replace_phi95_0,
    input wire [63:0] in_row_063_replace_phi95_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [63:0] in_weights,
    output wire [0:0] out_c0_exe10,
    output wire [63:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [63:0] out_c0_exe1857,
    output wire [63:0] out_c0_exe2858,
    output wire [0:0] out_c0_exe4860,
    output wire [63:0] out_c0_exe5861,
    output wire [63:0] out_c0_exe6862,
    output wire [63:0] out_c0_exe7863,
    output wire [63:0] out_c0_exe8864,
    output wire [63:0] out_c0_exe9865,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_cnn_B6_stall_region_out_c0_exe10;
    wire [63:0] bb_cnn_B6_stall_region_out_c0_exe11;
    wire [0:0] bb_cnn_B6_stall_region_out_c0_exe12;
    wire [63:0] bb_cnn_B6_stall_region_out_c0_exe1857;
    wire [63:0] bb_cnn_B6_stall_region_out_c0_exe2858;
    wire [0:0] bb_cnn_B6_stall_region_out_c0_exe4860;
    wire [63:0] bb_cnn_B6_stall_region_out_c0_exe5861;
    wire [63:0] bb_cnn_B6_stall_region_out_c0_exe6862;
    wire [63:0] bb_cnn_B6_stall_region_out_c0_exe7863;
    wire [63:0] bb_cnn_B6_stall_region_out_c0_exe8864;
    wire [63:0] bb_cnn_B6_stall_region_out_c0_exe9865;
    wire [0:0] bb_cnn_B6_stall_region_out_stall_out;
    wire [0:0] bb_cnn_B6_stall_region_out_valid_out;
    wire [0:0] cnn_B6_branch_out_c0_exe10;
    wire [63:0] cnn_B6_branch_out_c0_exe11;
    wire [0:0] cnn_B6_branch_out_c0_exe12;
    wire [63:0] cnn_B6_branch_out_c0_exe1857;
    wire [63:0] cnn_B6_branch_out_c0_exe2858;
    wire [0:0] cnn_B6_branch_out_c0_exe4860;
    wire [63:0] cnn_B6_branch_out_c0_exe5861;
    wire [63:0] cnn_B6_branch_out_c0_exe6862;
    wire [63:0] cnn_B6_branch_out_c0_exe7863;
    wire [63:0] cnn_B6_branch_out_c0_exe8864;
    wire [63:0] cnn_B6_branch_out_c0_exe9865;
    wire [0:0] cnn_B6_branch_out_stall_out;
    wire [0:0] cnn_B6_branch_out_valid_out_0;
    wire [63:0] cnn_B6_merge_out_add1787;
    wire [63:0] cnn_B6_merge_out_add3192;
    wire [63:0] cnn_B6_merge_out_add81;
    wire [63:0] cnn_B6_merge_out_col_060_replace_phi103;
    wire [63:0] cnn_B6_merge_out_mul8598;
    wire [0:0] cnn_B6_merge_out_notcmp71105;
    wire [0:0] cnn_B6_merge_out_notcmp75101;
    wire [63:0] cnn_B6_merge_out_row_063_replace_phi95;
    wire [0:0] cnn_B6_merge_out_stall_out_0;
    wire [0:0] cnn_B6_merge_out_stall_out_1;
    wire [0:0] cnn_B6_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // cnn_B6_merge(BLACKBOX,4)
    cnn_B6_merge thecnn_B6_merge (
        .in_add1787_0(in_add1787_0),
        .in_add1787_1(in_add1787_1),
        .in_add3192_0(in_add3192_0),
        .in_add3192_1(in_add3192_1),
        .in_add81_0(in_add81_0),
        .in_add81_1(in_add81_1),
        .in_col_060_replace_phi103_0(in_col_060_replace_phi103_0),
        .in_col_060_replace_phi103_1(in_col_060_replace_phi103_1),
        .in_mul8598_0(in_mul8598_0),
        .in_mul8598_1(in_mul8598_1),
        .in_notcmp71105_0(in_notcmp71105_0),
        .in_notcmp71105_1(in_notcmp71105_1),
        .in_notcmp75101_0(in_notcmp75101_0),
        .in_notcmp75101_1(in_notcmp75101_1),
        .in_row_063_replace_phi95_0(in_row_063_replace_phi95_0),
        .in_row_063_replace_phi95_1(in_row_063_replace_phi95_1),
        .in_stall_in(bb_cnn_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add1787(cnn_B6_merge_out_add1787),
        .out_add3192(cnn_B6_merge_out_add3192),
        .out_add81(cnn_B6_merge_out_add81),
        .out_col_060_replace_phi103(cnn_B6_merge_out_col_060_replace_phi103),
        .out_mul8598(cnn_B6_merge_out_mul8598),
        .out_notcmp71105(cnn_B6_merge_out_notcmp71105),
        .out_notcmp75101(cnn_B6_merge_out_notcmp75101),
        .out_row_063_replace_phi95(cnn_B6_merge_out_row_063_replace_phi95),
        .out_stall_out_0(cnn_B6_merge_out_stall_out_0),
        .out_stall_out_1(cnn_B6_merge_out_stall_out_1),
        .out_valid_out(cnn_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_B6_stall_region(BLACKBOX,2)
    cnn_bb_B6_stall_region thebb_cnn_B6_stall_region (
        .in_add1787(cnn_B6_merge_out_add1787),
        .in_add3192(cnn_B6_merge_out_add3192),
        .in_add81(cnn_B6_merge_out_add81),
        .in_col_060_replace_phi103(cnn_B6_merge_out_col_060_replace_phi103),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_mul8598(cnn_B6_merge_out_mul8598),
        .in_notcmp71105(cnn_B6_merge_out_notcmp71105),
        .in_notcmp75101(cnn_B6_merge_out_notcmp75101),
        .in_row_063_replace_phi95(cnn_B6_merge_out_row_063_replace_phi95),
        .in_stall_in(cnn_B6_branch_out_stall_out),
        .in_valid_in(cnn_B6_merge_out_valid_out),
        .in_weights(in_weights),
        .out_c0_exe10(bb_cnn_B6_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_cnn_B6_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_cnn_B6_stall_region_out_c0_exe12),
        .out_c0_exe1857(bb_cnn_B6_stall_region_out_c0_exe1857),
        .out_c0_exe2858(bb_cnn_B6_stall_region_out_c0_exe2858),
        .out_c0_exe4860(bb_cnn_B6_stall_region_out_c0_exe4860),
        .out_c0_exe5861(bb_cnn_B6_stall_region_out_c0_exe5861),
        .out_c0_exe6862(bb_cnn_B6_stall_region_out_c0_exe6862),
        .out_c0_exe7863(bb_cnn_B6_stall_region_out_c0_exe7863),
        .out_c0_exe8864(bb_cnn_B6_stall_region_out_c0_exe8864),
        .out_c0_exe9865(bb_cnn_B6_stall_region_out_c0_exe9865),
        .out_stall_out(bb_cnn_B6_stall_region_out_stall_out),
        .out_valid_out(bb_cnn_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_B6_branch(BLACKBOX,3)
    cnn_B6_branch thecnn_B6_branch (
        .in_c0_exe10(bb_cnn_B6_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_cnn_B6_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_cnn_B6_stall_region_out_c0_exe12),
        .in_c0_exe1857(bb_cnn_B6_stall_region_out_c0_exe1857),
        .in_c0_exe2858(bb_cnn_B6_stall_region_out_c0_exe2858),
        .in_c0_exe4860(bb_cnn_B6_stall_region_out_c0_exe4860),
        .in_c0_exe5861(bb_cnn_B6_stall_region_out_c0_exe5861),
        .in_c0_exe6862(bb_cnn_B6_stall_region_out_c0_exe6862),
        .in_c0_exe7863(bb_cnn_B6_stall_region_out_c0_exe7863),
        .in_c0_exe8864(bb_cnn_B6_stall_region_out_c0_exe8864),
        .in_c0_exe9865(bb_cnn_B6_stall_region_out_c0_exe9865),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_cnn_B6_stall_region_out_valid_out),
        .out_c0_exe10(cnn_B6_branch_out_c0_exe10),
        .out_c0_exe11(cnn_B6_branch_out_c0_exe11),
        .out_c0_exe12(cnn_B6_branch_out_c0_exe12),
        .out_c0_exe1857(cnn_B6_branch_out_c0_exe1857),
        .out_c0_exe2858(cnn_B6_branch_out_c0_exe2858),
        .out_c0_exe4860(cnn_B6_branch_out_c0_exe4860),
        .out_c0_exe5861(cnn_B6_branch_out_c0_exe5861),
        .out_c0_exe6862(cnn_B6_branch_out_c0_exe6862),
        .out_c0_exe7863(cnn_B6_branch_out_c0_exe7863),
        .out_c0_exe8864(cnn_B6_branch_out_c0_exe8864),
        .out_c0_exe9865(cnn_B6_branch_out_c0_exe9865),
        .out_stall_out(cnn_B6_branch_out_stall_out),
        .out_valid_out_0(cnn_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,30)
    assign out_c0_exe10 = cnn_B6_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,31)
    assign out_c0_exe11 = cnn_B6_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,32)
    assign out_c0_exe12 = cnn_B6_branch_out_c0_exe12;

    // out_c0_exe1857(GPOUT,33)
    assign out_c0_exe1857 = cnn_B6_branch_out_c0_exe1857;

    // out_c0_exe2858(GPOUT,34)
    assign out_c0_exe2858 = cnn_B6_branch_out_c0_exe2858;

    // out_c0_exe4860(GPOUT,35)
    assign out_c0_exe4860 = cnn_B6_branch_out_c0_exe4860;

    // out_c0_exe5861(GPOUT,36)
    assign out_c0_exe5861 = cnn_B6_branch_out_c0_exe5861;

    // out_c0_exe6862(GPOUT,37)
    assign out_c0_exe6862 = cnn_B6_branch_out_c0_exe6862;

    // out_c0_exe7863(GPOUT,38)
    assign out_c0_exe7863 = cnn_B6_branch_out_c0_exe7863;

    // out_c0_exe8864(GPOUT,39)
    assign out_c0_exe8864 = cnn_B6_branch_out_c0_exe8864;

    // out_c0_exe9865(GPOUT,40)
    assign out_c0_exe9865 = cnn_B6_branch_out_c0_exe9865;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = cnn_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,42)
    assign out_stall_out_1 = cnn_B6_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,43)
    assign out_valid_out_0 = cnn_B6_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,44)
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
