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

// SystemVerilog created from cnn_bb_B9_stall_region
// SystemVerilog created on Thu Jun 25 10:37:46 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B9_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_add1788_push36760,
    input wire [63:0] in_add3193_push37765,
    input wire [63:0] in_add82_push35755,
    input wire [0:0] in_notcmp71106_pop42770,
    input wire [0:0] in_notcmp75102_pop40768,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_add1788_push36760,
    output wire [63:0] out_add3193_push37765,
    output wire [63:0] out_add82_push35755,
    output wire [0:0] out_notcmp71106_pop42770,
    output wire [0:0] out_notcmp75102_pop40768,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [193:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // SE_stall_entry(STALLENABLE,13)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = in_stall_in | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,7)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_stall_entry(BITJOIN,11)
    assign bubble_join_stall_entry_q = {in_notcmp75102_pop40768, in_notcmp71106_pop42770, in_add82_push35755, in_add3193_push37765, in_add1788_push36760};

    // bubble_select_stall_entry(BITSELECT,12)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[63:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[127:64];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[191:128];
    assign bubble_select_stall_entry_e = bubble_join_stall_entry_q[192:192];
    assign bubble_select_stall_entry_f = bubble_join_stall_entry_q[193:193];

    // dupName_0_sync_out_x(GPOUT,9)@0
    assign out_add1788_push36760 = bubble_select_stall_entry_b;
    assign out_add3193_push37765 = bubble_select_stall_entry_c;
    assign out_add82_push35755 = bubble_select_stall_entry_d;
    assign out_notcmp71106_pop42770 = bubble_select_stall_entry_e;
    assign out_notcmp75102_pop40768 = bubble_select_stall_entry_f;
    assign out_valid_out = SE_stall_entry_V0;

    // rst_sync(RESETSYNC,19)
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
