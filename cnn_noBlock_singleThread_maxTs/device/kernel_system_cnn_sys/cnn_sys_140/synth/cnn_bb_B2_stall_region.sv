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

// SystemVerilog created from cnn_bb_B2_stall_region
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B2_stall_region (
    input wire [0:0] in_intel_reserved_ffwd_12_0,
    output wire [63:0] out_intel_reserved_ffwd_13_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_14_0,
    input wire [63:0] in_add84,
    input wire [63:0] in_coo_067,
    input wire [0:0] in_forked32,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_add84,
    output wire [63:0] out_c0_exe1787,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    output wire [63:0] out_intel_reserved_ffwd_15_0,
    input wire [63:0] in_intel_reserved_ffwd_96_0,
    output wire [63:0] out_intel_reserved_ffwd_16_0,
    input wire [63:0] in_intel_reserved_ffwd_97_0,
    output wire [64:0] out_intel_reserved_ffwd_17_0,
    input wire [63:0] in_intel_reserved_ffwd_98_0,
    output wire [0:0] out_intel_reserved_ffwd_18_0,
    output wire [0:0] out_intel_reserved_ffwd_19_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] cnn_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] cnn_B2_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] cnn_B2_merge_reg_aunroll_x_out_data_out_0;
    wire [0:0] cnn_B2_merge_reg_aunroll_x_out_data_out_1;
    wire [63:0] cnn_B2_merge_reg_aunroll_x_out_data_out_2;
    wire [63:0] i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_13_0;
    wire [63:0] i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_14_0;
    wire [63:0] i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [64:0] i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_18_0;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_19_0;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_c0_exit786_1;
    wire [63:0] i_sfc_s_c1_in_for_cond4_preheader_cnns_c1_enter7772_cnn109_aunroll_x_out_intel_reserved_ffwd_15_0;
    wire [0:0] i_sfc_s_c1_in_for_cond4_preheader_cnns_c1_enter7772_cnn109_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_cond4_preheader_cnns_c1_enter7772_cnn109_aunroll_x_out_o_valid;
    wire [0:0] redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_valid;
    wire redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_stall;
    wire redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_stall_bitsignaltemp;
    wire [63:0] redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_data;
    wire [0:0] redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_valid;
    wire redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_stall;
    wire redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_stall_bitsignaltemp;
    wire [63:0] redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_data;
    wire [128:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [128:0] bubble_join_cnn_B2_merge_reg_aunroll_x_q;
    wire [63:0] bubble_select_cnn_B2_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_cnn_B2_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_cnn_B2_merge_reg_aunroll_x_d;
    wire [63:0] bubble_join_i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_b;
    wire [63:0] bubble_join_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_q;
    wire [63:0] bubble_select_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_cnn_B2_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_wireValid;
    wire [0:0] SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_and0;
    wire [0:0] SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_and1;
    wire [0:0] SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_backStall;
    wire [0:0] SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,36)
    assign bubble_join_stall_entry_q = {in_forked32, in_coo_067, in_add84};

    // bubble_select_stall_entry(BITSELECT,37)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[63:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[127:64];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[128:128];

    // SE_stall_entry(STALLENABLE,49)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = cnn_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // cnn_B2_merge_reg_aunroll_x(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0@1
    // out out_data_out_1@1
    // out out_data_out_2@1
    cnn_B2_merge_reg thecnn_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_cnn_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0(bubble_select_stall_entry_c),
        .in_data_in_1(bubble_select_stall_entry_d),
        .in_data_in_2(bubble_select_stall_entry_b),
        .out_stall_out(cnn_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(cnn_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0(cnn_B2_merge_reg_aunroll_x_out_data_out_0),
        .out_data_out_1(cnn_B2_merge_reg_aunroll_x_out_data_out_1),
        .out_data_out_2(cnn_B2_merge_reg_aunroll_x_out_data_out_2),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_cnn_B2_merge_reg_aunroll_x(BITJOIN,40)
    assign bubble_join_cnn_B2_merge_reg_aunroll_x_q = {cnn_B2_merge_reg_aunroll_x_out_data_out_2, cnn_B2_merge_reg_aunroll_x_out_data_out_1, cnn_B2_merge_reg_aunroll_x_out_data_out_0};

    // bubble_select_cnn_B2_merge_reg_aunroll_x(BITSELECT,41)
    assign bubble_select_cnn_B2_merge_reg_aunroll_x_b = bubble_join_cnn_B2_merge_reg_aunroll_x_q[63:0];
    assign bubble_select_cnn_B2_merge_reg_aunroll_x_c = bubble_join_cnn_B2_merge_reg_aunroll_x_q[64:64];
    assign bubble_select_cnn_B2_merge_reg_aunroll_x_d = bubble_join_cnn_B2_merge_reg_aunroll_x_q[128:65];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo(STALLFIFO,34)
    assign redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_valid = SE_out_cnn_B2_merge_reg_aunroll_x_V2;
    assign redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_stall = SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_backStall;
    assign redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_data = bubble_select_cnn_B2_merge_reg_aunroll_x_d;
    assign redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_valid_bitsignaltemp = redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_valid[0];
    assign redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_stall_bitsignaltemp = redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_stall[0];
    assign redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_valid[0] = redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_valid_bitsignaltemp;
    assign redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_stall[0] = redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(15),
        .WIDTH(64),
        .STYLE("hs"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .STALL_IN_EARLINESS(0),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) theredist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo (
        .i_valid(redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_valid_bitsignaltemp),
        .i_stall(redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_cnn_B2_merge_reg_aunroll_x_d),
        .o_valid(redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_valid_bitsignaltemp),
        .o_stall(redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_stall_bitsignaltemp),
        .o_data(redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_for_cond4_preheader_cnns_c1_enter7772_cnn109_aunroll_x(BLACKBOX,32)@1
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@15
    // out out_c1_exit779_0@15
    cnn_i_sfc_s_c1_in_for_cond4_preheader_s_c1_enter7772_cnn109 thei_sfc_s_c1_in_for_cond4_preheader_cnns_c1_enter7772_cnn109_aunroll_x (
        .in_i_stall(SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_backStall),
        .in_i_valid(SE_out_cnn_B2_merge_reg_aunroll_x_V1),
        .in_c1_eni1776_0(GND_q),
        .in_c1_eni1776_1(bubble_select_cnn_B2_merge_reg_aunroll_x_b),
        .out_intel_reserved_ffwd_15_0(i_sfc_s_c1_in_for_cond4_preheader_cnns_c1_enter7772_cnn109_aunroll_x_out_intel_reserved_ffwd_15_0),
        .out_o_stall(i_sfc_s_c1_in_for_cond4_preheader_cnns_c1_enter7772_cnn109_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_cond4_preheader_cnns_c1_enter7772_cnn109_aunroll_x_out_o_valid),
        .out_c1_exit779_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_cnn_B2_merge_reg_aunroll_x(STALLENABLE,52)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_cnn_B2_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_cnn_B2_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_cnn_B2_merge_reg_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_cnn_B2_merge_reg_aunroll_x_fromReg0 <= SE_out_cnn_B2_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_cnn_B2_merge_reg_aunroll_x_fromReg1 <= SE_out_cnn_B2_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_cnn_B2_merge_reg_aunroll_x_fromReg2 <= SE_out_cnn_B2_merge_reg_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_cnn_B2_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_o_stall) & SE_out_cnn_B2_merge_reg_aunroll_x_wireValid) | SE_out_cnn_B2_merge_reg_aunroll_x_fromReg0;
    assign SE_out_cnn_B2_merge_reg_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_for_cond4_preheader_cnns_c1_enter7772_cnn109_aunroll_x_out_o_stall) & SE_out_cnn_B2_merge_reg_aunroll_x_wireValid) | SE_out_cnn_B2_merge_reg_aunroll_x_fromReg1;
    assign SE_out_cnn_B2_merge_reg_aunroll_x_consumed2 = (~ (redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_stall) & SE_out_cnn_B2_merge_reg_aunroll_x_wireValid) | SE_out_cnn_B2_merge_reg_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_cnn_B2_merge_reg_aunroll_x_StallValid = SE_out_cnn_B2_merge_reg_aunroll_x_backStall & SE_out_cnn_B2_merge_reg_aunroll_x_wireValid;
    assign SE_out_cnn_B2_merge_reg_aunroll_x_toReg0 = SE_out_cnn_B2_merge_reg_aunroll_x_StallValid & SE_out_cnn_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_cnn_B2_merge_reg_aunroll_x_toReg1 = SE_out_cnn_B2_merge_reg_aunroll_x_StallValid & SE_out_cnn_B2_merge_reg_aunroll_x_consumed1;
    assign SE_out_cnn_B2_merge_reg_aunroll_x_toReg2 = SE_out_cnn_B2_merge_reg_aunroll_x_StallValid & SE_out_cnn_B2_merge_reg_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_cnn_B2_merge_reg_aunroll_x_or0 = SE_out_cnn_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_cnn_B2_merge_reg_aunroll_x_or1 = SE_out_cnn_B2_merge_reg_aunroll_x_consumed1 & SE_out_cnn_B2_merge_reg_aunroll_x_or0;
    assign SE_out_cnn_B2_merge_reg_aunroll_x_wireStall = ~ (SE_out_cnn_B2_merge_reg_aunroll_x_consumed2 & SE_out_cnn_B2_merge_reg_aunroll_x_or1);
    assign SE_out_cnn_B2_merge_reg_aunroll_x_backStall = SE_out_cnn_B2_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_cnn_B2_merge_reg_aunroll_x_V0 = SE_out_cnn_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_B2_merge_reg_aunroll_x_fromReg0);
    assign SE_out_cnn_B2_merge_reg_aunroll_x_V1 = SE_out_cnn_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_B2_merge_reg_aunroll_x_fromReg1);
    assign SE_out_cnn_B2_merge_reg_aunroll_x_V2 = SE_out_cnn_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_B2_merge_reg_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_cnn_B2_merge_reg_aunroll_x_wireValid = cnn_B2_merge_reg_aunroll_x_out_valid_out;

    // SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo(STALLENABLE,58)
    // Valid signal propagation
    assign SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_V0 = SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_backStall = in_stall_in | ~ (SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_and0 = redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_valid;
    assign SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_and1 = i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_o_valid & SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_and0;
    assign SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_wireValid = i_sfc_s_c1_in_for_cond4_preheader_cnns_c1_enter7772_cnn109_aunroll_x_out_o_valid & SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_and1;

    // i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x(BLACKBOX,31)@1
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@15
    // out out_c0_exit786_0@15
    // out out_c0_exit786_1@15
    cnn_i_sfc_s_c0_in_for_cond4_preheader_s_c0_enter782_cnn119 thei_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x (
        .in_i_stall(SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_backStall),
        .in_i_valid(SE_out_cnn_B2_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_96_0(in_intel_reserved_ffwd_96_0),
        .in_intel_reserved_ffwd_97_0(in_intel_reserved_ffwd_97_0),
        .in_intel_reserved_ffwd_98_0(in_intel_reserved_ffwd_98_0),
        .in_c0_eni2781_0(GND_q),
        .in_c0_eni2781_1(bubble_select_cnn_B2_merge_reg_aunroll_x_c),
        .in_c0_eni2781_2(bubble_select_cnn_B2_merge_reg_aunroll_x_b),
        .out_intel_reserved_ffwd_13_0(i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_16_0(i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_19_0),
        .out_o_stall(i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_o_valid),
        .out_c0_exit786_0(),
        .out_c0_exit786_1(i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_c0_exit786_1),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,8)
    assign out_intel_reserved_ffwd_13_0 = i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_13_0;

    // sync_out(GPOUT,12)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_14_0 = i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_14_0;

    // bubble_join_i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x(BITJOIN,43)
    assign bubble_join_i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_q = i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_c0_exit786_1;

    // bubble_select_i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x(BITSELECT,44)
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_q[63:0];

    // bubble_join_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo(BITJOIN,47)
    assign bubble_join_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_q = redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_o_data;

    // bubble_select_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo(BITSELECT,48)
    assign bubble_select_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_b = bubble_join_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_q[63:0];

    // dupName_0_sync_out_x(GPOUT,19)@15
    assign out_add84 = bubble_select_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_b;
    assign out_c0_exe1787 = bubble_select_i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_b;
    assign out_valid_out = SE_out_redist0_cnn_B2_merge_reg_aunroll_x_out_data_out_2_14_fifo_V0;

    // dupName_1_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_15_0 = i_sfc_s_c1_in_for_cond4_preheader_cnns_c1_enter7772_cnn109_aunroll_x_out_intel_reserved_ffwd_15_0;

    // dupName_2_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_16_0;

    // dupName_3_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_17_0 = i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_17_0;

    // dupName_4_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_18_0 = i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_18_0;

    // dupName_5_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_19_0 = i_sfc_s_c0_in_for_cond4_preheader_cnns_c0_enter782_cnn119_aunroll_x_out_intel_reserved_ffwd_19_0;

    // rst_sync(RESETSYNC,79)
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
