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

// SystemVerilog created from cnn_i_sfc_logic_s_c0_in_for_cond29_preheader_s_c0_enter8127_cnn529
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_logic_s_c0_in_for_cond29_preheader_s_c0_enter8127_cnn529 (
    input wire [63:0] in_intel_reserved_ffwd_15_0,
    output wire [0:0] out_exiting_valid_out,
    input wire [64:0] in_intel_reserved_ffwd_17_0,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni7_0,
    input wire [0:0] in_c0_eni7_1,
    input wire [63:0] in_c0_eni7_2,
    input wire [63:0] in_c0_eni7_3,
    input wire [63:0] in_c0_eni7_4,
    input wire [63:0] in_c0_eni7_5,
    input wire [63:0] in_c0_eni7_6,
    input wire [0:0] in_c0_eni7_7,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exi9_0,
    output wire [63:0] out_c0_exi9_1,
    output wire [0:0] out_c0_exi9_2,
    output wire [0:0] out_c0_exi9_3,
    output wire [63:0] out_c0_exi9_4,
    output wire [63:0] out_c0_exi9_5,
    output wire [63:0] out_c0_exi9_6,
    output wire [63:0] out_c0_exi9_7,
    output wire [63:0] out_c0_exi9_8,
    output wire [0:0] out_c0_exi9_9,
    output wire [0:0] out_cnn_B5_exited,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_1gr_q;
    wire [63:0] c_i64_undef_q;
    wire [64:0] c_i65_1gr_q;
    wire [64:0] c_i65_undef_q;
    wire [64:0] i_add72_1_cnn558_a;
    wire [64:0] i_add72_1_cnn558_b;
    logic [64:0] i_add72_1_cnn558_o;
    wire [64:0] i_add72_1_cnn558_q;
    wire [0:0] i_cnn_b5_exited_cnn538_q;
    wire [0:0] i_cnn_b5_exiting_cnn542_q;
    wire [0:0] i_col_060_replace_phi_cnn557_s;
    reg [63:0] i_col_060_replace_phi_cnn557_q;
    wire [0:0] i_fpgaindvars_iv1689_replace_phi_cnn551_s;
    reg [64:0] i_fpgaindvars_iv1689_replace_phi_cnn551_q;
    wire [65:0] i_fpgaindvars_iv_next1690_cnn573_a;
    wire [65:0] i_fpgaindvars_iv_next1690_cnn573_b;
    logic [65:0] i_fpgaindvars_iv_next1690_cnn573_o;
    wire [65:0] i_fpgaindvars_iv_next1690_cnn573_q;
    (* preserve_syn_only *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1813_fanout_adaptor_cnn532_q;
    (* preserve_syn_only *) reg [0:0] i_llvm_fpga_fanout_i1_fanout_adaptor_cnn565_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn105_cnn561_out_dest_data_out_19_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_coo_06745_cnn552_out_dest_data_out_15_0;
    wire [64:0] i_llvm_fpga_ffwd_dest_i65_unnamed_cnn104_cnn546_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_cnn539_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_cnn539_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_cnn539_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_cnn539_out_pipeline_valid_out;
    wire [7:0] i_llvm_fpga_push_i1_notexitcond73_cnn570_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond73_cnn570_out_feedback_valid_out_6;
    wire [0:0] i_notcmp71_cnn569_q;
    wire [0:0] i_unnamed_cnn564_q;
    wire [63:0] bgTrunc_i_add72_1_cnn558_sel_x_b;
    wire [64:0] bgTrunc_i_fpgaindvars_iv_next1690_cnn573_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn537_i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn536_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn537_i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn536_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn603_i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn602_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn603_i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn602_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_add1786_pop17_cnn583_i_llvm_fpga_pop_i64_add1786_pop17_cnn582_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_add1786_pop17_cnn583_i_llvm_fpga_pop_i64_add1786_pop17_cnn582_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_add3191_pop18_cnn588_i_llvm_fpga_pop_i64_add3191_pop18_cnn587_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_add3191_pop18_cnn588_i_llvm_fpga_pop_i64_add3191_pop18_cnn587_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_add80_pop16_cnn578_i_llvm_fpga_pop_i64_add80_pop16_cnn577_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_add80_pop16_cnn578_i_llvm_fpga_pop_i64_add80_pop16_cnn577_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_col_060_pop15_cnn556_i_llvm_fpga_pop_i64_col_060_pop15_cnn555_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_col_060_pop15_cnn556_i_llvm_fpga_pop_i64_col_060_pop15_cnn555_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_mul8597_pop20_cnn598_i_llvm_fpga_pop_i64_mul8597_pop20_cnn597_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_mul8597_pop20_cnn598_i_llvm_fpga_pop_i64_mul8597_pop20_cnn597_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn593_i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn592_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn593_i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn592_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn550_i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn549_mux_x_s;
    reg [64:0] i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn550_i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn549_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_c_i7_0gr_x_q;
    wire [7:0] i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_element_extension_x_q;
    wire [0:0] i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_valid;
    wire i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_stall;
    wire i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_adapt_scalar_trunc_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_element_extension_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_adapt_scalar_trunc_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_valid;
    wire i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_stall;
    wire i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_valid;
    wire i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_stall;
    wire i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_valid;
    wire i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_stall;
    wire i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_valid;
    wire i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_stall;
    wire i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_valid;
    wire i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_stall;
    wire i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_valid;
    wire i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_stall;
    wire i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_o_data;
    wire [62:0] i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_c_i63_0gr_x_q;
    wire [127:0] i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_element_extension_x_q;
    wire [0:0] i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_valid;
    wire i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_stall;
    wire i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_stall_bitsignaltemp;
    wire [127:0] i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_data;
    wire [127:0] i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_o_data;
    wire [64:0] i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_adapt_scalar_trunc_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg26_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg29_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg31_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg32_q;
    wire [0:0] i_exitcond1691_cnn559_cmp_nsign_q;
    reg [63:0] redist0_sync_in_aunroll_x_in_c0_eni7_2_5_q;
    reg [63:0] redist0_sync_in_aunroll_x_in_c0_eni7_2_5_delay_0;
    reg [63:0] redist0_sync_in_aunroll_x_in_c0_eni7_2_5_delay_1;
    reg [63:0] redist1_sync_in_aunroll_x_in_c0_eni7_3_5_q;
    reg [63:0] redist1_sync_in_aunroll_x_in_c0_eni7_3_5_delay_0;
    reg [63:0] redist1_sync_in_aunroll_x_in_c0_eni7_3_5_delay_1;
    reg [63:0] redist2_sync_in_aunroll_x_in_c0_eni7_4_5_q;
    reg [63:0] redist2_sync_in_aunroll_x_in_c0_eni7_4_5_delay_0;
    reg [63:0] redist2_sync_in_aunroll_x_in_c0_eni7_4_5_delay_1;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni7_5_5_q;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni7_5_5_delay_0;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni7_5_5_delay_1;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni7_6_5_q;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni7_6_5_delay_0;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni7_6_5_delay_1;
    reg [0:0] redist5_sync_in_aunroll_x_in_c0_eni7_7_5_q;
    reg [0:0] redist5_sync_in_aunroll_x_in_c0_eni7_7_5_delay_0;
    reg [0:0] redist5_sync_in_aunroll_x_in_c0_eni7_7_5_delay_1;
    reg [0:0] redist5_sync_in_aunroll_x_in_c0_eni7_7_5_delay_2;
    reg [0:0] redist5_sync_in_aunroll_x_in_c0_eni7_7_5_delay_3;
    reg [0:0] redist6_sync_in_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist7_sync_in_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist8_sync_in_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist9_sync_in_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist10_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_1_q;
    reg [0:0] redist11_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_2_q;
    reg [0:0] redist12_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_3_q;
    reg [0:0] redist13_i_unnamed_cnn564_q_1_q;
    reg [0:0] redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_q;
    reg [0:0] redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_delay_0;
    reg [0:0] redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_delay_1;
    reg [0:0] redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_delay_2;
    reg [0:0] redist15_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_5_q;
    reg [63:0] redist0_sync_in_aunroll_x_in_c0_eni7_2_5_inputreg0_q;
    reg [63:0] redist0_sync_in_aunroll_x_in_c0_eni7_2_5_outputreg0_q;
    reg [63:0] redist1_sync_in_aunroll_x_in_c0_eni7_3_5_inputreg0_q;
    reg [63:0] redist1_sync_in_aunroll_x_in_c0_eni7_3_5_outputreg0_q;
    reg [63:0] redist2_sync_in_aunroll_x_in_c0_eni7_4_5_inputreg0_q;
    reg [63:0] redist2_sync_in_aunroll_x_in_c0_eni7_4_5_outputreg0_q;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni7_5_5_inputreg0_q;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni7_5_5_outputreg0_q;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni7_6_5_inputreg0_q;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni7_6_5_outputreg0_q;


    // redist6_sync_in_aunroll_x_in_i_valid_1(DELAY,156)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist6_sync_in_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist6_sync_in_aunroll_x_in_i_valid_1_q <= in_i_valid;
        end
    end

    // redist7_sync_in_aunroll_x_in_i_valid_2(DELAY,157)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_in_aunroll_x_in_i_valid_2_q <= redist6_sync_in_aunroll_x_in_i_valid_1_q;
        end
    end

    // redist8_sync_in_aunroll_x_in_i_valid_3(DELAY,158)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist8_sync_in_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist8_sync_in_aunroll_x_in_i_valid_3_q <= redist7_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // redist9_sync_in_aunroll_x_in_i_valid_4(DELAY,159)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_in_aunroll_x_in_i_valid_4_q <= redist8_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // valid_fanout_reg2(REG,111)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= redist9_sync_in_aunroll_x_in_i_valid_4_q;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // valid_fanout_reg12(REG,121)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= redist9_sync_in_aunroll_x_in_i_valid_4_q;
        end
    end

    // valid_fanout_reg5(REG,114)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= redist8_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i65_unnamed_cnn104_cnn546(BLACKBOX,22)@4
    cnn_i_llvm_fpga_ffwd_dest_i65_unnamed_104_cnn547 thei_llvm_fpga_ffwd_dest_i65_unnamed_cnn104_cnn546 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i65_unnamed_cnn104_cnn546_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i65_undef(CONSTANT,10)
    assign c_i65_undef_q = 65'b00000000000000000000000000000000000000000000000000000000000000000;

    // i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_c_i63_0gr_x(CONSTANT,102)
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_c_i63_0gr_x_q = 63'b000000000000000000000000000000000000000000000000000000000000000;

    // c_i65_1gr(CONSTANT,9)
    assign c_i65_1gr_q = 65'b11111111111111111111111111111111111111111111111111111111111111111;

    // i_fpgaindvars_iv_next1690_cnn573(ADD,17)@4
    assign i_fpgaindvars_iv_next1690_cnn573_a = {1'b0, i_fpgaindvars_iv1689_replace_phi_cnn551_q};
    assign i_fpgaindvars_iv_next1690_cnn573_b = {1'b0, c_i65_1gr_q};
    assign i_fpgaindvars_iv_next1690_cnn573_o = $unsigned(i_fpgaindvars_iv_next1690_cnn573_a) + $unsigned(i_fpgaindvars_iv_next1690_cnn573_b);
    assign i_fpgaindvars_iv_next1690_cnn573_q = i_fpgaindvars_iv_next1690_cnn573_o[65:0];

    // bgTrunc_i_fpgaindvars_iv_next1690_cnn573_sel_x(BITSELECT,34)@4
    assign bgTrunc_i_fpgaindvars_iv_next1690_cnn573_sel_x_b = i_fpgaindvars_iv_next1690_cnn573_q[64:0];

    // i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_element_extension_x(BITJOIN,103)@4
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_element_extension_x_q = {i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_c_i63_0gr_x_q, bgTrunc_i_fpgaindvars_iv_next1690_cnn573_sel_x_b};

    // i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x(LOGICAL,75)@1
    assign i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg14(REG,123)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= in_i_valid;
        end
    end

    // redist10_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_1(DELAY,160)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_1_q <= i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q;
        end
    end

    // redist11_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_2(DELAY,161)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_2_q <= redist10_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_1_q;
        end
    end

    // valid_fanout_reg13(REG,122)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= redist7_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x(FIFODELAY,104)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q);
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_valid = valid_fanout_reg13_q & redist11_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_data = i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_element_extension_x_q;
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_valid[0];
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(128),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x (
        .i_valid(i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_element_extension_x_q),
        .o_data(i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_adapt_scalar_trunc_sel_x(BITSELECT,106)@4
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_adapt_scalar_trunc_sel_x_b = i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn576_x_o_data[64:0];

    // i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn550_i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn549_mux_x(MUX,70)@4
    assign i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn550_i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn549_mux_x_s = redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn550_i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn549_mux_x_s or i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_adapt_scalar_trunc_sel_x_b or c_i65_undef_q)
    begin
        unique case (i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn550_i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn549_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn550_i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn549_mux_x_q = i_llvm_fpga_push_i65_fpgaindvars_iv1689_push14_cnn575_adapt_scalar_trunc_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn550_i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn549_mux_x_q = c_i65_undef_q;
            default : i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn550_i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn549_mux_x_q = 65'b0;
        endcase
    end

    // i_llvm_fpga_forked_cnn_b5_forked_cnn533(BLACKBOX,23)@0
    // in in_stall_in@20000000
    cnn_i_llvm_fpga_forked_b5_forked_cnn534 thei_llvm_fpga_forked_cnn_b5_forked_cnn533 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4(DELAY,164)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_delay_0 <= i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out;
            redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_delay_1 <= redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_delay_0;
            redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_delay_2 <= redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_delay_1;
            redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_q <= redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_delay_2;
        end
    end

    // i_fpgaindvars_iv1689_replace_phi_cnn551(MUX,16)@4
    assign i_fpgaindvars_iv1689_replace_phi_cnn551_s = redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_q;
    always @(i_fpgaindvars_iv1689_replace_phi_cnn551_s or i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn550_i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn549_mux_x_q or i_llvm_fpga_ffwd_dest_i65_unnamed_cnn104_cnn546_out_dest_data_out_17_0)
    begin
        unique case (i_fpgaindvars_iv1689_replace_phi_cnn551_s)
            1'b0 : i_fpgaindvars_iv1689_replace_phi_cnn551_q = i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn550_i_llvm_fpga_pop_i65_fpgaindvars_iv1689_pop14_cnn549_mux_x_q;
            1'b1 : i_fpgaindvars_iv1689_replace_phi_cnn551_q = i_llvm_fpga_ffwd_dest_i65_unnamed_cnn104_cnn546_out_dest_data_out_17_0;
            default : i_fpgaindvars_iv1689_replace_phi_cnn551_q = 65'b0;
        endcase
    end

    // i_exitcond1691_cnn559_cmp_nsign(LOGICAL,146)@4
    assign i_exitcond1691_cnn559_cmp_nsign_q = ~ (i_fpgaindvars_iv1689_replace_phi_cnn551_q[64:64]);

    // valid_fanout_reg9(REG,118)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= redist8_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn105_cnn561(BLACKBOX,20)@4
    cnn_i_llvm_fpga_ffwd_dest_i1_unnamed_105_cnn562 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn105_cnn561 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn105_cnn561_out_dest_data_out_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_cnn564(LOGICAL,27)@4
    assign i_unnamed_cnn564_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn105_cnn561_out_dest_data_out_19_0 & i_exitcond1691_cnn559_cmp_nsign_q;

    // redist13_i_unnamed_cnn564_q_1(DELAY,163)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_unnamed_cnn564_q_1_q <= i_unnamed_cnn564_q;
        end
    end

    // i_llvm_fpga_push_i1_notexitcond73_cnn570(BLACKBOX,25)@5
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    cnn_i_llvm_fpga_push_i1_notexitcond73_571 thei_llvm_fpga_push_i1_notexitcond73_cnn570 (
        .in_data_in(redist13_i_unnamed_cnn564_q_1_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going72_cnn539_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_notexitcond73_cnn570_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_notexitcond73_cnn570_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_pipeline_keep_going72_cnn539(BLACKBOX,24)@5
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_i_llvm_fpga_pipeline_keep_going72_540 thei_llvm_fpga_pipeline_keep_going72_cnn539 (
        .in_data_in(VCC_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond73_cnn570_out_feedback_out_6),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond73_cnn570_out_feedback_valid_out_6),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going72_cnn539_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going72_cnn539_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going72_cnn539_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going72_cnn539_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,30)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going72_cnn539_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,37)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going72_cnn539_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,109)@4 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= 1'b0;
        end
        else
        begin
            valid_fanout_reg0_q <= redist9_sync_in_aunroll_x_in_i_valid_4_q;
        end
    end

    // i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_c_i7_0gr_x(CONSTANT,72)
    assign i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_c_i7_0gr_x_q = 7'b0000000;

    // i_cnn_b5_exiting_cnn542(LOGICAL,13)@5
    assign i_cnn_b5_exiting_cnn542_q = i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn537_i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn536_mux_x_q & i_llvm_fpga_pipeline_keep_going72_cnn539_out_data_out;

    // i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_element_extension_x(BITJOIN,73)@5
    assign i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_element_extension_x_q = {i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_c_i7_0gr_x_q, i_cnn_b5_exiting_cnn542_q};

    // valid_fanout_reg4(REG,113)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= redist6_sync_in_aunroll_x_in_i_valid_1_q;
        end
    end

    // redist12_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_3(DELAY,162)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_3_q <= redist11_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_2_q;
        end
    end

    // valid_fanout_reg3(REG,112)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= redist8_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x(FIFODELAY,74)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_stall = ~ (valid_fanout_reg4_q & redist10_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_valid = valid_fanout_reg3_q & redist12_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_data = i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_element_extension_x_q;
    assign i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_valid[0];
    assign i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x (
        .i_valid(i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_element_extension_x_q),
        .o_data(i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_adapt_scalar_trunc_sel_x(BITSELECT,76)@5
    assign i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_adapt_scalar_trunc_sel_x_b = i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn545_x_o_data[0:0];

    // redist15_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_5(DELAY,165)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_5_q <= redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_q;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn537_i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn536_mux_x(MUX,62)@5
    assign i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn537_i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn536_mux_x_s = redist15_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_5_q;
    always @(i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn537_i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn536_mux_x_s or i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_adapt_scalar_trunc_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn537_i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn536_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn537_i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn536_mux_x_q = i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_adapt_scalar_trunc_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn537_i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn536_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn537_i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn536_mux_x_q = 1'b0;
        endcase
    end

    // i_cnn_b5_exited_cnn538(LOGICAL,12)@5
    assign i_cnn_b5_exited_cnn538_q = i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn537_i_llvm_fpga_pop_coalesce_i1_cnn_b5_not_exited_cnn536_mux_x_q ^ VCC_q;

    // redist5_sync_in_aunroll_x_in_c0_eni7_7_5(DELAY,155)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_in_aunroll_x_in_c0_eni7_7_5_delay_0 <= in_c0_eni7_7;
            redist5_sync_in_aunroll_x_in_c0_eni7_7_5_delay_1 <= redist5_sync_in_aunroll_x_in_c0_eni7_7_5_delay_0;
            redist5_sync_in_aunroll_x_in_c0_eni7_7_5_delay_2 <= redist5_sync_in_aunroll_x_in_c0_eni7_7_5_delay_1;
            redist5_sync_in_aunroll_x_in_c0_eni7_7_5_delay_3 <= redist5_sync_in_aunroll_x_in_c0_eni7_7_5_delay_2;
            redist5_sync_in_aunroll_x_in_c0_eni7_7_5_q <= redist5_sync_in_aunroll_x_in_c0_eni7_7_5_delay_3;
        end
    end

    // i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_element_extension_x(BITJOIN,79)@5
    assign i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_element_extension_x_q = {i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_c_i7_0gr_x_q, i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn603_i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn602_mux_x_q};

    // valid_fanout_reg32(REG,141)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg32_q <= redist6_sync_in_aunroll_x_in_i_valid_1_q;
        end
    end

    // valid_fanout_reg31(REG,140)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg31_q <= redist8_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x(FIFODELAY,80)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_stall = ~ (valid_fanout_reg32_q & redist10_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_valid = valid_fanout_reg31_q & redist12_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_data = i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_element_extension_x_q;
    assign i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_element_extension_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_adapt_scalar_trunc_sel_x(BITSELECT,82)@5
    assign i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_adapt_scalar_trunc_sel_x_b = i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_i_llvm_fpga_push_i1_notcmp75100_push21_cnn606_x_o_data[0:0];

    // i_llvm_fpga_fanout_i1_c0_ene1813_fanout_adaptor_cnn532(REG,18)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1813_fanout_adaptor_cnn532_q <= redist14_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_4_q;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn603_i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn602_mux_x(MUX,63)@5
    assign i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn603_i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn602_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1813_fanout_adaptor_cnn532_q;
    always @(i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn603_i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn602_mux_x_s or i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_adapt_scalar_trunc_sel_x_b or redist5_sync_in_aunroll_x_in_c0_eni7_7_5_q)
    begin
        unique case (i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn603_i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn602_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn603_i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn602_mux_x_q = i_llvm_fpga_push_i1_notcmp75100_push21_cnn605_adapt_scalar_trunc_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn603_i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn602_mux_x_q = redist5_sync_in_aunroll_x_in_c0_eni7_7_5_q;
            default : i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn603_i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn602_mux_x_q = 1'b0;
        endcase
    end

    // redist4_sync_in_aunroll_x_in_c0_eni7_6_5_inputreg0(DELAY,174)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_in_aunroll_x_in_c0_eni7_6_5_inputreg0_q <= in_c0_eni7_6;
        end
    end

    // redist4_sync_in_aunroll_x_in_c0_eni7_6_5(DELAY,154)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_in_aunroll_x_in_c0_eni7_6_5_delay_0 <= redist4_sync_in_aunroll_x_in_c0_eni7_6_5_inputreg0_q;
            redist4_sync_in_aunroll_x_in_c0_eni7_6_5_delay_1 <= redist4_sync_in_aunroll_x_in_c0_eni7_6_5_delay_0;
            redist4_sync_in_aunroll_x_in_c0_eni7_6_5_q <= redist4_sync_in_aunroll_x_in_c0_eni7_6_5_delay_1;
        end
    end

    // redist4_sync_in_aunroll_x_in_c0_eni7_6_5_outputreg0(DELAY,175)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_in_aunroll_x_in_c0_eni7_6_5_outputreg0_q <= redist4_sync_in_aunroll_x_in_c0_eni7_6_5_q;
        end
    end

    // valid_fanout_reg29(REG,138)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg29_q <= redist6_sync_in_aunroll_x_in_i_valid_1_q;
        end
    end

    // valid_fanout_reg28(REG,137)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= redist8_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x(FIFODELAY,95)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_stall = ~ (valid_fanout_reg29_q & redist10_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_valid = valid_fanout_reg28_q & redist12_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_data = i_llvm_fpga_pop_i64_mul8597_pop20_cnn598_i_llvm_fpga_pop_i64_mul8597_pop20_cnn597_mux_x_q;
    assign i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_valid[0];
    assign i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x (
        .i_valid(i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_mul8597_pop20_cnn598_i_llvm_fpga_pop_i64_mul8597_pop20_cnn597_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_mul8597_pop20_cnn598_i_llvm_fpga_pop_i64_mul8597_pop20_cnn597_mux_x(MUX,68)@5
    assign i_llvm_fpga_pop_i64_mul8597_pop20_cnn598_i_llvm_fpga_pop_i64_mul8597_pop20_cnn597_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1813_fanout_adaptor_cnn532_q;
    always @(i_llvm_fpga_pop_i64_mul8597_pop20_cnn598_i_llvm_fpga_pop_i64_mul8597_pop20_cnn597_mux_x_s or i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_o_data or redist4_sync_in_aunroll_x_in_c0_eni7_6_5_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_mul8597_pop20_cnn598_i_llvm_fpga_pop_i64_mul8597_pop20_cnn597_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_mul8597_pop20_cnn598_i_llvm_fpga_pop_i64_mul8597_pop20_cnn597_mux_x_q = i_llvm_fpga_push_i64_mul8597_push20_cnn600_i_llvm_fpga_push_i64_mul8597_push20_cnn601_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_mul8597_pop20_cnn598_i_llvm_fpga_pop_i64_mul8597_pop20_cnn597_mux_x_q = redist4_sync_in_aunroll_x_in_c0_eni7_6_5_outputreg0_q;
            default : i_llvm_fpga_pop_i64_mul8597_pop20_cnn598_i_llvm_fpga_pop_i64_mul8597_pop20_cnn597_mux_x_q = 64'b0;
        endcase
    end

    // redist3_sync_in_aunroll_x_in_c0_eni7_5_5_inputreg0(DELAY,172)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_c0_eni7_5_5_inputreg0_q <= in_c0_eni7_5;
        end
    end

    // redist3_sync_in_aunroll_x_in_c0_eni7_5_5(DELAY,153)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_c0_eni7_5_5_delay_0 <= redist3_sync_in_aunroll_x_in_c0_eni7_5_5_inputreg0_q;
            redist3_sync_in_aunroll_x_in_c0_eni7_5_5_delay_1 <= redist3_sync_in_aunroll_x_in_c0_eni7_5_5_delay_0;
            redist3_sync_in_aunroll_x_in_c0_eni7_5_5_q <= redist3_sync_in_aunroll_x_in_c0_eni7_5_5_delay_1;
        end
    end

    // redist3_sync_in_aunroll_x_in_c0_eni7_5_5_outputreg0(DELAY,173)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_c0_eni7_5_5_outputreg0_q <= redist3_sync_in_aunroll_x_in_c0_eni7_5_5_q;
        end
    end

    // valid_fanout_reg26(REG,135)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= redist6_sync_in_aunroll_x_in_i_valid_1_q;
        end
    end

    // valid_fanout_reg25(REG,134)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= redist8_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x(FIFODELAY,98)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_stall = ~ (valid_fanout_reg26_q & redist10_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_valid = valid_fanout_reg25_q & redist12_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_data = i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn593_i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn592_mux_x_q;
    assign i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_valid[0];
    assign i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x (
        .i_valid(i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn593_i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn592_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn593_i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn592_mux_x(MUX,69)@5
    assign i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn593_i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn592_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1813_fanout_adaptor_cnn532_q;
    always @(i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn593_i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn592_mux_x_s or i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_o_data or redist3_sync_in_aunroll_x_in_c0_eni7_5_5_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn593_i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn592_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn593_i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn592_mux_x_q = i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn595_i_llvm_fpga_push_i64_row_063_replace_phi94_push19_cnn596_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn593_i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn592_mux_x_q = redist3_sync_in_aunroll_x_in_c0_eni7_5_5_outputreg0_q;
            default : i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn593_i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn592_mux_x_q = 64'b0;
        endcase
    end

    // redist2_sync_in_aunroll_x_in_c0_eni7_4_5_inputreg0(DELAY,170)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_in_aunroll_x_in_c0_eni7_4_5_inputreg0_q <= in_c0_eni7_4;
        end
    end

    // redist2_sync_in_aunroll_x_in_c0_eni7_4_5(DELAY,152)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_in_aunroll_x_in_c0_eni7_4_5_delay_0 <= redist2_sync_in_aunroll_x_in_c0_eni7_4_5_inputreg0_q;
            redist2_sync_in_aunroll_x_in_c0_eni7_4_5_delay_1 <= redist2_sync_in_aunroll_x_in_c0_eni7_4_5_delay_0;
            redist2_sync_in_aunroll_x_in_c0_eni7_4_5_q <= redist2_sync_in_aunroll_x_in_c0_eni7_4_5_delay_1;
        end
    end

    // redist2_sync_in_aunroll_x_in_c0_eni7_4_5_outputreg0(DELAY,171)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_in_aunroll_x_in_c0_eni7_4_5_outputreg0_q <= redist2_sync_in_aunroll_x_in_c0_eni7_4_5_q;
        end
    end

    // valid_fanout_reg23(REG,132)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= redist6_sync_in_aunroll_x_in_i_valid_1_q;
        end
    end

    // valid_fanout_reg22(REG,131)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= redist8_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x(FIFODELAY,86)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_stall = ~ (valid_fanout_reg23_q & redist10_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_valid = valid_fanout_reg22_q & redist12_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_data = i_llvm_fpga_pop_i64_add3191_pop18_cnn588_i_llvm_fpga_pop_i64_add3191_pop18_cnn587_mux_x_q;
    assign i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_valid[0];
    assign i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x (
        .i_valid(i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_add3191_pop18_cnn588_i_llvm_fpga_pop_i64_add3191_pop18_cnn587_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_add3191_pop18_cnn588_i_llvm_fpga_pop_i64_add3191_pop18_cnn587_mux_x(MUX,65)@5
    assign i_llvm_fpga_pop_i64_add3191_pop18_cnn588_i_llvm_fpga_pop_i64_add3191_pop18_cnn587_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1813_fanout_adaptor_cnn532_q;
    always @(i_llvm_fpga_pop_i64_add3191_pop18_cnn588_i_llvm_fpga_pop_i64_add3191_pop18_cnn587_mux_x_s or i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_o_data or redist2_sync_in_aunroll_x_in_c0_eni7_4_5_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_add3191_pop18_cnn588_i_llvm_fpga_pop_i64_add3191_pop18_cnn587_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_add3191_pop18_cnn588_i_llvm_fpga_pop_i64_add3191_pop18_cnn587_mux_x_q = i_llvm_fpga_push_i64_add3191_push18_cnn590_i_llvm_fpga_push_i64_add3191_push18_cnn591_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_add3191_pop18_cnn588_i_llvm_fpga_pop_i64_add3191_pop18_cnn587_mux_x_q = redist2_sync_in_aunroll_x_in_c0_eni7_4_5_outputreg0_q;
            default : i_llvm_fpga_pop_i64_add3191_pop18_cnn588_i_llvm_fpga_pop_i64_add3191_pop18_cnn587_mux_x_q = 64'b0;
        endcase
    end

    // redist1_sync_in_aunroll_x_in_c0_eni7_3_5_inputreg0(DELAY,168)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_in_aunroll_x_in_c0_eni7_3_5_inputreg0_q <= in_c0_eni7_3;
        end
    end

    // redist1_sync_in_aunroll_x_in_c0_eni7_3_5(DELAY,151)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_in_aunroll_x_in_c0_eni7_3_5_delay_0 <= redist1_sync_in_aunroll_x_in_c0_eni7_3_5_inputreg0_q;
            redist1_sync_in_aunroll_x_in_c0_eni7_3_5_delay_1 <= redist1_sync_in_aunroll_x_in_c0_eni7_3_5_delay_0;
            redist1_sync_in_aunroll_x_in_c0_eni7_3_5_q <= redist1_sync_in_aunroll_x_in_c0_eni7_3_5_delay_1;
        end
    end

    // redist1_sync_in_aunroll_x_in_c0_eni7_3_5_outputreg0(DELAY,169)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_in_aunroll_x_in_c0_eni7_3_5_outputreg0_q <= redist1_sync_in_aunroll_x_in_c0_eni7_3_5_q;
        end
    end

    // valid_fanout_reg20(REG,129)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= redist6_sync_in_aunroll_x_in_i_valid_1_q;
        end
    end

    // valid_fanout_reg19(REG,128)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= redist8_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x(FIFODELAY,83)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_stall = ~ (valid_fanout_reg20_q & redist10_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_valid = valid_fanout_reg19_q & redist12_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_data = i_llvm_fpga_pop_i64_add1786_pop17_cnn583_i_llvm_fpga_pop_i64_add1786_pop17_cnn582_mux_x_q;
    assign i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_valid[0];
    assign i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x (
        .i_valid(i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_add1786_pop17_cnn583_i_llvm_fpga_pop_i64_add1786_pop17_cnn582_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_add1786_pop17_cnn583_i_llvm_fpga_pop_i64_add1786_pop17_cnn582_mux_x(MUX,64)@5
    assign i_llvm_fpga_pop_i64_add1786_pop17_cnn583_i_llvm_fpga_pop_i64_add1786_pop17_cnn582_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1813_fanout_adaptor_cnn532_q;
    always @(i_llvm_fpga_pop_i64_add1786_pop17_cnn583_i_llvm_fpga_pop_i64_add1786_pop17_cnn582_mux_x_s or i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_o_data or redist1_sync_in_aunroll_x_in_c0_eni7_3_5_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_add1786_pop17_cnn583_i_llvm_fpga_pop_i64_add1786_pop17_cnn582_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_add1786_pop17_cnn583_i_llvm_fpga_pop_i64_add1786_pop17_cnn582_mux_x_q = i_llvm_fpga_push_i64_add1786_push17_cnn585_i_llvm_fpga_push_i64_add1786_push17_cnn586_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_add1786_pop17_cnn583_i_llvm_fpga_pop_i64_add1786_pop17_cnn582_mux_x_q = redist1_sync_in_aunroll_x_in_c0_eni7_3_5_outputreg0_q;
            default : i_llvm_fpga_pop_i64_add1786_pop17_cnn583_i_llvm_fpga_pop_i64_add1786_pop17_cnn582_mux_x_q = 64'b0;
        endcase
    end

    // redist0_sync_in_aunroll_x_in_c0_eni7_2_5_inputreg0(DELAY,166)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_in_aunroll_x_in_c0_eni7_2_5_inputreg0_q <= in_c0_eni7_2;
        end
    end

    // redist0_sync_in_aunroll_x_in_c0_eni7_2_5(DELAY,150)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_in_aunroll_x_in_c0_eni7_2_5_delay_0 <= redist0_sync_in_aunroll_x_in_c0_eni7_2_5_inputreg0_q;
            redist0_sync_in_aunroll_x_in_c0_eni7_2_5_delay_1 <= redist0_sync_in_aunroll_x_in_c0_eni7_2_5_delay_0;
            redist0_sync_in_aunroll_x_in_c0_eni7_2_5_q <= redist0_sync_in_aunroll_x_in_c0_eni7_2_5_delay_1;
        end
    end

    // redist0_sync_in_aunroll_x_in_c0_eni7_2_5_outputreg0(DELAY,167)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_in_aunroll_x_in_c0_eni7_2_5_outputreg0_q <= redist0_sync_in_aunroll_x_in_c0_eni7_2_5_q;
        end
    end

    // valid_fanout_reg17(REG,126)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= redist6_sync_in_aunroll_x_in_i_valid_1_q;
        end
    end

    // valid_fanout_reg16(REG,125)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= redist8_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x(FIFODELAY,89)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_stall = ~ (valid_fanout_reg17_q & redist10_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_valid = valid_fanout_reg16_q & redist12_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_data = i_llvm_fpga_pop_i64_add80_pop16_cnn578_i_llvm_fpga_pop_i64_add80_pop16_cnn577_mux_x_q;
    assign i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_valid[0];
    assign i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x (
        .i_valid(i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_add80_pop16_cnn578_i_llvm_fpga_pop_i64_add80_pop16_cnn577_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_add80_pop16_cnn578_i_llvm_fpga_pop_i64_add80_pop16_cnn577_mux_x(MUX,66)@5
    assign i_llvm_fpga_pop_i64_add80_pop16_cnn578_i_llvm_fpga_pop_i64_add80_pop16_cnn577_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1813_fanout_adaptor_cnn532_q;
    always @(i_llvm_fpga_pop_i64_add80_pop16_cnn578_i_llvm_fpga_pop_i64_add80_pop16_cnn577_mux_x_s or i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_o_data or redist0_sync_in_aunroll_x_in_c0_eni7_2_5_outputreg0_q)
    begin
        unique case (i_llvm_fpga_pop_i64_add80_pop16_cnn578_i_llvm_fpga_pop_i64_add80_pop16_cnn577_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_add80_pop16_cnn578_i_llvm_fpga_pop_i64_add80_pop16_cnn577_mux_x_q = i_llvm_fpga_push_i64_add80_push16_cnn580_i_llvm_fpga_push_i64_add80_push16_cnn581_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_add80_pop16_cnn578_i_llvm_fpga_pop_i64_add80_pop16_cnn577_mux_x_q = redist0_sync_in_aunroll_x_in_c0_eni7_2_5_outputreg0_q;
            default : i_llvm_fpga_pop_i64_add80_pop16_cnn578_i_llvm_fpga_pop_i64_add80_pop16_cnn577_mux_x_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_fanout_i1_fanout_adaptor_cnn565(REG,19)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i1_fanout_adaptor_cnn565_q <= i_unnamed_cnn564_q;
        end
    end

    // i_notcmp71_cnn569(LOGICAL,26)@5
    assign i_notcmp71_cnn569_q = i_llvm_fpga_fanout_i1_fanout_adaptor_cnn565_q ^ VCC_q;

    // valid_fanout_reg7(REG,116)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= redist9_sync_in_aunroll_x_in_i_valid_4_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_coo_06745_cnn552(BLACKBOX,21)@5
    cnn_i_llvm_fpga_ffwd_dest_i64_coo_06745_553 thei_llvm_fpga_ffwd_dest_i64_coo_06745_cnn552 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i64_coo_06745_cnn552_out_dest_data_out_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_undef(CONSTANT,7)
    assign c_i64_undef_q = 64'b0000000000000000000000000000000000000000000000000000000000000000;

    // c_i64_1gr(CONSTANT,6)
    assign c_i64_1gr_q = 64'b0000000000000000000000000000000000000000000000000000000000000001;

    // i_add72_1_cnn558(ADD,11)@5
    assign i_add72_1_cnn558_a = {1'b0, i_col_060_replace_phi_cnn557_q};
    assign i_add72_1_cnn558_b = {1'b0, c_i64_1gr_q};
    assign i_add72_1_cnn558_o = $unsigned(i_add72_1_cnn558_a) + $unsigned(i_add72_1_cnn558_b);
    assign i_add72_1_cnn558_q = i_add72_1_cnn558_o[64:0];

    // bgTrunc_i_add72_1_cnn558_sel_x(BITSELECT,33)@5
    assign bgTrunc_i_add72_1_cnn558_sel_x_b = i_add72_1_cnn558_q[63:0];

    // valid_fanout_reg11(REG,120)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= redist6_sync_in_aunroll_x_in_i_valid_1_q;
        end
    end

    // valid_fanout_reg10(REG,119)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= redist8_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x(FIFODELAY,92)@2 + 1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@5
    assign i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_stall = ~ (valid_fanout_reg11_q & redist10_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_1_q);
    assign i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_valid = valid_fanout_reg10_q & redist12_i_llvm_fpga_push_i1_cnn_b5_exited6_cnn544_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_data = bgTrunc_i_add72_1_cnn558_sel_x_b;
    assign i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_valid[0];
    assign i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x (
        .i_valid(i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_add72_1_cnn558_sel_x_b),
        .o_data(i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_col_060_pop15_cnn556_i_llvm_fpga_pop_i64_col_060_pop15_cnn555_mux_x(MUX,67)@5
    assign i_llvm_fpga_pop_i64_col_060_pop15_cnn556_i_llvm_fpga_pop_i64_col_060_pop15_cnn555_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1813_fanout_adaptor_cnn532_q;
    always @(i_llvm_fpga_pop_i64_col_060_pop15_cnn556_i_llvm_fpga_pop_i64_col_060_pop15_cnn555_mux_x_s or i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_o_data or c_i64_undef_q)
    begin
        unique case (i_llvm_fpga_pop_i64_col_060_pop15_cnn556_i_llvm_fpga_pop_i64_col_060_pop15_cnn555_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_col_060_pop15_cnn556_i_llvm_fpga_pop_i64_col_060_pop15_cnn555_mux_x_q = i_llvm_fpga_push_i64_col_060_push15_cnn567_i_llvm_fpga_push_i64_col_060_push15_cnn568_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_col_060_pop15_cnn556_i_llvm_fpga_pop_i64_col_060_pop15_cnn555_mux_x_q = c_i64_undef_q;
            default : i_llvm_fpga_pop_i64_col_060_pop15_cnn556_i_llvm_fpga_pop_i64_col_060_pop15_cnn555_mux_x_q = 64'b0;
        endcase
    end

    // i_col_060_replace_phi_cnn557(MUX,14)@5
    assign i_col_060_replace_phi_cnn557_s = redist15_i_llvm_fpga_forked_cnn_b5_forked_cnn533_out_buffer_out_5_q;
    always @(i_col_060_replace_phi_cnn557_s or i_llvm_fpga_pop_i64_col_060_pop15_cnn556_i_llvm_fpga_pop_i64_col_060_pop15_cnn555_mux_x_q or i_llvm_fpga_ffwd_dest_i64_coo_06745_cnn552_out_dest_data_out_15_0)
    begin
        unique case (i_col_060_replace_phi_cnn557_s)
            1'b0 : i_col_060_replace_phi_cnn557_q = i_llvm_fpga_pop_i64_col_060_pop15_cnn556_i_llvm_fpga_pop_i64_col_060_pop15_cnn555_mux_x_q;
            1'b1 : i_col_060_replace_phi_cnn557_q = i_llvm_fpga_ffwd_dest_i64_coo_06745_cnn552_out_dest_data_out_15_0;
            default : i_col_060_replace_phi_cnn557_q = 64'b0;
        endcase
    end

    // sync_out_aunroll_x(GPOUT,108)@5
    assign out_c0_exi9_0 = GND_q;
    assign out_c0_exi9_1 = i_col_060_replace_phi_cnn557_q;
    assign out_c0_exi9_2 = redist13_i_unnamed_cnn564_q_1_q;
    assign out_c0_exi9_3 = i_notcmp71_cnn569_q;
    assign out_c0_exi9_4 = i_llvm_fpga_pop_i64_add80_pop16_cnn578_i_llvm_fpga_pop_i64_add80_pop16_cnn577_mux_x_q;
    assign out_c0_exi9_5 = i_llvm_fpga_pop_i64_add1786_pop17_cnn583_i_llvm_fpga_pop_i64_add1786_pop17_cnn582_mux_x_q;
    assign out_c0_exi9_6 = i_llvm_fpga_pop_i64_add3191_pop18_cnn588_i_llvm_fpga_pop_i64_add3191_pop18_cnn587_mux_x_q;
    assign out_c0_exi9_7 = i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn593_i_llvm_fpga_pop_i64_row_063_replace_phi94_pop19_cnn592_mux_x_q;
    assign out_c0_exi9_8 = i_llvm_fpga_pop_i64_mul8597_pop20_cnn598_i_llvm_fpga_pop_i64_mul8597_pop20_cnn597_mux_x_q;
    assign out_c0_exi9_9 = i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn603_i_llvm_fpga_pop_i1_notcmp75100_pop21_cnn602_mux_x_q;
    assign out_cnn_B5_exited = i_cnn_b5_exited_cnn538_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
