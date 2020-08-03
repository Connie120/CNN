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

// SystemVerilog created from cnn_bb_B5_stall_region
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B5_stall_region (
    input wire [63:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [64:0] in_intel_reserved_ffwd_17_0,
    input wire [63:0] in_add1786,
    input wire [63:0] in_add3191,
    input wire [63:0] in_add80,
    input wire [63:0] in_mul8597,
    input wire [0:0] in_notcmp75100,
    input wire [63:0] in_row_063_replace_phi94,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe1825,
    output wire [0:0] out_c0_exe3827,
    output wire [63:0] out_c0_exe4828,
    output wire [63:0] out_c0_exe5829,
    output wire [63:0] out_c0_exe6830,
    output wire [63:0] out_c0_exe7831,
    output wire [63:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_1;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_3;
    wire [63:0] i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_4;
    wire [63:0] i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_5;
    wire [63:0] i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_6;
    wire [63:0] i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_7;
    wire [63:0] i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_8;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_9;
    wire [320:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [63:0] bubble_select_stall_entry_g;
    wire [385:0] bubble_join_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_i;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,19)
    assign bubble_join_stall_entry_q = {in_row_063_replace_phi94, in_notcmp75100, in_mul8597, in_add80, in_add3191, in_add1786};

    // bubble_select_stall_entry(BITSELECT,20)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[63:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[127:64];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[191:128];
    assign bubble_select_stall_entry_e = bubble_join_stall_entry_q[255:192];
    assign bubble_select_stall_entry_f = bubble_join_stall_entry_q[256:256];
    assign bubble_select_stall_entry_g = bubble_join_stall_entry_q[320:257];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // SE_out_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x(STALLENABLE,28)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x(BLACKBOX,17)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_c0_exit824_0@11
    // out out_c0_exit824_1@11
    // out out_c0_exit824_2@11
    // out out_c0_exit824_3@11
    // out out_c0_exit824_4@11
    // out out_c0_exit824_5@11
    // out out_c0_exit824_6@11
    // out out_c0_exit824_7@11
    // out out_c0_exit824_8@11
    // out out_c0_exit824_9@11
    cnn_i_sfc_s_c0_in_for_cond29_preheader_s_c0_enter8127_cnn528 thei_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_c0_eni7_0(GND_q),
        .in_c0_eni7_1(GND_q),
        .in_c0_eni7_2(bubble_select_stall_entry_d),
        .in_c0_eni7_3(bubble_select_stall_entry_b),
        .in_c0_eni7_4(bubble_select_stall_entry_c),
        .in_c0_eni7_5(bubble_select_stall_entry_g),
        .in_c0_eni7_6(bubble_select_stall_entry_e),
        .in_c0_eni7_7(bubble_select_stall_entry_f),
        .out_o_stall(i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_o_valid),
        .out_c0_exit824_0(),
        .out_c0_exit824_1(i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_1),
        .out_c0_exit824_2(),
        .out_c0_exit824_3(i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_3),
        .out_c0_exit824_4(i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_4),
        .out_c0_exit824_5(i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_5),
        .out_c0_exit824_6(i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_6),
        .out_c0_exit824_7(i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_7),
        .out_c0_exit824_8(i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_8),
        .out_c0_exit824_9(i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_9),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,25)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,12)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x(BITJOIN,23)
    assign bubble_join_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_q = {i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_9, i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_8, i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_7, i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_6, i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_5, i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_4, i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_3, i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_out_c0_exit824_1};

    // bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x(BITSELECT,24)
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_q[63:0];
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_q[64:64];
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_d = bubble_join_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_q[128:65];
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_e = bubble_join_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_q[192:129];
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_f = bubble_join_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_q[256:193];
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_g = bubble_join_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_q[320:257];
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_h = bubble_join_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_q[384:321];
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_i = bubble_join_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_q[385:385];

    // dupName_0_sync_out_x(GPOUT,15)@11
    assign out_c0_exe1825 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_b;
    assign out_c0_exe3827 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_c;
    assign out_c0_exe4828 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_d;
    assign out_c0_exe5829 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_e;
    assign out_c0_exe6830 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_f;
    assign out_c0_exe7831 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_g;
    assign out_c0_exe8 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_h;
    assign out_c0_exe9 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn528_aunroll_x_V0;

    // rst_sync(RESETSYNC,39)
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
