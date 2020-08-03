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

// SystemVerilog created from cnn_bb_B10
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B10 (
    input wire [63:0] in_add1788_push36759_0,
    input wire [63:0] in_add3193_push37764_0,
    input wire [63:0] in_add82_push35754_0,
    input wire [63:0] in_input,
    input wire [0:0] in_notcmp75102_pop40767_0,
    input wire [63:0] in_output,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [63:0] in_weights,
    output wire [63:0] out_add1788_push36759,
    output wire [63:0] out_add3193_push37764,
    output wire [63:0] out_add82_push35754,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_cnn_B10_stall_region_out_add1788_push36759;
    wire [63:0] bb_cnn_B10_stall_region_out_add3193_push37764;
    wire [63:0] bb_cnn_B10_stall_region_out_add82_push35754;
    wire [0:0] bb_cnn_B10_stall_region_out_notcmp75102_pop40767;
    wire [0:0] bb_cnn_B10_stall_region_out_stall_out;
    wire [0:0] bb_cnn_B10_stall_region_out_valid_out;
    wire [63:0] cnn_B10_branch_out_add1788_push36759;
    wire [63:0] cnn_B10_branch_out_add3193_push37764;
    wire [63:0] cnn_B10_branch_out_add82_push35754;
    wire [0:0] cnn_B10_branch_out_stall_out;
    wire [0:0] cnn_B10_branch_out_valid_out_0;
    wire [0:0] cnn_B10_branch_out_valid_out_1;
    wire [63:0] cnn_B10_merge_out_add1788_push36759;
    wire [63:0] cnn_B10_merge_out_add3193_push37764;
    wire [63:0] cnn_B10_merge_out_add82_push35754;
    wire [0:0] cnn_B10_merge_out_notcmp75102_pop40767;
    wire [0:0] cnn_B10_merge_out_stall_out_0;
    wire [0:0] cnn_B10_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // cnn_B10_merge(BLACKBOX,4)
    cnn_B10_merge thecnn_B10_merge (
        .in_add1788_push36759_0(in_add1788_push36759_0),
        .in_add3193_push37764_0(in_add3193_push37764_0),
        .in_add82_push35754_0(in_add82_push35754_0),
        .in_notcmp75102_pop40767_0(in_notcmp75102_pop40767_0),
        .in_stall_in(bb_cnn_B10_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_add1788_push36759(cnn_B10_merge_out_add1788_push36759),
        .out_add3193_push37764(cnn_B10_merge_out_add3193_push37764),
        .out_add82_push35754(cnn_B10_merge_out_add82_push35754),
        .out_notcmp75102_pop40767(cnn_B10_merge_out_notcmp75102_pop40767),
        .out_stall_out_0(cnn_B10_merge_out_stall_out_0),
        .out_valid_out(cnn_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_B10_stall_region(BLACKBOX,2)
    cnn_bb_B10_stall_region thebb_cnn_B10_stall_region (
        .in_add1788_push36759(cnn_B10_merge_out_add1788_push36759),
        .in_add3193_push37764(cnn_B10_merge_out_add3193_push37764),
        .in_add82_push35754(cnn_B10_merge_out_add82_push35754),
        .in_notcmp75102_pop40767(cnn_B10_merge_out_notcmp75102_pop40767),
        .in_stall_in(cnn_B10_branch_out_stall_out),
        .in_valid_in(cnn_B10_merge_out_valid_out),
        .out_add1788_push36759(bb_cnn_B10_stall_region_out_add1788_push36759),
        .out_add3193_push37764(bb_cnn_B10_stall_region_out_add3193_push37764),
        .out_add82_push35754(bb_cnn_B10_stall_region_out_add82_push35754),
        .out_notcmp75102_pop40767(bb_cnn_B10_stall_region_out_notcmp75102_pop40767),
        .out_stall_out(bb_cnn_B10_stall_region_out_stall_out),
        .out_valid_out(bb_cnn_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_B10_branch(BLACKBOX,3)
    cnn_B10_branch thecnn_B10_branch (
        .in_add1788_push36759(bb_cnn_B10_stall_region_out_add1788_push36759),
        .in_add3193_push37764(bb_cnn_B10_stall_region_out_add3193_push37764),
        .in_add82_push35754(bb_cnn_B10_stall_region_out_add82_push35754),
        .in_notcmp75102_pop40767(bb_cnn_B10_stall_region_out_notcmp75102_pop40767),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_cnn_B10_stall_region_out_valid_out),
        .out_add1788_push36759(cnn_B10_branch_out_add1788_push36759),
        .out_add3193_push37764(cnn_B10_branch_out_add3193_push37764),
        .out_add82_push35754(cnn_B10_branch_out_add82_push35754),
        .out_stall_out(cnn_B10_branch_out_stall_out),
        .out_valid_out_0(cnn_B10_branch_out_valid_out_0),
        .out_valid_out_1(cnn_B10_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add1788_push36759(GPOUT,15)
    assign out_add1788_push36759 = cnn_B10_branch_out_add1788_push36759;

    // out_add3193_push37764(GPOUT,16)
    assign out_add3193_push37764 = cnn_B10_branch_out_add3193_push37764;

    // out_add82_push35754(GPOUT,17)
    assign out_add82_push35754 = cnn_B10_branch_out_add82_push35754;

    // out_stall_out_0(GPOUT,18)
    assign out_stall_out_0 = cnn_B10_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,19)
    assign out_valid_out_0 = cnn_B10_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,20)
    assign out_valid_out_1 = cnn_B10_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,21)
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
