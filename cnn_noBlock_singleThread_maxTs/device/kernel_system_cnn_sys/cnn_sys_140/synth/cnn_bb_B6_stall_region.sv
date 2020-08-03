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

// SystemVerilog created from cnn_bb_B6_stall_region
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B6_stall_region (
    input wire [63:0] in_intel_reserved_ffwd_22_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [64:0] in_intel_reserved_ffwd_24_0,
    input wire [63:0] in_add1787,
    input wire [63:0] in_add3192,
    input wire [63:0] in_add81,
    input wire [63:0] in_col_060_replace_phi103,
    input wire [63:0] in_mul8598,
    input wire [0:0] in_notcmp71105,
    input wire [0:0] in_notcmp75101,
    input wire [63:0] in_row_063_replace_phi95,
    input wire [0:0] in_valid_in,
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
    output wire [0:0] out_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_26_0,
    input wire [63:0] in_weights,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_1;
    wire [63:0] i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_2;
    wire [0:0] i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_4;
    wire [63:0] i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_5;
    wire [63:0] i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_6;
    wire [63:0] i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_7;
    wire [63:0] i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_8;
    wire [63:0] i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_9;
    wire [0:0] i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_10;
    wire [63:0] i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_11;
    wire [0:0] i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_12;
    wire [385:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [63:0] bubble_select_stall_entry_i;
    wire [514:0] bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_h;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_j;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_l;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,20)
    assign bubble_join_stall_entry_q = {in_row_063_replace_phi95, in_notcmp75101, in_notcmp71105, in_mul8598, in_col_060_replace_phi103, in_add81, in_add3192, in_add1787};

    // bubble_select_stall_entry(BITSELECT,21)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[63:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[127:64];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[191:128];
    assign bubble_select_stall_entry_e = bubble_join_stall_entry_q[255:192];
    assign bubble_select_stall_entry_f = bubble_join_stall_entry_q[319:256];
    assign bubble_select_stall_entry_g = bubble_join_stall_entry_q[320:320];
    assign bubble_select_stall_entry_h = bubble_join_stall_entry_q[321:321];
    assign bubble_select_stall_entry_i = bubble_join_stall_entry_q[385:322];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // SE_out_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x(STALLENABLE,29)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x(BLACKBOX,18)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@14
    // out out_c0_exit856_0@14
    // out out_c0_exit856_1@14
    // out out_c0_exit856_2@14
    // out out_c0_exit856_3@14
    // out out_c0_exit856_4@14
    // out out_c0_exit856_5@14
    // out out_c0_exit856_6@14
    // out out_c0_exit856_7@14
    // out out_c0_exit856_8@14
    // out out_c0_exit856_9@14
    // out out_c0_exit856_10@14
    // out out_c0_exit856_11@14
    // out out_c0_exit856_12@14
    cnn_i_sfc_s_c0_in_for_cond43_preheader_s_c0_enter8399_cnn620 thei_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_weights(in_weights),
        .in_c0_eni9_0(GND_q),
        .in_c0_eni9_1(GND_q),
        .in_c0_eni9_2(bubble_select_stall_entry_d),
        .in_c0_eni9_3(bubble_select_stall_entry_b),
        .in_c0_eni9_4(bubble_select_stall_entry_c),
        .in_c0_eni9_5(bubble_select_stall_entry_i),
        .in_c0_eni9_6(bubble_select_stall_entry_f),
        .in_c0_eni9_7(bubble_select_stall_entry_h),
        .in_c0_eni9_8(bubble_select_stall_entry_e),
        .in_c0_eni9_9(bubble_select_stall_entry_g),
        .out_o_stall(i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_o_valid),
        .out_c0_exit856_0(),
        .out_c0_exit856_1(i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_1),
        .out_c0_exit856_2(i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_2),
        .out_c0_exit856_3(),
        .out_c0_exit856_4(i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_4),
        .out_c0_exit856_5(i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_5),
        .out_c0_exit856_6(i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_6),
        .out_c0_exit856_7(i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_7),
        .out_c0_exit856_8(i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_8),
        .out_c0_exit856_9(i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_9),
        .out_c0_exit856_10(i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_10),
        .out_c0_exit856_11(i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_11),
        .out_c0_exit856_12(i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_12),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,26)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,12)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x(BITJOIN,24)
    assign bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_q = {i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_12, i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_11, i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_10, i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_9, i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_8, i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_7, i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_6, i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_5, i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_4, i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_2, i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_out_c0_exit856_1};

    // bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x(BITSELECT,25)
    assign bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_q[63:0];
    assign bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_q[127:64];
    assign bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_d = bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_q[128:128];
    assign bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_e = bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_q[192:129];
    assign bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_f = bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_q[256:193];
    assign bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_g = bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_q[320:257];
    assign bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_h = bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_q[384:321];
    assign bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_i = bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_q[448:385];
    assign bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_j = bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_q[449:449];
    assign bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_k = bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_q[513:450];
    assign bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_l = bubble_join_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_q[514:514];

    // dupName_0_sync_out_x(GPOUT,15)@14
    assign out_c0_exe10 = bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_j;
    assign out_c0_exe11 = bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_k;
    assign out_c0_exe12 = bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_l;
    assign out_c0_exe1857 = bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_b;
    assign out_c0_exe2858 = bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_c;
    assign out_c0_exe4860 = bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_d;
    assign out_c0_exe5861 = bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_e;
    assign out_c0_exe6862 = bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_f;
    assign out_c0_exe7863 = bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_g;
    assign out_c0_exe8864 = bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_h;
    assign out_c0_exe9865 = bubble_select_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond43_preheader_cnns_c0_enter8399_cnn620_aunroll_x_V0;

    // rst_sync(RESETSYNC,40)
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
