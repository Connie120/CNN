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

// SystemVerilog created from cnn_bb_B8_stall_region
// SystemVerilog created on Thu Jun 25 10:37:46 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B8_stall_region (
    input wire [511:0] in_unnamed_cnn175_avm_readdata,
    input wire [0:0] in_unnamed_cnn175_avm_writeack,
    input wire [0:0] in_unnamed_cnn175_avm_waitrequest,
    input wire [0:0] in_unnamed_cnn175_avm_readdatavalid,
    output wire [34:0] out_unnamed_cnn175_avm_address,
    output wire [0:0] out_unnamed_cnn175_avm_enable,
    output wire [0:0] out_unnamed_cnn175_avm_read,
    output wire [0:0] out_unnamed_cnn175_avm_write,
    output wire [511:0] out_unnamed_cnn175_avm_writedata,
    output wire [63:0] out_unnamed_cnn175_avm_byteenable,
    output wire [4:0] out_unnamed_cnn175_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_lsu_unnamed_cnn175_o_active,
    input wire [0:0] in_intel_reserved_ffwd_92_0,
    input wire [63:0] in_add1788_push36761,
    input wire [63:0] in_add3193_push37766,
    input wire [63:0] in_add82_push35756,
    input wire [63:0] in_col_060_replace_phi104_pop41750,
    input wire [31:0] in_dot_prod748751,
    input wire [63:0] in_mul8599_pop39749,
    input wire [0:0] in_notcmp67110_pop45773,
    input wire [0:0] in_notcmp71106_pop42771,
    input wire [0:0] in_notcmp75102_pop40769,
    input wire [63:0] in_to_058_replace_phi108_pop43772,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_add1788_push36761,
    output wire [63:0] out_add3193_push37766,
    output wire [63:0] out_add82_push35756,
    output wire [0:0] out_notcmp67110_pop45773,
    output wire [0:0] out_notcmp71106_pop42771,
    output wire [0:0] out_notcmp75102_pop40769,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw,
    input wire [63:0] in_output,
    output wire [31:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total,
    output wire [31:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_lsu_unnamed_cnn175_o_active;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_o_stall;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_o_valid;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total;
    wire [31:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw;
    wire [31:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req;
    wire [34:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_address;
    wire [4:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_burstcount;
    wire [63:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_byteenable;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_enable;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_read;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_write;
    wire [511:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_out_c0_exit923_1;
    wire [0:0] i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_out_c0_exit923_2;
    wire [194:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [63:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] redist3_stall_entry_o8_11_fifo_i_valid;
    wire redist3_stall_entry_o8_11_fifo_i_valid_bitsignaltemp;
    wire [0:0] redist3_stall_entry_o8_11_fifo_i_stall;
    wire redist3_stall_entry_o8_11_fifo_i_stall_bitsignaltemp;
    wire [31:0] redist3_stall_entry_o8_11_fifo_i_data;
    wire [0:0] redist3_stall_entry_o8_11_fifo_o_valid;
    wire redist3_stall_entry_o8_11_fifo_o_valid_bitsignaltemp;
    wire [0:0] redist3_stall_entry_o8_11_fifo_o_stall;
    wire redist3_stall_entry_o8_11_fifo_o_stall_bitsignaltemp;
    wire [31:0] redist3_stall_entry_o8_11_fifo_o_data;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [194:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [194:0] coalesced_delay_0_fifo_o_data;
    wire [418:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [63:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [63:0] bubble_select_stall_entry_k;
    wire [64:0] bubble_join_i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_c;
    wire [31:0] bubble_join_redist3_stall_entry_o8_11_fifo_q;
    wire [31:0] bubble_select_redist3_stall_entry_o8_11_fifo_b;
    wire [194:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [194:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_out_redist3_stall_entry_o8_11_fifo_wireValid;
    wire [0:0] SE_out_redist3_stall_entry_o8_11_fifo_and0;
    wire [0:0] SE_out_redist3_stall_entry_o8_11_fifo_backStall;
    wire [0:0] SE_out_redist3_stall_entry_o8_11_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,45)
    assign bubble_join_stall_entry_q = {in_to_058_replace_phi108_pop43772, in_notcmp75102_pop40769, in_notcmp71106_pop42771, in_notcmp67110_pop45773, in_mul8599_pop39749, in_dot_prod748751, in_col_060_replace_phi104_pop41750, in_add82_push35756, in_add3193_push37766, in_add1788_push36761};

    // bubble_select_stall_entry(BITSELECT,46)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[63:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[127:64];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[191:128];
    assign bubble_select_stall_entry_e = bubble_join_stall_entry_q[255:192];
    assign bubble_select_stall_entry_f = bubble_join_stall_entry_q[287:256];
    assign bubble_select_stall_entry_g = bubble_join_stall_entry_q[351:288];
    assign bubble_select_stall_entry_h = bubble_join_stall_entry_q[352:352];
    assign bubble_select_stall_entry_i = bubble_join_stall_entry_q[353:353];
    assign bubble_select_stall_entry_j = bubble_join_stall_entry_q[354:354];
    assign bubble_select_stall_entry_k = bubble_join_stall_entry_q[418:355];

    // join_for_coalesced_delay_0(BITJOIN,39)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_j, bubble_select_stall_entry_i, bubble_select_stall_entry_h, bubble_select_stall_entry_d, bubble_select_stall_entry_c, bubble_select_stall_entry_b};

    // coalesced_delay_0_fifo(STALLFIFO,42)
    assign coalesced_delay_0_fifo_i_valid = SE_stall_entry_V2;
    assign coalesced_delay_0_fifo_i_stall = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(14),
        .WIDTH(195),
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
    ) thecoalesced_delay_0_fifo (
        .i_valid(coalesced_delay_0_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_0_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_0_q),
        .o_valid(coalesced_delay_0_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_0_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_0_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x(BLACKBOX,30)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_c0_exit923_0@11
    // out out_c0_exit923_1@11
    // out out_c0_exit923_2@11
    cnn_i_sfc_s_c0_in_for_end80_s_c0_enter917_cnn2518 thei_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x (
        .in_i_stall(SE_out_redist3_stall_entry_o8_11_fifo_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_92_0(in_intel_reserved_ffwd_92_0),
        .in_output(in_output),
        .in_c0_eni3916_0(GND_q),
        .in_c0_eni3916_1(bubble_select_stall_entry_k),
        .in_c0_eni3916_2(bubble_select_stall_entry_g),
        .in_c0_eni3916_3(bubble_select_stall_entry_e),
        .out_o_stall(i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_out_o_valid),
        .out_c0_exit923_0(),
        .out_c0_exit923_1(i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_out_c0_exit923_1),
        .out_c0_exit923_2(i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_out_c0_exit923_2),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,59)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (redist3_stall_entry_o8_11_fifo_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (coalesced_delay_0_fifo_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // redist3_stall_entry_o8_11_fifo(STALLFIFO,41)
    assign redist3_stall_entry_o8_11_fifo_i_valid = SE_stall_entry_V1;
    assign redist3_stall_entry_o8_11_fifo_i_stall = SE_out_redist3_stall_entry_o8_11_fifo_backStall;
    assign redist3_stall_entry_o8_11_fifo_i_data = bubble_select_stall_entry_f;
    assign redist3_stall_entry_o8_11_fifo_i_valid_bitsignaltemp = redist3_stall_entry_o8_11_fifo_i_valid[0];
    assign redist3_stall_entry_o8_11_fifo_i_stall_bitsignaltemp = redist3_stall_entry_o8_11_fifo_i_stall[0];
    assign redist3_stall_entry_o8_11_fifo_o_valid[0] = redist3_stall_entry_o8_11_fifo_o_valid_bitsignaltemp;
    assign redist3_stall_entry_o8_11_fifo_o_stall[0] = redist3_stall_entry_o8_11_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(12),
        .WIDTH(32),
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
    ) theredist3_stall_entry_o8_11_fifo (
        .i_valid(redist3_stall_entry_o8_11_fifo_i_valid_bitsignaltemp),
        .i_stall(redist3_stall_entry_o8_11_fifo_i_stall_bitsignaltemp),
        .i_data(bubble_select_stall_entry_f),
        .o_valid(redist3_stall_entry_o8_11_fifo_o_valid_bitsignaltemp),
        .o_stall(redist3_stall_entry_o8_11_fifo_o_stall_bitsignaltemp),
        .o_data(redist3_stall_entry_o8_11_fifo_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist3_stall_entry_o8_11_fifo(BITJOIN,52)
    assign bubble_join_redist3_stall_entry_o8_11_fifo_q = redist3_stall_entry_o8_11_fifo_o_data;

    // bubble_select_redist3_stall_entry_o8_11_fifo(BITSELECT,53)
    assign bubble_select_redist3_stall_entry_o8_11_fifo_b = bubble_join_redist3_stall_entry_o8_11_fifo_q[31:0];

    // SE_out_redist3_stall_entry_o8_11_fifo(STALLENABLE,66)
    // Valid signal propagation
    assign SE_out_redist3_stall_entry_o8_11_fifo_V0 = SE_out_redist3_stall_entry_o8_11_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist3_stall_entry_o8_11_fifo_backStall = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_o_stall | ~ (SE_out_redist3_stall_entry_o8_11_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist3_stall_entry_o8_11_fifo_and0 = redist3_stall_entry_o8_11_fifo_o_valid;
    assign SE_out_redist3_stall_entry_o8_11_fifo_wireValid = i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_out_o_valid & SE_out_redist3_stall_entry_o8_11_fifo_and0;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,68)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_o_valid;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // bubble_join_i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x(BITJOIN,49)
    assign bubble_join_i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_q = {i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_out_c0_exit923_2, i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_out_c0_exit923_1};

    // bubble_select_i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x(BITSELECT,50)
    assign bubble_select_i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_q[63:0];
    assign bubble_select_i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_c = bubble_join_i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_q[64:64];

    // i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540(BLACKBOX,7)@11
    // in in_i_stall@20000000
    // out out_lsu_unnamed_cnn175_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@13
    // out out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total@20000000
    // out out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr@20000000
    // out out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count@20000000
    // out out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall@20000000
    // out out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw@20000000
    // out out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr@20000000
    // out out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid@20000000
    // out out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req@20000000
    // out out_unnamed_cnn175_avm_address@20000000
    // out out_unnamed_cnn175_avm_burstcount@20000000
    // out out_unnamed_cnn175_avm_byteenable@20000000
    // out out_unnamed_cnn175_avm_enable@20000000
    // out out_unnamed_cnn175_avm_read@20000000
    // out out_unnamed_cnn175_avm_write@20000000
    // out out_unnamed_cnn175_avm_writedata@20000000
    cnn_i_llvm_fpga_store_burst_coalesced_isA000000Z_unnamed_175_cnn2541 thei_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_b),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_end80_cnns_c0_enter917_cnn2518_aunroll_x_c),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_redist3_stall_entry_o8_11_fifo_V0),
        .in_i_writedata(bubble_select_redist3_stall_entry_o8_11_fifo_b),
        .in_unnamed_cnn175_avm_readdata(in_unnamed_cnn175_avm_readdata),
        .in_unnamed_cnn175_avm_readdatavalid(in_unnamed_cnn175_avm_readdatavalid),
        .in_unnamed_cnn175_avm_waitrequest(in_unnamed_cnn175_avm_waitrequest),
        .in_unnamed_cnn175_avm_writeack(in_unnamed_cnn175_avm_writeack),
        .out_lsu_unnamed_cnn175_o_active(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_lsu_unnamed_cnn175_o_active),
        .out_o_stall(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_o_stall),
        .out_o_valid(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_o_valid),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req),
        .out_unnamed_cnn175_avm_address(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_address),
        .out_unnamed_cnn175_avm_burstcount(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_burstcount),
        .out_unnamed_cnn175_avm_byteenable(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_byteenable),
        .out_unnamed_cnn175_avm_enable(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_enable),
        .out_unnamed_cnn175_avm_read(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_read),
        .out_unnamed_cnn175_avm_write(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_write),
        .out_unnamed_cnn175_avm_writedata(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_cnn175_avm_address = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_address;
    assign out_unnamed_cnn175_avm_enable = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_enable;
    assign out_unnamed_cnn175_avm_read = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_read;
    assign out_unnamed_cnn175_avm_write = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_write;
    assign out_unnamed_cnn175_avm_writedata = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_writedata;
    assign out_unnamed_cnn175_avm_byteenable = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_byteenable;
    assign out_unnamed_cnn175_avm_burstcount = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_unnamed_cnn175_avm_burstcount;

    // sync_out(GPOUT,14)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,15)
    assign out_lsu_unnamed_cnn175_o_active = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_lsu_unnamed_cnn175_o_active;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,55)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,56)
    assign bubble_select_coalesced_delay_0_fifo_b = bubble_join_coalesced_delay_0_fifo_q[194:0];

    // sel_for_coalesced_delay_0(BITSELECT,40)
    assign sel_for_coalesced_delay_0_b = bubble_select_coalesced_delay_0_fifo_b[63:0];
    assign sel_for_coalesced_delay_0_c = bubble_select_coalesced_delay_0_fifo_b[127:64];
    assign sel_for_coalesced_delay_0_d = bubble_select_coalesced_delay_0_fifo_b[191:128];
    assign sel_for_coalesced_delay_0_e = bubble_select_coalesced_delay_0_fifo_b[192:192];
    assign sel_for_coalesced_delay_0_f = bubble_select_coalesced_delay_0_fifo_b[193:193];
    assign sel_for_coalesced_delay_0_g = bubble_select_coalesced_delay_0_fifo_b[194:194];

    // dupName_0_sync_out_x(GPOUT,20)@13
    assign out_add1788_push36761 = sel_for_coalesced_delay_0_b;
    assign out_add3193_push37766 = sel_for_coalesced_delay_0_c;
    assign out_add82_push35756 = sel_for_coalesced_delay_0_d;
    assign out_notcmp67110_pop45773 = sel_for_coalesced_delay_0_e;
    assign out_notcmp71106_pop42771 = sel_for_coalesced_delay_0_f;
    assign out_notcmp75102_pop40769 = sel_for_coalesced_delay_0_g;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,21)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw;

    // dupName_2_ext_sig_sync_out_x(GPOUT,23)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr;

    // dupName_3_ext_sig_sync_out_x(GPOUT,24)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid;

    // dupName_4_ext_sig_sync_out_x(GPOUT,25)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req;

    // dupName_5_ext_sig_sync_out_x(GPOUT,26)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count;

    // dupName_6_ext_sig_sync_out_x(GPOUT,27)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total;

    // dupName_7_ext_sig_sync_out_x(GPOUT,28)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr;

    // dupName_8_ext_sig_sync_out_x(GPOUT,29)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall;

    // rst_sync(RESETSYNC,89)
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
