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

// SystemVerilog created from cnn_bb_B4
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B4 (
    input wire [63:0] in_add1785_0,
    input wire [63:0] in_add1785_1,
    input wire [63:0] in_add3190_0,
    input wire [63:0] in_add3190_1,
    input wire [63:0] in_add79_0,
    input wire [63:0] in_add79_1,
    input wire [63:0] in_input,
    input wire [64:0] in_intel_reserved_ffwd_10_0,
    input wire [0:0] in_intel_reserved_ffwd_12_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_output,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [63:0] in_weights,
    output wire [63:0] out_c0_exe1807,
    output wire [63:0] out_c0_exe2,
    output wire [0:0] out_c0_exe4,
    output wire [63:0] out_c0_exe5,
    output wire [63:0] out_c0_exe6,
    output wire [63:0] out_c0_exe7,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_cnn_B4_stall_region_out_c0_exe1807;
    wire [63:0] bb_cnn_B4_stall_region_out_c0_exe2;
    wire [0:0] bb_cnn_B4_stall_region_out_c0_exe4;
    wire [63:0] bb_cnn_B4_stall_region_out_c0_exe5;
    wire [63:0] bb_cnn_B4_stall_region_out_c0_exe6;
    wire [63:0] bb_cnn_B4_stall_region_out_c0_exe7;
    wire [0:0] bb_cnn_B4_stall_region_out_stall_out;
    wire [0:0] bb_cnn_B4_stall_region_out_valid_out;
    wire [63:0] cnn_B4_branch_out_c0_exe1807;
    wire [63:0] cnn_B4_branch_out_c0_exe2;
    wire [0:0] cnn_B4_branch_out_c0_exe4;
    wire [63:0] cnn_B4_branch_out_c0_exe5;
    wire [63:0] cnn_B4_branch_out_c0_exe6;
    wire [63:0] cnn_B4_branch_out_c0_exe7;
    wire [0:0] cnn_B4_branch_out_stall_out;
    wire [0:0] cnn_B4_branch_out_valid_out_0;
    wire [63:0] cnn_B4_merge_out_add1785;
    wire [63:0] cnn_B4_merge_out_add3190;
    wire [63:0] cnn_B4_merge_out_add79;
    wire [0:0] cnn_B4_merge_out_stall_out_0;
    wire [0:0] cnn_B4_merge_out_stall_out_1;
    wire [0:0] cnn_B4_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // cnn_B4_merge(BLACKBOX,4)
    cnn_B4_merge thecnn_B4_merge (
        .in_add1785_0(in_add1785_0),
        .in_add1785_1(in_add1785_1),
        .in_add3190_0(in_add3190_0),
        .in_add3190_1(in_add3190_1),
        .in_add79_0(in_add79_0),
        .in_add79_1(in_add79_1),
        .in_stall_in(bb_cnn_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add1785(cnn_B4_merge_out_add1785),
        .out_add3190(cnn_B4_merge_out_add3190),
        .out_add79(cnn_B4_merge_out_add79),
        .out_stall_out_0(cnn_B4_merge_out_stall_out_0),
        .out_stall_out_1(cnn_B4_merge_out_stall_out_1),
        .out_valid_out(cnn_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_B4_stall_region(BLACKBOX,2)
    cnn_bb_B4_stall_region thebb_cnn_B4_stall_region (
        .in_add1785(cnn_B4_merge_out_add1785),
        .in_add3190(cnn_B4_merge_out_add3190),
        .in_add79(cnn_B4_merge_out_add79),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(cnn_B4_branch_out_stall_out),
        .in_valid_in(cnn_B4_merge_out_valid_out),
        .out_c0_exe1807(bb_cnn_B4_stall_region_out_c0_exe1807),
        .out_c0_exe2(bb_cnn_B4_stall_region_out_c0_exe2),
        .out_c0_exe4(bb_cnn_B4_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_cnn_B4_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_cnn_B4_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_cnn_B4_stall_region_out_c0_exe7),
        .out_stall_out(bb_cnn_B4_stall_region_out_stall_out),
        .out_valid_out(bb_cnn_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_B4_branch(BLACKBOX,3)
    cnn_B4_branch thecnn_B4_branch (
        .in_c0_exe1807(bb_cnn_B4_stall_region_out_c0_exe1807),
        .in_c0_exe2(bb_cnn_B4_stall_region_out_c0_exe2),
        .in_c0_exe4(bb_cnn_B4_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_cnn_B4_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_cnn_B4_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_cnn_B4_stall_region_out_c0_exe7),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_cnn_B4_stall_region_out_valid_out),
        .out_c0_exe1807(cnn_B4_branch_out_c0_exe1807),
        .out_c0_exe2(cnn_B4_branch_out_c0_exe2),
        .out_c0_exe4(cnn_B4_branch_out_c0_exe4),
        .out_c0_exe5(cnn_B4_branch_out_c0_exe5),
        .out_c0_exe6(cnn_B4_branch_out_c0_exe6),
        .out_c0_exe7(cnn_B4_branch_out_c0_exe7),
        .out_stall_out(cnn_B4_branch_out_stall_out),
        .out_valid_out_0(cnn_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1807(GPOUT,20)
    assign out_c0_exe1807 = cnn_B4_branch_out_c0_exe1807;

    // out_c0_exe2(GPOUT,21)
    assign out_c0_exe2 = cnn_B4_branch_out_c0_exe2;

    // out_c0_exe4(GPOUT,22)
    assign out_c0_exe4 = cnn_B4_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,23)
    assign out_c0_exe5 = cnn_B4_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,24)
    assign out_c0_exe6 = cnn_B4_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,25)
    assign out_c0_exe7 = cnn_B4_branch_out_c0_exe7;

    // out_stall_out_0(GPOUT,26)
    assign out_stall_out_0 = cnn_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,27)
    assign out_stall_out_1 = cnn_B4_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,28)
    assign out_valid_out_0 = cnn_B4_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,29)
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
