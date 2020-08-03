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

// SystemVerilog created from cnn_bb_B1
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B1 (
    input wire [0:0] in_forked33_0,
    input wire [0:0] in_forked33_1,
    input wire [63:0] in_input,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_100_0,
    input wire [63:0] in_intel_reserved_ffwd_101_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_99_0,
    input wire [63:0] in_output,
    input wire [63:0] in_roo_068_0,
    input wire [63:0] in_roo_068_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [63:0] in_weights,
    output wire [63:0] out_c0_exe1,
    output wire [64:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_intel_reserved_ffwd_11_0,
    output wire [0:0] out_intel_reserved_ffwd_12_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    output wire [63:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_cnn_B1_stall_region_out_c0_exe1;
    wire [64:0] bb_cnn_B1_stall_region_out_intel_reserved_ffwd_10_0;
    wire [0:0] bb_cnn_B1_stall_region_out_intel_reserved_ffwd_11_0;
    wire [0:0] bb_cnn_B1_stall_region_out_intel_reserved_ffwd_12_0;
    wire [63:0] bb_cnn_B1_stall_region_out_intel_reserved_ffwd_6_0;
    wire [63:0] bb_cnn_B1_stall_region_out_intel_reserved_ffwd_7_0;
    wire [63:0] bb_cnn_B1_stall_region_out_intel_reserved_ffwd_8_0;
    wire [63:0] bb_cnn_B1_stall_region_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_cnn_B1_stall_region_out_stall_out;
    wire [0:0] bb_cnn_B1_stall_region_out_valid_out;
    wire [63:0] cnn_B1_branch_out_c0_exe1;
    wire [0:0] cnn_B1_branch_out_stall_out;
    wire [0:0] cnn_B1_branch_out_valid_out_0;
    wire [0:0] cnn_B1_merge_out_forked33;
    wire [63:0] cnn_B1_merge_out_roo_068;
    wire [0:0] cnn_B1_merge_out_stall_out_0;
    wire [0:0] cnn_B1_merge_out_stall_out_1;
    wire [0:0] cnn_B1_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // cnn_B1_merge(BLACKBOX,4)
    cnn_B1_merge thecnn_B1_merge (
        .in_forked33_0(in_forked33_0),
        .in_forked33_1(in_forked33_1),
        .in_roo_068_0(in_roo_068_0),
        .in_roo_068_1(in_roo_068_1),
        .in_stall_in(bb_cnn_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked33(cnn_B1_merge_out_forked33),
        .out_roo_068(cnn_B1_merge_out_roo_068),
        .out_stall_out_0(cnn_B1_merge_out_stall_out_0),
        .out_stall_out_1(cnn_B1_merge_out_stall_out_1),
        .out_valid_out(cnn_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_B1_stall_region(BLACKBOX,2)
    cnn_bb_B1_stall_region thebb_cnn_B1_stall_region (
        .in_forked33(cnn_B1_merge_out_forked33),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_100_0(in_intel_reserved_ffwd_100_0),
        .in_intel_reserved_ffwd_101_0(in_intel_reserved_ffwd_101_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_99_0(in_intel_reserved_ffwd_99_0),
        .in_roo_068(cnn_B1_merge_out_roo_068),
        .in_stall_in(cnn_B1_branch_out_stall_out),
        .in_valid_in(cnn_B1_merge_out_valid_out),
        .out_c0_exe1(bb_cnn_B1_stall_region_out_c0_exe1),
        .out_intel_reserved_ffwd_10_0(bb_cnn_B1_stall_region_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_cnn_B1_stall_region_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_cnn_B1_stall_region_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_6_0(bb_cnn_B1_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_cnn_B1_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_cnn_B1_stall_region_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_cnn_B1_stall_region_out_intel_reserved_ffwd_9_0),
        .out_stall_out(bb_cnn_B1_stall_region_out_stall_out),
        .out_valid_out(bb_cnn_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_B1_branch(BLACKBOX,3)
    cnn_B1_branch thecnn_B1_branch (
        .in_c0_exe1(bb_cnn_B1_stall_region_out_c0_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_cnn_B1_stall_region_out_valid_out),
        .out_c0_exe1(cnn_B1_branch_out_c0_exe1),
        .out_stall_out(cnn_B1_branch_out_stall_out),
        .out_valid_out_0(cnn_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1(GPOUT,20)
    assign out_c0_exe1 = cnn_B1_branch_out_c0_exe1;

    // out_intel_reserved_ffwd_10_0(GPOUT,21)
    assign out_intel_reserved_ffwd_10_0 = bb_cnn_B1_stall_region_out_intel_reserved_ffwd_10_0;

    // out_intel_reserved_ffwd_11_0(GPOUT,22)
    assign out_intel_reserved_ffwd_11_0 = bb_cnn_B1_stall_region_out_intel_reserved_ffwd_11_0;

    // out_intel_reserved_ffwd_12_0(GPOUT,23)
    assign out_intel_reserved_ffwd_12_0 = bb_cnn_B1_stall_region_out_intel_reserved_ffwd_12_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,24)
    assign out_intel_reserved_ffwd_6_0 = bb_cnn_B1_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,25)
    assign out_intel_reserved_ffwd_7_0 = bb_cnn_B1_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,26)
    assign out_intel_reserved_ffwd_8_0 = bb_cnn_B1_stall_region_out_intel_reserved_ffwd_8_0;

    // out_intel_reserved_ffwd_9_0(GPOUT,27)
    assign out_intel_reserved_ffwd_9_0 = bb_cnn_B1_stall_region_out_intel_reserved_ffwd_9_0;

    // out_stall_out_0(GPOUT,28)
    assign out_stall_out_0 = cnn_B1_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,29)
    assign out_stall_out_1 = cnn_B1_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,30)
    assign out_valid_out_0 = cnn_B1_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,31)
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
