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

// SystemVerilog created from cnn_bb_B4_stall_region
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B4_stall_region (
    input wire [64:0] in_intel_reserved_ffwd_10_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_intel_reserved_ffwd_12_0,
    input wire [63:0] in_add1785,
    input wire [63:0] in_add3190,
    input wire [63:0] in_add79,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe1807,
    output wire [63:0] out_c0_exe2,
    output wire [0:0] out_c0_exe4,
    output wire [63:0] out_c0_exe5,
    output wire [63:0] out_c0_exe6,
    output wire [63:0] out_c0_exe7,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_1;
    wire [63:0] i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_2;
    wire [0:0] i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_4;
    wire [63:0] i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_5;
    wire [63:0] i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_6;
    wire [63:0] i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_7;
    wire [191:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [320:0] bubble_join_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_g;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,19)
    assign bubble_join_stall_entry_q = {in_add79, in_add3190, in_add1785};

    // bubble_select_stall_entry(BITSELECT,20)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[63:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[127:64];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[191:128];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // SE_out_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x(STALLENABLE,28)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x(BLACKBOX,17)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_c0_exit806_0@10
    // out out_c0_exit806_1@10
    // out out_c0_exit806_2@10
    // out out_c0_exit806_3@10
    // out out_c0_exit806_4@10
    // out out_c0_exit806_5@10
    // out out_c0_exit806_6@10
    // out out_c0_exit806_7@10
    cnn_i_sfc_s_c0_in_for_cond15_preheader_s_c0_enter8025_cnn453 thei_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_c0_eni4_0(GND_q),
        .in_c0_eni4_1(GND_q),
        .in_c0_eni4_2(bubble_select_stall_entry_d),
        .in_c0_eni4_3(bubble_select_stall_entry_b),
        .in_c0_eni4_4(bubble_select_stall_entry_c),
        .out_o_stall(i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_o_valid),
        .out_c0_exit806_0(),
        .out_c0_exit806_1(i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_1),
        .out_c0_exit806_2(i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_2),
        .out_c0_exit806_3(),
        .out_c0_exit806_4(i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_4),
        .out_c0_exit806_5(i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_5),
        .out_c0_exit806_6(i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_6),
        .out_c0_exit806_7(i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_7),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,25)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,12)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x(BITJOIN,23)
    assign bubble_join_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_q = {i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_7, i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_6, i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_5, i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_4, i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_2, i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_out_c0_exit806_1};

    // bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x(BITSELECT,24)
    assign bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_q[63:0];
    assign bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_q[127:64];
    assign bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_d = bubble_join_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_q[128:128];
    assign bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_e = bubble_join_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_q[192:129];
    assign bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_f = bubble_join_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_q[256:193];
    assign bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_g = bubble_join_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_q[320:257];

    // dupName_0_sync_out_x(GPOUT,15)@10
    assign out_c0_exe1807 = bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_b;
    assign out_c0_exe2 = bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_c;
    assign out_c0_exe4 = bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_d;
    assign out_c0_exe5 = bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_e;
    assign out_c0_exe6 = bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_f;
    assign out_c0_exe7 = bubble_select_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_g;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond15_preheader_cnns_c0_enter8025_cnn453_aunroll_x_V0;

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
