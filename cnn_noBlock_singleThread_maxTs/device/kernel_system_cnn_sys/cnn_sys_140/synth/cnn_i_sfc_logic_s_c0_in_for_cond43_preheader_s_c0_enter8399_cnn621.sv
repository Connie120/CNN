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

// SystemVerilog created from cnn_i_sfc_logic_s_c0_in_for_cond43_preheader_s_c0_enter8399_cnn621
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_logic_s_c0_in_for_cond43_preheader_s_c0_enter8399_cnn621 (
    input wire [63:0] in_intel_reserved_ffwd_22_0,
    output wire [0:0] out_exiting_valid_out,
    input wire [64:0] in_intel_reserved_ffwd_24_0,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_26_0,
    input wire [63:0] in_weights,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni9_0,
    input wire [0:0] in_c0_eni9_1,
    input wire [63:0] in_c0_eni9_2,
    input wire [63:0] in_c0_eni9_3,
    input wire [63:0] in_c0_eni9_4,
    input wire [63:0] in_c0_eni9_5,
    input wire [63:0] in_c0_eni9_6,
    input wire [0:0] in_c0_eni9_7,
    input wire [63:0] in_c0_eni9_8,
    input wire [0:0] in_c0_eni9_9,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exi12_0,
    output wire [63:0] out_c0_exi12_1,
    output wire [63:0] out_c0_exi12_2,
    output wire [0:0] out_c0_exi12_3,
    output wire [0:0] out_c0_exi12_4,
    output wire [63:0] out_c0_exi12_5,
    output wire [63:0] out_c0_exi12_6,
    output wire [63:0] out_c0_exi12_7,
    output wire [63:0] out_c0_exi12_8,
    output wire [63:0] out_c0_exi12_9,
    output wire [0:0] out_c0_exi12_10,
    output wire [63:0] out_c0_exi12_11,
    output wire [0:0] out_c0_exi12_12,
    output wire [0:0] out_cnn_B6_exited,
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
    wire [9:0] i_add_ptr_cnn656_vt_const_9_q;
    wire [63:0] i_add_ptr_cnn656_vt_join_q;
    wire [53:0] i_add_ptr_cnn656_vt_select_63_b;
    wire [0:0] i_cnn_b6_exited_cnn631_q;
    wire [0:0] i_cnn_b6_exiting_cnn635_q;
    wire [0:0] i_fpgaindvars_iv1678_replace_phi_cnn644_s;
    reg [64:0] i_fpgaindvars_iv1678_replace_phi_cnn644_q;
    wire [65:0] i_fpgaindvars_iv_next1679_cnn670_a;
    wire [65:0] i_fpgaindvars_iv_next1679_cnn670_b;
    logic [65:0] i_fpgaindvars_iv_next1679_cnn670_o;
    wire [65:0] i_fpgaindvars_iv_next1679_cnn670_q;
    wire [64:0] i_inc89_cnn674_a;
    wire [64:0] i_inc89_cnn674_b;
    logic [64:0] i_inc89_cnn674_o;
    wire [64:0] i_inc89_cnn674_q;
    (* preserve_syn_only *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor938_cnn624_q;
    (* preserve_syn_only *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor_cnn625_q;
    (* preserve_syn_only *) reg [0:0] i_llvm_fpga_fanout_i1_fanout_adaptor939_cnn665_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn107_cnn660_out_dest_data_out_26_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_too_06551_cnn645_out_dest_data_out_22_0;
    wire [64:0] i_llvm_fpga_ffwd_dest_i65_unnamed_cnn106_cnn639_out_dest_data_out_24_0;
    wire [0:0] i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_cnn632_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_cnn632_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_cnn632_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_cnn632_out_pipeline_valid_out;
    wire [7:0] i_llvm_fpga_push_i1_notexitcond69_cnn667_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond69_cnn667_out_feedback_valid_out_4;
    wire [63:0] i_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_cnn653_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_cnn653_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_cnn653_vt_select_63_b;
    wire [10:0] i_mul56_cnn651_vt_const_10_q;
    wire [63:0] i_mul56_cnn651_vt_join_q;
    wire [52:0] i_mul56_cnn651_vt_select_63_b;
    wire [0:0] i_notcmp67_cnn666_q;
    wire [0:0] i_to_058_replace_phi_cnn650_s;
    reg [63:0] i_to_058_replace_phi_cnn650_q;
    wire [0:0] i_unnamed_cnn663_q;
    wire [64:0] bgTrunc_i_fpgaindvars_iv_next1679_cnn670_sel_x_b;
    wire [63:0] bgTrunc_i_inc89_cnn674_sel_x_b;
    wire [64:0] i_add_ptr_cnn657_add_x_a;
    wire [64:0] i_add_ptr_cnn657_add_x_b;
    logic [64:0] i_add_ptr_cnn657_add_x_o;
    wire [64:0] i_add_ptr_cnn657_add_x_q;
    wire [127:0] i_add_ptr_cnn657_mult_extender_x_q;
    wire [60:0] i_add_ptr_cnn657_mult_multconst_x_q;
    wire [63:0] i_add_ptr_cnn657_trunc_sel_x_b;
    wire [63:0] i_add_ptr_cnn657_dupName_0_trunc_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn630_i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn629_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn630_i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn629_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_to_058_pop23_cnn649_i_llvm_fpga_pop_i64_to_058_pop23_cnn648_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_to_058_pop23_cnn649_i_llvm_fpga_pop_i64_to_058_pop23_cnn648_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn643_i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn642_mux_x_s;
    reg [64:0] i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn643_i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn642_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_c_i7_0gr_x_q;
    wire [7:0] i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_element_extension_x_q;
    wire [0:0] i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_valid;
    wire i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_stall;
    wire i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_adapt_scalar_trunc_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_element_extension_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_adapt_scalar_trunc_sel_x_b;
    wire [7:0] i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_element_extension_x_q;
    wire [0:0] i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_valid;
    wire i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_stall;
    wire i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_adapt_scalar_trunc_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_valid;
    wire i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_stall;
    wire i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_valid;
    wire i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_stall;
    wire i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_valid;
    wire i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_stall;
    wire i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_valid;
    wire i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_stall;
    wire i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_valid;
    wire i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_stall;
    wire i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_valid;
    wire i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_stall;
    wire i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_valid;
    wire i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_stall;
    wire i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_o_data;
    wire [62:0] i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_c_i63_0gr_x_q;
    wire [127:0] i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_element_extension_x_q;
    wire [0:0] i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_valid;
    wire i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_stall;
    wire i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_stall_bitsignaltemp;
    wire [127:0] i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_data;
    wire [127:0] i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_o_data;
    wire [64:0] i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_adapt_scalar_trunc_sel_x_b;
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
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg21_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg24_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg26_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg27_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg29_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg30_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg32_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg33_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg35_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg36_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg38_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg39_q;
    wire [0:0] i_exitcond1680_cnn658_cmp_nsign_q;
    wire [10:0] i_add_ptr_cnn657_mult_x_bjA2_q;
    wire [18:0] i_add_ptr_cnn657_mult_x_bjA7_q;
    wire [18:0] i_add_ptr_cnn657_mult_x_bjA12_q;
    wire [18:0] i_add_ptr_cnn657_mult_x_bjA17_q;
    wire [40:0] i_add_ptr_cnn657_mult_x_sums_align_1_q;
    wire [40:0] i_add_ptr_cnn657_mult_x_sums_align_1_qint;
    wire [58:0] i_add_ptr_cnn657_mult_x_sums_align_3_q;
    wire [58:0] i_add_ptr_cnn657_mult_x_sums_align_3_qint;
    wire [68:0] i_add_ptr_cnn657_mult_x_sums_align_5_q;
    wire [68:0] i_add_ptr_cnn657_mult_x_sums_align_5_qint;
    wire [41:0] i_add_ptr_cnn657_mult_x_sums_result_add_0_0_a;
    wire [41:0] i_add_ptr_cnn657_mult_x_sums_result_add_0_0_b;
    logic [41:0] i_add_ptr_cnn657_mult_x_sums_result_add_0_0_o;
    wire [41:0] i_add_ptr_cnn657_mult_x_sums_result_add_0_0_q;
    wire [69:0] i_add_ptr_cnn657_mult_x_sums_result_add_0_1_a;
    wire [69:0] i_add_ptr_cnn657_mult_x_sums_result_add_0_1_b;
    logic [69:0] i_add_ptr_cnn657_mult_x_sums_result_add_0_1_o;
    wire [69:0] i_add_ptr_cnn657_mult_x_sums_result_add_0_1_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid236_i_mul56_cnn652_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid236_i_mul56_cnn652_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid237_i_mul56_cnn652_shift_x_q;
    wire [0:0] leftShiftStage0_uid239_i_mul56_cnn652_shift_x_s;
    reg [63:0] leftShiftStage0_uid239_i_mul56_cnn652_shift_x_q;
    wire [1:0] leftShiftStage1Idx1Pad2_uid240_i_mul56_cnn652_shift_x_q;
    wire [61:0] leftShiftStage1Idx1Rng2_uid241_i_mul56_cnn652_shift_x_in;
    wire [61:0] leftShiftStage1Idx1Rng2_uid241_i_mul56_cnn652_shift_x_b;
    wire [63:0] leftShiftStage1Idx1_uid242_i_mul56_cnn652_shift_x_q;
    wire [0:0] leftShiftStage1_uid244_i_mul56_cnn652_shift_x_s;
    reg [63:0] leftShiftStage1_uid244_i_mul56_cnn652_shift_x_q;
    wire [7:0] leftShiftStage2Idx1Pad8_uid245_i_mul56_cnn652_shift_x_q;
    wire [55:0] leftShiftStage2Idx1Rng8_uid246_i_mul56_cnn652_shift_x_in;
    wire [55:0] leftShiftStage2Idx1Rng8_uid246_i_mul56_cnn652_shift_x_b;
    wire [63:0] leftShiftStage2Idx1_uid247_i_mul56_cnn652_shift_x_q;
    wire [0:0] leftShiftStage2_uid249_i_mul56_cnn652_shift_x_s;
    reg [63:0] leftShiftStage2_uid249_i_mul56_cnn652_shift_x_q;
    wire [12:0] i_add_ptr_cnn657_mult_x_im0_shift0_q;
    wire [12:0] i_add_ptr_cnn657_mult_x_im0_shift0_qint;
    wire [20:0] i_add_ptr_cnn657_mult_x_im5_shift0_q;
    wire [20:0] i_add_ptr_cnn657_mult_x_im5_shift0_qint;
    wire [20:0] i_add_ptr_cnn657_mult_x_im10_shift0_q;
    wire [20:0] i_add_ptr_cnn657_mult_x_im10_shift0_qint;
    wire [20:0] i_add_ptr_cnn657_mult_x_im15_shift0_q;
    wire [20:0] i_add_ptr_cnn657_mult_x_im15_shift0_qint;
    wire [70:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_a;
    wire [70:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_b;
    logic [70:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_o;
    wire [0:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_c;
    wire [69:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_q;
    wire [2:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_a;
    wire [2:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_b;
    logic [2:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_o;
    wire [0:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_cin;
    wire [0:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_q;
    wire [70:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitJoin_for_q_q;
    wire [0:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b;
    wire [69:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [0:0] i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b;
    wire [9:0] i_add_ptr_cnn657_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_add_ptr_cnn657_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_add_ptr_cnn657_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_add_ptr_cnn657_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q;
    reg [0:0] redist1_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q;
    reg [69:0] redist2_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_q_1_q;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni9_2_4_q;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni9_2_4_delay_0;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni9_2_4_delay_1;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni9_3_4_q;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni9_3_4_delay_0;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni9_3_4_delay_1;
    reg [63:0] redist5_sync_in_aunroll_x_in_c0_eni9_4_4_q;
    reg [63:0] redist5_sync_in_aunroll_x_in_c0_eni9_4_4_delay_0;
    reg [63:0] redist5_sync_in_aunroll_x_in_c0_eni9_4_4_delay_1;
    reg [63:0] redist6_sync_in_aunroll_x_in_c0_eni9_5_4_q;
    reg [63:0] redist6_sync_in_aunroll_x_in_c0_eni9_5_4_delay_0;
    reg [63:0] redist6_sync_in_aunroll_x_in_c0_eni9_5_4_delay_1;
    reg [63:0] redist7_sync_in_aunroll_x_in_c0_eni9_6_4_q;
    reg [63:0] redist7_sync_in_aunroll_x_in_c0_eni9_6_4_delay_0;
    reg [63:0] redist7_sync_in_aunroll_x_in_c0_eni9_6_4_delay_1;
    reg [0:0] redist8_sync_in_aunroll_x_in_c0_eni9_7_4_q;
    reg [0:0] redist8_sync_in_aunroll_x_in_c0_eni9_7_4_delay_0;
    reg [0:0] redist8_sync_in_aunroll_x_in_c0_eni9_7_4_delay_1;
    reg [0:0] redist8_sync_in_aunroll_x_in_c0_eni9_7_4_delay_2;
    reg [63:0] redist9_sync_in_aunroll_x_in_c0_eni9_8_4_q;
    reg [63:0] redist9_sync_in_aunroll_x_in_c0_eni9_8_4_delay_0;
    reg [63:0] redist9_sync_in_aunroll_x_in_c0_eni9_8_4_delay_1;
    reg [0:0] redist10_sync_in_aunroll_x_in_c0_eni9_9_4_q;
    reg [0:0] redist10_sync_in_aunroll_x_in_c0_eni9_9_4_delay_0;
    reg [0:0] redist10_sync_in_aunroll_x_in_c0_eni9_9_4_delay_1;
    reg [0:0] redist10_sync_in_aunroll_x_in_c0_eni9_9_4_delay_2;
    reg [0:0] redist11_sync_in_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist11_sync_in_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist12_sync_in_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist13_sync_in_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist14_sync_in_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist15_sync_in_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist16_sync_in_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist17_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_2_q;
    reg [0:0] redist17_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_2_delay_0;
    reg [0:0] redist18_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_3_q;
    reg [0:0] redist19_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_4_q;
    reg [0:0] redist20_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_5_q;
    reg [0:0] redist21_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_6_q;
    reg [63:0] redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4_q;
    reg [63:0] redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4_delay_0;
    reg [63:0] redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4_delay_1;
    reg [63:0] redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4_q;
    reg [63:0] redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4_delay_0;
    reg [63:0] redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4_delay_1;
    reg [63:0] redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4_q;
    reg [63:0] redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4_delay_0;
    reg [63:0] redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4_delay_1;
    reg [63:0] redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4_q;
    reg [63:0] redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4_delay_0;
    reg [63:0] redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4_delay_1;
    reg [63:0] redist26_i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q_4_q;
    reg [63:0] redist26_i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q_4_delay_0;
    reg [63:0] redist26_i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q_4_delay_1;
    reg [63:0] redist27_i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q_4_q;
    reg [63:0] redist27_i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q_4_delay_0;
    reg [63:0] redist27_i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q_4_delay_1;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q_4_q;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q_4_delay_0;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q_4_delay_1;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q_4_q;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q_4_delay_0;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q_4_delay_1;
    reg [0:0] redist30_i_unnamed_cnn663_q_1_q;
    reg [63:0] redist31_i_to_058_replace_phi_cnn650_q_4_q;
    reg [63:0] redist31_i_to_058_replace_phi_cnn650_q_4_delay_0;
    reg [63:0] redist31_i_to_058_replace_phi_cnn650_q_4_delay_1;
    reg [0:0] redist32_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_3_q;
    reg [0:0] redist32_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_3_delay_0;
    reg [0:0] redist32_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_3_delay_1;
    reg [0:0] redist33_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_4_q;
    reg [0:0] redist34_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_7_q;
    reg [0:0] redist34_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_7_delay_0;
    reg [0:0] redist34_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_7_delay_1;
    reg [0:0] redist35_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_8_q;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni9_2_4_inputreg0_q;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni9_3_4_inputreg0_q;
    reg [63:0] redist5_sync_in_aunroll_x_in_c0_eni9_4_4_inputreg0_q;
    reg [63:0] redist6_sync_in_aunroll_x_in_c0_eni9_5_4_inputreg0_q;
    reg [63:0] redist7_sync_in_aunroll_x_in_c0_eni9_6_4_inputreg0_q;
    reg [63:0] redist9_sync_in_aunroll_x_in_c0_eni9_8_4_inputreg0_q;
    reg [63:0] redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4_inputreg0_q;
    reg [63:0] redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4_inputreg0_q;
    reg [63:0] redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4_inputreg0_q;
    reg [63:0] redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4_inputreg0_q;


    // redist11_sync_in_aunroll_x_in_i_valid_2(DELAY,313)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist11_sync_in_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist11_sync_in_aunroll_x_in_i_valid_2_delay_0 <= in_i_valid;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_sync_in_aunroll_x_in_i_valid_2_q <= redist11_sync_in_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist12_sync_in_aunroll_x_in_i_valid_3(DELAY,314)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist12_sync_in_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist12_sync_in_aunroll_x_in_i_valid_3_q <= redist11_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // redist13_sync_in_aunroll_x_in_i_valid_4(DELAY,315)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_sync_in_aunroll_x_in_i_valid_4_q <= redist12_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // redist14_sync_in_aunroll_x_in_i_valid_5(DELAY,316)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist14_sync_in_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist14_sync_in_aunroll_x_in_i_valid_5_q <= redist13_sync_in_aunroll_x_in_i_valid_4_q;
        end
    end

    // redist15_sync_in_aunroll_x_in_i_valid_6(DELAY,317)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_sync_in_aunroll_x_in_i_valid_6_q <= redist14_sync_in_aunroll_x_in_i_valid_5_q;
        end
    end

    // redist16_sync_in_aunroll_x_in_i_valid_7(DELAY,318)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist16_sync_in_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist16_sync_in_aunroll_x_in_i_valid_7_q <= redist15_sync_in_aunroll_x_in_i_valid_6_q;
        end
    end

    // valid_fanout_reg2(REG,154)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= redist16_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // valid_fanout_reg11(REG,163)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= redist16_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // valid_fanout_reg5(REG,157)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= redist15_sync_in_aunroll_x_in_i_valid_6_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i65_unnamed_cnn106_cnn639(BLACKBOX,26)@7
    cnn_i_llvm_fpga_ffwd_dest_i65_unnamed_106_cnn640 thei_llvm_fpga_ffwd_dest_i65_unnamed_cnn106_cnn639 (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_i65_unnamed_cnn106_cnn639_out_dest_data_out_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i65_undef(CONSTANT,11)
    assign c_i65_undef_q = 65'b00000000000000000000000000000000000000000000000000000000000000000;

    // i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_c_i63_0gr_x(CONSTANT,141)
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_c_i63_0gr_x_q = 63'b000000000000000000000000000000000000000000000000000000000000000;

    // c_i65_1gr(CONSTANT,10)
    assign c_i65_1gr_q = 65'b11111111111111111111111111111111111111111111111111111111111111111;

    // i_fpgaindvars_iv_next1679_cnn670(ADD,19)@7
    assign i_fpgaindvars_iv_next1679_cnn670_a = {1'b0, i_fpgaindvars_iv1678_replace_phi_cnn644_q};
    assign i_fpgaindvars_iv_next1679_cnn670_b = {1'b0, c_i65_1gr_q};
    assign i_fpgaindvars_iv_next1679_cnn670_o = $unsigned(i_fpgaindvars_iv_next1679_cnn670_a) + $unsigned(i_fpgaindvars_iv_next1679_cnn670_b);
    assign i_fpgaindvars_iv_next1679_cnn670_q = i_fpgaindvars_iv_next1679_cnn670_o[65:0];

    // bgTrunc_i_fpgaindvars_iv_next1679_cnn670_sel_x(BITSELECT,45)@7
    assign bgTrunc_i_fpgaindvars_iv_next1679_cnn670_sel_x_b = i_fpgaindvars_iv_next1679_cnn670_q[64:0];

    // i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_element_extension_x(BITJOIN,142)@7
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_element_extension_x_q = {i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_c_i63_0gr_x_q, bgTrunc_i_fpgaindvars_iv_next1679_cnn670_sel_x_b};

    // i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x(LOGICAL,105)@1
    assign i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q = ~ (GND_q);

    // redist17_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_2(DELAY,319)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_2_delay_0 <= i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q;
            redist17_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_2_q <= redist17_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_2_delay_0;
        end
    end

    // redist18_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_3(DELAY,320)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_3_q <= redist17_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_2_q;
        end
    end

    // valid_fanout_reg13(REG,165)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= redist12_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // redist19_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_4(DELAY,321)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_4_q <= redist18_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_3_q;
        end
    end

    // redist20_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_5(DELAY,322)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_5_q <= redist19_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_4_q;
        end
    end

    // valid_fanout_reg12(REG,164)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= redist14_sync_in_aunroll_x_in_i_valid_5_q;
        end
    end

    // i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x(FIFODELAY,143)@4 + 1
    // in i_valid@6
    // in i_write_pred@6
    // in i_data@7
    // out o_data@7
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_stall = ~ (valid_fanout_reg13_q & redist18_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_3_q);
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_valid = valid_fanout_reg12_q & redist20_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_5_q;
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_data = i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_element_extension_x_q;
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_valid[0];
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x (
        .i_valid(i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_element_extension_x_q),
        .o_data(i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_adapt_scalar_trunc_sel_x(BITSELECT,145)@7
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_adapt_scalar_trunc_sel_x_b = i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn673_x_o_data[64:0];

    // i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn643_i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn642_mux_x(MUX,100)@7
    assign i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn643_i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn642_mux_x_s = redist34_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_7_q;
    always @(i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn643_i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn642_mux_x_s or i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_adapt_scalar_trunc_sel_x_b or c_i65_undef_q)
    begin
        unique case (i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn643_i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn642_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn643_i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn642_mux_x_q = i_llvm_fpga_push_i65_fpgaindvars_iv1678_push22_cnn672_adapt_scalar_trunc_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn643_i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn642_mux_x_q = c_i65_undef_q;
            default : i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn643_i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn642_mux_x_q = 65'b0;
        endcase
    end

    // i_llvm_fpga_forked_cnn_b6_forked_cnn626(BLACKBOX,27)@0
    // in in_stall_in@20000000
    cnn_i_llvm_fpga_forked_b6_forked_cnn627 thei_llvm_fpga_forked_cnn_b6_forked_cnn626 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_3(DELAY,334)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist32_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_3_delay_0 <= i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out;
            redist32_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_3_delay_1 <= redist32_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_3_delay_0;
            redist32_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_3_q <= redist32_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_3_delay_1;
        end
    end

    // redist33_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_4(DELAY,335)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist33_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_4_q <= redist32_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_3_q;
        end
    end

    // redist34_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_7(DELAY,336)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist34_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_7_delay_0 <= redist33_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_4_q;
            redist34_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_7_delay_1 <= redist34_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_7_delay_0;
            redist34_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_7_q <= redist34_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_7_delay_1;
        end
    end

    // i_fpgaindvars_iv1678_replace_phi_cnn644(MUX,18)@7
    assign i_fpgaindvars_iv1678_replace_phi_cnn644_s = redist34_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_7_q;
    always @(i_fpgaindvars_iv1678_replace_phi_cnn644_s or i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn643_i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn642_mux_x_q or i_llvm_fpga_ffwd_dest_i65_unnamed_cnn106_cnn639_out_dest_data_out_24_0)
    begin
        unique case (i_fpgaindvars_iv1678_replace_phi_cnn644_s)
            1'b0 : i_fpgaindvars_iv1678_replace_phi_cnn644_q = i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn643_i_llvm_fpga_pop_i65_fpgaindvars_iv1678_pop22_cnn642_mux_x_q;
            1'b1 : i_fpgaindvars_iv1678_replace_phi_cnn644_q = i_llvm_fpga_ffwd_dest_i65_unnamed_cnn106_cnn639_out_dest_data_out_24_0;
            default : i_fpgaindvars_iv1678_replace_phi_cnn644_q = 65'b0;
        endcase
    end

    // i_exitcond1680_cnn658_cmp_nsign(LOGICAL,196)@7
    assign i_exitcond1680_cnn658_cmp_nsign_q = ~ (i_fpgaindvars_iv1678_replace_phi_cnn644_q[64:64]);

    // valid_fanout_reg10(REG,162)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= redist15_sync_in_aunroll_x_in_i_valid_6_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn107_cnn660(BLACKBOX,24)@7
    cnn_i_llvm_fpga_ffwd_dest_i1_unnamed_107_cnn661 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn107_cnn660 (
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_26_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn107_cnn660_out_dest_data_out_26_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_cnn663(LOGICAL,39)@7
    assign i_unnamed_cnn663_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn107_cnn660_out_dest_data_out_26_0 & i_exitcond1680_cnn658_cmp_nsign_q;

    // redist30_i_unnamed_cnn663_q_1(DELAY,332)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist30_i_unnamed_cnn663_q_1_q <= i_unnamed_cnn663_q;
        end
    end

    // i_llvm_fpga_push_i1_notexitcond69_cnn667(BLACKBOX,29)@8
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    cnn_i_llvm_fpga_push_i1_notexitcond69_668 thei_llvm_fpga_push_i1_notexitcond69_cnn667 (
        .in_data_in(redist30_i_unnamed_cnn663_q_1_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going68_cnn632_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond69_cnn667_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond69_cnn667_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_pipeline_keep_going68_cnn632(BLACKBOX,28)@8
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_i_llvm_fpga_pipeline_keep_going68_633 thei_llvm_fpga_pipeline_keep_going68_cnn632 (
        .in_data_in(VCC_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond69_cnn667_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond69_cnn667_out_feedback_valid_out_4),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going68_cnn632_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going68_cnn632_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going68_cnn632_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going68_cnn632_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,42)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going68_cnn632_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,49)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going68_cnn632_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,152)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist16_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_c_i7_0gr_x(CONSTANT,102)
    assign i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_c_i7_0gr_x_q = 7'b0000000;

    // i_cnn_b6_exiting_cnn635(LOGICAL,16)@8
    assign i_cnn_b6_exiting_cnn635_q = i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn630_i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn629_mux_x_q & i_llvm_fpga_pipeline_keep_going68_cnn632_out_data_out;

    // i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_element_extension_x(BITJOIN,103)@8
    assign i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_element_extension_x_q = {i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_c_i7_0gr_x_q, i_cnn_b6_exiting_cnn635_q};

    // valid_fanout_reg4(REG,156)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= redist13_sync_in_aunroll_x_in_i_valid_4_q;
        end
    end

    // redist21_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_6(DELAY,323)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_6_q <= redist20_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_5_q;
        end
    end

    // valid_fanout_reg3(REG,155)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= redist15_sync_in_aunroll_x_in_i_valid_6_q;
        end
    end

    // i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x(FIFODELAY,104)@5 + 1
    // in i_valid@7
    // in i_write_pred@7
    // in i_data@8
    // out o_data@8
    assign i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_stall = ~ (valid_fanout_reg4_q & redist19_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_4_q);
    assign i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_valid = valid_fanout_reg3_q & redist21_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_6_q;
    assign i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_data = i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_element_extension_x_q;
    assign i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_valid[0];
    assign i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x (
        .i_valid(i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_element_extension_x_q),
        .o_data(i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_adapt_scalar_trunc_sel_x(BITSELECT,106)@8
    assign i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_adapt_scalar_trunc_sel_x_b = i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn638_x_o_data[0:0];

    // redist35_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_8(DELAY,337)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist35_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_8_q <= redist34_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_7_q;
        end
    end

    // i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn630_i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn629_mux_x(MUX,90)@8
    assign i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn630_i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn629_mux_x_s = redist35_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_8_q;
    always @(i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn630_i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn629_mux_x_s or i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_adapt_scalar_trunc_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn630_i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn629_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn630_i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn629_mux_x_q = i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_adapt_scalar_trunc_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn630_i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn629_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn630_i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn629_mux_x_q = 1'b0;
        endcase
    end

    // i_cnn_b6_exited_cnn631(LOGICAL,15)@8
    assign i_cnn_b6_exited_cnn631_q = i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn630_i_llvm_fpga_pop_coalesce_i1_cnn_b6_not_exited_cnn629_mux_x_q ^ VCC_q;

    // redist10_sync_in_aunroll_x_in_c0_eni9_9_4(DELAY,312)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_in_aunroll_x_in_c0_eni9_9_4_delay_0 <= in_c0_eni9_9;
            redist10_sync_in_aunroll_x_in_c0_eni9_9_4_delay_1 <= redist10_sync_in_aunroll_x_in_c0_eni9_9_4_delay_0;
            redist10_sync_in_aunroll_x_in_c0_eni9_9_4_delay_2 <= redist10_sync_in_aunroll_x_in_c0_eni9_9_4_delay_1;
            redist10_sync_in_aunroll_x_in_c0_eni9_9_4_q <= redist10_sync_in_aunroll_x_in_c0_eni9_9_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_element_extension_x(BITJOIN,109)@5
    assign i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_element_extension_x_q = {i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_c_i7_0gr_x_q, i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q};

    // valid_fanout_reg39(REG,191)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg39_q <= in_i_valid;
        end
    end

    // valid_fanout_reg38(REG,190)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg38_q <= redist12_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x(FIFODELAY,110)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_stall = ~ (valid_fanout_reg39_q & i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_valid = valid_fanout_reg38_q & redist18_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_data = i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_element_extension_x_q;
    assign i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("zl"),
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
    ) thei_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_element_extension_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_adapt_scalar_trunc_sel_x(BITSELECT,112)@4
    assign i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_adapt_scalar_trunc_sel_x_b = i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_i_llvm_fpga_push_i1_notcmp71105_push31_cnn717_x_o_data[0:0];

    // i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor938_cnn624(REG,21)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor938_cnn624_q <= redist32_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_3_q;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x(MUX,91)@4 + 1
    assign i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor938_cnn624_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q <= i_llvm_fpga_push_i1_notcmp71105_push31_cnn716_adapt_scalar_trunc_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q <= redist10_sync_in_aunroll_x_in_c0_eni9_9_4_q;
                default : i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist29_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q_4(DELAY,331)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist29_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q_4_delay_0 <= i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q;
            redist29_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q_4_delay_1 <= redist29_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q_4_delay_0;
            redist29_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q_4_q <= redist29_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q_4_delay_1;
        end
    end

    // redist9_sync_in_aunroll_x_in_c0_eni9_8_4_inputreg0(DELAY,343)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_in_aunroll_x_in_c0_eni9_8_4_inputreg0_q <= in_c0_eni9_8;
        end
    end

    // redist9_sync_in_aunroll_x_in_c0_eni9_8_4(DELAY,311)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_in_aunroll_x_in_c0_eni9_8_4_delay_0 <= redist9_sync_in_aunroll_x_in_c0_eni9_8_4_inputreg0_q;
            redist9_sync_in_aunroll_x_in_c0_eni9_8_4_delay_1 <= redist9_sync_in_aunroll_x_in_c0_eni9_8_4_delay_0;
            redist9_sync_in_aunroll_x_in_c0_eni9_8_4_q <= redist9_sync_in_aunroll_x_in_c0_eni9_8_4_delay_1;
        end
    end

    // valid_fanout_reg36(REG,188)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg36_q <= in_i_valid;
        end
    end

    // valid_fanout_reg35(REG,187)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg35_q <= redist11_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x(FIFODELAY,128)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_stall = ~ (valid_fanout_reg36_q & i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_valid = valid_fanout_reg35_q & redist17_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_data = i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q;
    assign i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_valid[0];
    assign i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x (
        .i_valid(i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor_cnn625(REG,22)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor_cnn625_q <= redist32_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_3_q;
        end
    end

    // i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x(MUX,96)@4
    assign i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor_cnn625_q;
    always @(i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_s or i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_o_data or redist9_sync_in_aunroll_x_in_c0_eni9_8_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q = i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn711_i_llvm_fpga_push_i64_col_060_replace_phi103_push30_cnn712_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q = redist9_sync_in_aunroll_x_in_c0_eni9_8_4_q;
            default : i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q = 64'b0;
        endcase
    end

    // redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4_inputreg0(DELAY,346)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4_inputreg0_q <= i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q;
        end
    end

    // redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4(DELAY,326)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4_delay_0 <= redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4_inputreg0_q;
            redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4_delay_1 <= redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4_delay_0;
            redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4_q <= redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4_delay_1;
        end
    end

    // redist8_sync_in_aunroll_x_in_c0_eni9_7_4(DELAY,310)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_in_aunroll_x_in_c0_eni9_7_4_delay_0 <= in_c0_eni9_7;
            redist8_sync_in_aunroll_x_in_c0_eni9_7_4_delay_1 <= redist8_sync_in_aunroll_x_in_c0_eni9_7_4_delay_0;
            redist8_sync_in_aunroll_x_in_c0_eni9_7_4_delay_2 <= redist8_sync_in_aunroll_x_in_c0_eni9_7_4_delay_1;
            redist8_sync_in_aunroll_x_in_c0_eni9_7_4_q <= redist8_sync_in_aunroll_x_in_c0_eni9_7_4_delay_2;
        end
    end

    // i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_element_extension_x(BITJOIN,115)@5
    assign i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_element_extension_x_q = {i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_c_i7_0gr_x_q, i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q};

    // valid_fanout_reg33(REG,185)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg33_q <= in_i_valid;
        end
    end

    // valid_fanout_reg32(REG,184)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg32_q <= redist12_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x(FIFODELAY,116)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_stall = ~ (valid_fanout_reg33_q & i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_valid = valid_fanout_reg32_q & redist18_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_data = i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_element_extension_x_q;
    assign i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_valid[0];
    assign i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("zl"),
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
    ) thei_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x (
        .i_valid(i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_element_extension_x_q),
        .o_data(i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_adapt_scalar_trunc_sel_x(BITSELECT,118)@4
    assign i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_adapt_scalar_trunc_sel_x_b = i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_i_llvm_fpga_push_i1_notcmp75101_push29_cnn707_x_o_data[0:0];

    // i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x(MUX,92)@4 + 1
    assign i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor_cnn625_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q <= i_llvm_fpga_push_i1_notcmp75101_push29_cnn706_adapt_scalar_trunc_sel_x_b;
                1'b1 : i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q <= redist8_sync_in_aunroll_x_in_c0_eni9_7_4_q;
                default : i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q <= 1'b0;
            endcase
        end
    end

    // redist28_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q_4(DELAY,330)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q_4_delay_0 <= i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q;
            redist28_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q_4_delay_1 <= redist28_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q_4_delay_0;
            redist28_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q_4_q <= redist28_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q_4_delay_1;
        end
    end

    // redist7_sync_in_aunroll_x_in_c0_eni9_6_4_inputreg0(DELAY,342)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_in_aunroll_x_in_c0_eni9_6_4_inputreg0_q <= in_c0_eni9_6;
        end
    end

    // redist7_sync_in_aunroll_x_in_c0_eni9_6_4(DELAY,309)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_in_aunroll_x_in_c0_eni9_6_4_delay_0 <= redist7_sync_in_aunroll_x_in_c0_eni9_6_4_inputreg0_q;
            redist7_sync_in_aunroll_x_in_c0_eni9_6_4_delay_1 <= redist7_sync_in_aunroll_x_in_c0_eni9_6_4_delay_0;
            redist7_sync_in_aunroll_x_in_c0_eni9_6_4_q <= redist7_sync_in_aunroll_x_in_c0_eni9_6_4_delay_1;
        end
    end

    // valid_fanout_reg30(REG,182)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg30_q <= in_i_valid;
        end
    end

    // valid_fanout_reg29(REG,181)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg29_q <= redist11_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x(FIFODELAY,131)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_stall = ~ (valid_fanout_reg30_q & i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_valid = valid_fanout_reg29_q & redist17_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_data = i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q;
    assign i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_valid[0];
    assign i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x (
        .i_valid(i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x(MUX,97)@4
    assign i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor_cnn625_q;
    always @(i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_s or i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_o_data or redist7_sync_in_aunroll_x_in_c0_eni9_6_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q = i_llvm_fpga_push_i64_mul8598_push28_cnn701_i_llvm_fpga_push_i64_mul8598_push28_cnn702_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q = redist7_sync_in_aunroll_x_in_c0_eni9_6_4_q;
            default : i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q = 64'b0;
        endcase
    end

    // redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4_inputreg0(DELAY,345)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4_inputreg0_q <= i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q;
        end
    end

    // redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4(DELAY,325)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4_delay_0 <= redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4_inputreg0_q;
            redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4_delay_1 <= redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4_delay_0;
            redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4_q <= redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4_delay_1;
        end
    end

    // redist6_sync_in_aunroll_x_in_c0_eni9_5_4_inputreg0(DELAY,341)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_in_aunroll_x_in_c0_eni9_5_4_inputreg0_q <= in_c0_eni9_5;
        end
    end

    // redist6_sync_in_aunroll_x_in_c0_eni9_5_4(DELAY,308)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_in_aunroll_x_in_c0_eni9_5_4_delay_0 <= redist6_sync_in_aunroll_x_in_c0_eni9_5_4_inputreg0_q;
            redist6_sync_in_aunroll_x_in_c0_eni9_5_4_delay_1 <= redist6_sync_in_aunroll_x_in_c0_eni9_5_4_delay_0;
            redist6_sync_in_aunroll_x_in_c0_eni9_5_4_q <= redist6_sync_in_aunroll_x_in_c0_eni9_5_4_delay_1;
        end
    end

    // valid_fanout_reg27(REG,179)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= in_i_valid;
        end
    end

    // valid_fanout_reg26(REG,178)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= redist11_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x(FIFODELAY,134)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_stall = ~ (valid_fanout_reg27_q & i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_valid = valid_fanout_reg26_q & redist17_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_data = i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q;
    assign i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_valid[0];
    assign i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x (
        .i_valid(i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x(MUX,98)@4
    assign i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor_cnn625_q;
    always @(i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_s or i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_o_data or redist6_sync_in_aunroll_x_in_c0_eni9_5_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q = i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn696_i_llvm_fpga_push_i64_row_063_replace_phi95_push27_cnn697_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q = redist6_sync_in_aunroll_x_in_c0_eni9_5_4_q;
            default : i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q = 64'b0;
        endcase
    end

    // redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4_inputreg0(DELAY,344)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4_inputreg0_q <= i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q;
        end
    end

    // redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4(DELAY,324)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4_delay_0 <= redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4_inputreg0_q;
            redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4_delay_1 <= redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4_delay_0;
            redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4_q <= redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4_delay_1;
        end
    end

    // redist5_sync_in_aunroll_x_in_c0_eni9_4_4_inputreg0(DELAY,340)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_in_aunroll_x_in_c0_eni9_4_4_inputreg0_q <= in_c0_eni9_4;
        end
    end

    // redist5_sync_in_aunroll_x_in_c0_eni9_4_4(DELAY,307)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_in_aunroll_x_in_c0_eni9_4_4_delay_0 <= redist5_sync_in_aunroll_x_in_c0_eni9_4_4_inputreg0_q;
            redist5_sync_in_aunroll_x_in_c0_eni9_4_4_delay_1 <= redist5_sync_in_aunroll_x_in_c0_eni9_4_4_delay_0;
            redist5_sync_in_aunroll_x_in_c0_eni9_4_4_q <= redist5_sync_in_aunroll_x_in_c0_eni9_4_4_delay_1;
        end
    end

    // valid_fanout_reg24(REG,176)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= in_i_valid;
        end
    end

    // valid_fanout_reg23(REG,175)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= redist12_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x(FIFODELAY,122)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_stall = ~ (valid_fanout_reg24_q & i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_valid = valid_fanout_reg23_q & redist18_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_data = i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q;
    assign i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_valid[0];
    assign i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("zl"),
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
    ) thei_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x (
        .i_valid(i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x(MUX,94)@4 + 1
    assign i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor_cnn625_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q <= i_llvm_fpga_push_i64_add3192_push26_cnn691_i_llvm_fpga_push_i64_add3192_push26_cnn692_x_o_data;
                1'b1 : i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q <= redist5_sync_in_aunroll_x_in_c0_eni9_4_4_q;
                default : i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q <= 64'b0;
            endcase
        end
    end

    // redist26_i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q_4(DELAY,328)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q_4_delay_0 <= i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q;
            redist26_i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q_4_delay_1 <= redist26_i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q_4_delay_0;
            redist26_i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q_4_q <= redist26_i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q_4_delay_1;
        end
    end

    // redist4_sync_in_aunroll_x_in_c0_eni9_3_4_inputreg0(DELAY,339)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_in_aunroll_x_in_c0_eni9_3_4_inputreg0_q <= in_c0_eni9_3;
        end
    end

    // redist4_sync_in_aunroll_x_in_c0_eni9_3_4(DELAY,306)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_in_aunroll_x_in_c0_eni9_3_4_delay_0 <= redist4_sync_in_aunroll_x_in_c0_eni9_3_4_inputreg0_q;
            redist4_sync_in_aunroll_x_in_c0_eni9_3_4_delay_1 <= redist4_sync_in_aunroll_x_in_c0_eni9_3_4_delay_0;
            redist4_sync_in_aunroll_x_in_c0_eni9_3_4_q <= redist4_sync_in_aunroll_x_in_c0_eni9_3_4_delay_1;
        end
    end

    // valid_fanout_reg21(REG,173)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= in_i_valid;
        end
    end

    // valid_fanout_reg20(REG,172)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= redist12_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x(FIFODELAY,119)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_stall = ~ (valid_fanout_reg21_q & i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_valid = valid_fanout_reg20_q & redist18_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_data = i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q;
    assign i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_valid[0];
    assign i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("zl"),
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
    ) thei_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x (
        .i_valid(i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x(MUX,93)@4 + 1
    assign i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor_cnn625_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_s)
                1'b0 : i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q <= i_llvm_fpga_push_i64_add1787_push25_cnn686_i_llvm_fpga_push_i64_add1787_push25_cnn687_x_o_data;
                1'b1 : i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q <= redist4_sync_in_aunroll_x_in_c0_eni9_3_4_q;
                default : i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q <= 64'b0;
            endcase
        end
    end

    // redist27_i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q_4(DELAY,329)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q_4_delay_0 <= i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q;
            redist27_i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q_4_delay_1 <= redist27_i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q_4_delay_0;
            redist27_i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q_4_q <= redist27_i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q_4_delay_1;
        end
    end

    // redist3_sync_in_aunroll_x_in_c0_eni9_2_4_inputreg0(DELAY,338)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_c0_eni9_2_4_inputreg0_q <= in_c0_eni9_2;
        end
    end

    // redist3_sync_in_aunroll_x_in_c0_eni9_2_4(DELAY,305)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_c0_eni9_2_4_delay_0 <= redist3_sync_in_aunroll_x_in_c0_eni9_2_4_inputreg0_q;
            redist3_sync_in_aunroll_x_in_c0_eni9_2_4_delay_1 <= redist3_sync_in_aunroll_x_in_c0_eni9_2_4_delay_0;
            redist3_sync_in_aunroll_x_in_c0_eni9_2_4_q <= redist3_sync_in_aunroll_x_in_c0_eni9_2_4_delay_1;
        end
    end

    // valid_fanout_reg18(REG,170)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= in_i_valid;
        end
    end

    // valid_fanout_reg17(REG,169)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= redist11_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x(FIFODELAY,125)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_stall = ~ (valid_fanout_reg18_q & i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_valid = valid_fanout_reg17_q & redist17_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_data = i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q;
    assign i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_valid[0];
    assign i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_stall[0];
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
    ) thei_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x (
        .i_valid(i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x(MUX,95)@4
    assign i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor_cnn625_q;
    always @(i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_s or i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_o_data or redist3_sync_in_aunroll_x_in_c0_eni9_2_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q = i_llvm_fpga_push_i64_add81_push24_cnn681_i_llvm_fpga_push_i64_add81_push24_cnn682_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q = redist3_sync_in_aunroll_x_in_c0_eni9_2_4_q;
            default : i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q = 64'b0;
        endcase
    end

    // redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4_inputreg0(DELAY,347)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4_inputreg0_q <= i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q;
        end
    end

    // redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4(DELAY,327)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4_delay_0 <= redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4_inputreg0_q;
            redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4_delay_1 <= redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4_delay_0;
            redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4_q <= redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4_delay_1;
        end
    end

    // i_llvm_fpga_fanout_i1_fanout_adaptor939_cnn665(REG,23)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_fanout_i1_fanout_adaptor939_cnn665_q <= i_unnamed_cnn663_q;
        end
    end

    // i_notcmp67_cnn666(LOGICAL,37)@8
    assign i_notcmp67_cnn666_q = i_llvm_fpga_fanout_i1_fanout_adaptor939_cnn665_q ^ VCC_q;

    // i_add_ptr_cnn657_mult_multconst_x(CONSTANT,87)
    assign i_add_ptr_cnn657_mult_multconst_x_q = 61'b0000000000000000000000000000000000000000000000000000000000000;

    // leftShiftStage2Idx1Rng8_uid246_i_mul56_cnn652_shift_x(BITSELECT,245)@5
    assign leftShiftStage2Idx1Rng8_uid246_i_mul56_cnn652_shift_x_in = leftShiftStage1_uid244_i_mul56_cnn652_shift_x_q[55:0];
    assign leftShiftStage2Idx1Rng8_uid246_i_mul56_cnn652_shift_x_b = leftShiftStage2Idx1Rng8_uid246_i_mul56_cnn652_shift_x_in[55:0];

    // leftShiftStage2Idx1Pad8_uid245_i_mul56_cnn652_shift_x(CONSTANT,244)
    assign leftShiftStage2Idx1Pad8_uid245_i_mul56_cnn652_shift_x_q = 8'b00000000;

    // leftShiftStage2Idx1_uid247_i_mul56_cnn652_shift_x(BITJOIN,246)@5
    assign leftShiftStage2Idx1_uid247_i_mul56_cnn652_shift_x_q = {leftShiftStage2Idx1Rng8_uid246_i_mul56_cnn652_shift_x_b, leftShiftStage2Idx1Pad8_uid245_i_mul56_cnn652_shift_x_q};

    // leftShiftStage1Idx1Rng2_uid241_i_mul56_cnn652_shift_x(BITSELECT,240)@5
    assign leftShiftStage1Idx1Rng2_uid241_i_mul56_cnn652_shift_x_in = leftShiftStage0_uid239_i_mul56_cnn652_shift_x_q[61:0];
    assign leftShiftStage1Idx1Rng2_uid241_i_mul56_cnn652_shift_x_b = leftShiftStage1Idx1Rng2_uid241_i_mul56_cnn652_shift_x_in[61:0];

    // leftShiftStage1Idx1Pad2_uid240_i_mul56_cnn652_shift_x(CONSTANT,239)
    assign leftShiftStage1Idx1Pad2_uid240_i_mul56_cnn652_shift_x_q = 2'b00;

    // leftShiftStage1Idx1_uid242_i_mul56_cnn652_shift_x(BITJOIN,241)@5
    assign leftShiftStage1Idx1_uid242_i_mul56_cnn652_shift_x_q = {leftShiftStage1Idx1Rng2_uid241_i_mul56_cnn652_shift_x_b, leftShiftStage1Idx1Pad2_uid240_i_mul56_cnn652_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid236_i_mul56_cnn652_shift_x(BITSELECT,235)@5
    assign leftShiftStage0Idx1Rng1_uid236_i_mul56_cnn652_shift_x_in = i_to_058_replace_phi_cnn650_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid236_i_mul56_cnn652_shift_x_b = leftShiftStage0Idx1Rng1_uid236_i_mul56_cnn652_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid237_i_mul56_cnn652_shift_x(BITJOIN,236)@5
    assign leftShiftStage0Idx1_uid237_i_mul56_cnn652_shift_x_q = {leftShiftStage0Idx1Rng1_uid236_i_mul56_cnn652_shift_x_b, GND_q};

    // valid_fanout_reg7(REG,159)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= redist12_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_too_06551_cnn645(BLACKBOX,25)@4
    cnn_i_llvm_fpga_ffwd_dest_i64_too_06551_646 thei_llvm_fpga_ffwd_dest_i64_too_06551_cnn645 (
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_22_0(i_llvm_fpga_ffwd_dest_i64_too_06551_cnn645_out_dest_data_out_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_undef(CONSTANT,8)
    assign c_i64_undef_q = 64'b0000000000000000000000000000000000000000000000000000000000000000;

    // c_i64_1gr(CONSTANT,7)
    assign c_i64_1gr_q = 64'b0000000000000000000000000000000000000000000000000000000000000001;

    // i_inc89_cnn674(ADD,20)@5
    assign i_inc89_cnn674_a = {1'b0, i_to_058_replace_phi_cnn650_q};
    assign i_inc89_cnn674_b = {1'b0, c_i64_1gr_q};
    assign i_inc89_cnn674_o = $unsigned(i_inc89_cnn674_a) + $unsigned(i_inc89_cnn674_b);
    assign i_inc89_cnn674_q = i_inc89_cnn674_o[64:0];

    // bgTrunc_i_inc89_cnn674_sel_x(BITSELECT,46)@5
    assign bgTrunc_i_inc89_cnn674_sel_x_b = i_inc89_cnn674_q[63:0];

    // valid_fanout_reg15(REG,167)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= in_i_valid;
        end
    end

    // valid_fanout_reg14(REG,166)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= redist12_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x(FIFODELAY,137)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_stall = ~ (valid_fanout_reg15_q & i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_valid = valid_fanout_reg14_q & redist18_i_llvm_fpga_push_i1_cnn_b6_exited8_cnn637_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_data = bgTrunc_i_inc89_cnn674_sel_x_b;
    assign i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_valid[0];
    assign i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("zl"),
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
    ) thei_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x (
        .i_valid(i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc89_cnn674_sel_x_b),
        .o_data(i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_to_058_pop23_cnn649_i_llvm_fpga_pop_i64_to_058_pop23_cnn648_mux_x(MUX,99)@4
    assign i_llvm_fpga_pop_i64_to_058_pop23_cnn649_i_llvm_fpga_pop_i64_to_058_pop23_cnn648_mux_x_s = i_llvm_fpga_fanout_i1_c0_ene1840_fanout_adaptor_cnn625_q;
    always @(i_llvm_fpga_pop_i64_to_058_pop23_cnn649_i_llvm_fpga_pop_i64_to_058_pop23_cnn648_mux_x_s or i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_o_data or c_i64_undef_q)
    begin
        unique case (i_llvm_fpga_pop_i64_to_058_pop23_cnn649_i_llvm_fpga_pop_i64_to_058_pop23_cnn648_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_to_058_pop23_cnn649_i_llvm_fpga_pop_i64_to_058_pop23_cnn648_mux_x_q = i_llvm_fpga_push_i64_to_058_push23_cnn676_i_llvm_fpga_push_i64_to_058_push23_cnn677_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_to_058_pop23_cnn649_i_llvm_fpga_pop_i64_to_058_pop23_cnn648_mux_x_q = c_i64_undef_q;
            default : i_llvm_fpga_pop_i64_to_058_pop23_cnn649_i_llvm_fpga_pop_i64_to_058_pop23_cnn648_mux_x_q = 64'b0;
        endcase
    end

    // i_to_058_replace_phi_cnn650(MUX,38)@4 + 1
    assign i_to_058_replace_phi_cnn650_s = redist33_i_llvm_fpga_forked_cnn_b6_forked_cnn626_out_buffer_out_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_to_058_replace_phi_cnn650_s)
                1'b0 : i_to_058_replace_phi_cnn650_q <= i_llvm_fpga_pop_i64_to_058_pop23_cnn649_i_llvm_fpga_pop_i64_to_058_pop23_cnn648_mux_x_q;
                1'b1 : i_to_058_replace_phi_cnn650_q <= i_llvm_fpga_ffwd_dest_i64_too_06551_cnn645_out_dest_data_out_22_0;
                default : i_to_058_replace_phi_cnn650_q <= 64'b0;
            endcase
        end
    end

    // leftShiftStage0_uid239_i_mul56_cnn652_shift_x(MUX,238)@5
    assign leftShiftStage0_uid239_i_mul56_cnn652_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid239_i_mul56_cnn652_shift_x_s or i_to_058_replace_phi_cnn650_q or leftShiftStage0Idx1_uid237_i_mul56_cnn652_shift_x_q)
    begin
        unique case (leftShiftStage0_uid239_i_mul56_cnn652_shift_x_s)
            1'b0 : leftShiftStage0_uid239_i_mul56_cnn652_shift_x_q = i_to_058_replace_phi_cnn650_q;
            1'b1 : leftShiftStage0_uid239_i_mul56_cnn652_shift_x_q = leftShiftStage0Idx1_uid237_i_mul56_cnn652_shift_x_q;
            default : leftShiftStage0_uid239_i_mul56_cnn652_shift_x_q = 64'b0;
        endcase
    end

    // leftShiftStage1_uid244_i_mul56_cnn652_shift_x(MUX,243)@5
    assign leftShiftStage1_uid244_i_mul56_cnn652_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid244_i_mul56_cnn652_shift_x_s or leftShiftStage0_uid239_i_mul56_cnn652_shift_x_q or leftShiftStage1Idx1_uid242_i_mul56_cnn652_shift_x_q)
    begin
        unique case (leftShiftStage1_uid244_i_mul56_cnn652_shift_x_s)
            1'b0 : leftShiftStage1_uid244_i_mul56_cnn652_shift_x_q = leftShiftStage0_uid239_i_mul56_cnn652_shift_x_q;
            1'b1 : leftShiftStage1_uid244_i_mul56_cnn652_shift_x_q = leftShiftStage1Idx1_uid242_i_mul56_cnn652_shift_x_q;
            default : leftShiftStage1_uid244_i_mul56_cnn652_shift_x_q = 64'b0;
        endcase
    end

    // leftShiftStage2_uid249_i_mul56_cnn652_shift_x(MUX,248)@5
    assign leftShiftStage2_uid249_i_mul56_cnn652_shift_x_s = VCC_q;
    always @(leftShiftStage2_uid249_i_mul56_cnn652_shift_x_s or leftShiftStage1_uid244_i_mul56_cnn652_shift_x_q or leftShiftStage2Idx1_uid247_i_mul56_cnn652_shift_x_q)
    begin
        unique case (leftShiftStage2_uid249_i_mul56_cnn652_shift_x_s)
            1'b0 : leftShiftStage2_uid249_i_mul56_cnn652_shift_x_q = leftShiftStage1_uid244_i_mul56_cnn652_shift_x_q;
            1'b1 : leftShiftStage2_uid249_i_mul56_cnn652_shift_x_q = leftShiftStage2Idx1_uid247_i_mul56_cnn652_shift_x_q;
            default : leftShiftStage2_uid249_i_mul56_cnn652_shift_x_q = 64'b0;
        endcase
    end

    // i_mul56_cnn651_vt_select_63(BITSELECT,36)@5
    assign i_mul56_cnn651_vt_select_63_b = leftShiftStage2_uid249_i_mul56_cnn652_shift_x_q[63:11];

    // i_mul56_cnn651_vt_const_10(CONSTANT,34)
    assign i_mul56_cnn651_vt_const_10_q = 11'b00000000000;

    // i_mul56_cnn651_vt_join(BITJOIN,35)@5
    assign i_mul56_cnn651_vt_join_q = {i_mul56_cnn651_vt_select_63_b, i_mul56_cnn651_vt_const_10_q};

    // i_add_ptr_cnn657_mult_x_bs1_merged_bit_select(BITSELECT,301)@5
    assign i_add_ptr_cnn657_mult_x_bs1_merged_bit_select_b = i_mul56_cnn651_vt_join_q[63:54];
    assign i_add_ptr_cnn657_mult_x_bs1_merged_bit_select_c = i_mul56_cnn651_vt_join_q[53:36];
    assign i_add_ptr_cnn657_mult_x_bs1_merged_bit_select_d = i_mul56_cnn651_vt_join_q[35:18];
    assign i_add_ptr_cnn657_mult_x_bs1_merged_bit_select_e = i_mul56_cnn651_vt_join_q[17:0];

    // i_add_ptr_cnn657_mult_x_bjA2(BITJOIN,199)@5
    assign i_add_ptr_cnn657_mult_x_bjA2_q = {GND_q, i_add_ptr_cnn657_mult_x_bs1_merged_bit_select_b};

    // i_add_ptr_cnn657_mult_x_im0_shift0(BITSHIFT,250)@5
    assign i_add_ptr_cnn657_mult_x_im0_shift0_qint = { i_add_ptr_cnn657_mult_x_bjA2_q, 2'b00 };
    assign i_add_ptr_cnn657_mult_x_im0_shift0_q = i_add_ptr_cnn657_mult_x_im0_shift0_qint[12:0];

    // i_add_ptr_cnn657_mult_x_sums_align_5(BITSHIFT,222)@5
    assign i_add_ptr_cnn657_mult_x_sums_align_5_qint = { {{2{i_add_ptr_cnn657_mult_x_im0_shift0_q[12]}}, i_add_ptr_cnn657_mult_x_im0_shift0_q}, 54'b000000000000000000000000000000000000000000000000000000 };
    assign i_add_ptr_cnn657_mult_x_sums_align_5_q = i_add_ptr_cnn657_mult_x_sums_align_5_qint[68:0];

    // i_add_ptr_cnn657_mult_x_bjA7(BITJOIN,204)@5
    assign i_add_ptr_cnn657_mult_x_bjA7_q = {GND_q, i_add_ptr_cnn657_mult_x_bs1_merged_bit_select_c};

    // i_add_ptr_cnn657_mult_x_im5_shift0(BITSHIFT,251)@5
    assign i_add_ptr_cnn657_mult_x_im5_shift0_qint = { i_add_ptr_cnn657_mult_x_bjA7_q, 2'b00 };
    assign i_add_ptr_cnn657_mult_x_im5_shift0_q = i_add_ptr_cnn657_mult_x_im5_shift0_qint[20:0];

    // i_add_ptr_cnn657_mult_x_sums_align_3(BITSHIFT,220)@5
    assign i_add_ptr_cnn657_mult_x_sums_align_3_qint = { {{2{i_add_ptr_cnn657_mult_x_im5_shift0_q[20]}}, i_add_ptr_cnn657_mult_x_im5_shift0_q}, 36'b000000000000000000000000000000000000 };
    assign i_add_ptr_cnn657_mult_x_sums_align_3_q = i_add_ptr_cnn657_mult_x_sums_align_3_qint[58:0];

    // i_add_ptr_cnn657_mult_x_sums_result_add_0_1(ADD,225)@5 + 1
    assign i_add_ptr_cnn657_mult_x_sums_result_add_0_1_a = {{11{i_add_ptr_cnn657_mult_x_sums_align_3_q[58]}}, i_add_ptr_cnn657_mult_x_sums_align_3_q};
    assign i_add_ptr_cnn657_mult_x_sums_result_add_0_1_b = {{1{i_add_ptr_cnn657_mult_x_sums_align_5_q[68]}}, i_add_ptr_cnn657_mult_x_sums_align_5_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr_cnn657_mult_x_sums_result_add_0_1_o <= $signed(i_add_ptr_cnn657_mult_x_sums_result_add_0_1_a) + $signed(i_add_ptr_cnn657_mult_x_sums_result_add_0_1_b);
        end
    end
    assign i_add_ptr_cnn657_mult_x_sums_result_add_0_1_q = i_add_ptr_cnn657_mult_x_sums_result_add_0_1_o[69:0];

    // i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1(BITSELECT,266)@6
    assign i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b = i_add_ptr_cnn657_mult_x_sums_result_add_0_0_q[41:41];

    // i_add_ptr_cnn657_mult_x_bjA12(BITJOIN,209)@5
    assign i_add_ptr_cnn657_mult_x_bjA12_q = {GND_q, i_add_ptr_cnn657_mult_x_bs1_merged_bit_select_d};

    // i_add_ptr_cnn657_mult_x_im10_shift0(BITSHIFT,252)@5
    assign i_add_ptr_cnn657_mult_x_im10_shift0_qint = { i_add_ptr_cnn657_mult_x_bjA12_q, 2'b00 };
    assign i_add_ptr_cnn657_mult_x_im10_shift0_q = i_add_ptr_cnn657_mult_x_im10_shift0_qint[20:0];

    // i_add_ptr_cnn657_mult_x_sums_align_1(BITSHIFT,218)@5
    assign i_add_ptr_cnn657_mult_x_sums_align_1_qint = { {{2{i_add_ptr_cnn657_mult_x_im10_shift0_q[20]}}, i_add_ptr_cnn657_mult_x_im10_shift0_q}, 18'b000000000000000000 };
    assign i_add_ptr_cnn657_mult_x_sums_align_1_q = i_add_ptr_cnn657_mult_x_sums_align_1_qint[40:0];

    // i_add_ptr_cnn657_mult_x_bjA17(BITJOIN,214)@5
    assign i_add_ptr_cnn657_mult_x_bjA17_q = {GND_q, i_add_ptr_cnn657_mult_x_bs1_merged_bit_select_e};

    // i_add_ptr_cnn657_mult_x_im15_shift0(BITSHIFT,253)@5
    assign i_add_ptr_cnn657_mult_x_im15_shift0_qint = { i_add_ptr_cnn657_mult_x_bjA17_q, 2'b00 };
    assign i_add_ptr_cnn657_mult_x_im15_shift0_q = i_add_ptr_cnn657_mult_x_im15_shift0_qint[20:0];

    // i_add_ptr_cnn657_mult_x_sums_result_add_0_0(ADD,224)@5 + 1
    assign i_add_ptr_cnn657_mult_x_sums_result_add_0_0_a = {{21{i_add_ptr_cnn657_mult_x_im15_shift0_q[20]}}, i_add_ptr_cnn657_mult_x_im15_shift0_q};
    assign i_add_ptr_cnn657_mult_x_sums_result_add_0_0_b = {{1{i_add_ptr_cnn657_mult_x_sums_align_1_q[40]}}, i_add_ptr_cnn657_mult_x_sums_align_1_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr_cnn657_mult_x_sums_result_add_0_0_o <= $signed(i_add_ptr_cnn657_mult_x_sums_result_add_0_0_a) + $signed(i_add_ptr_cnn657_mult_x_sums_result_add_0_0_b);
        end
    end
    assign i_add_ptr_cnn657_mult_x_sums_result_add_0_0_q = i_add_ptr_cnn657_mult_x_sums_result_add_0_0_o[41:0];

    // i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,294)@6
    assign i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b_q = {i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr_cnn657_mult_x_sums_result_add_0_0_q};

    // i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2(ADD,262)@6 + 1
    assign i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_a = {1'b0, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_b = {1'b0, i_add_ptr_cnn657_mult_x_sums_result_add_0_1_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_o <= $unsigned(i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_a) + $unsigned(i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_b);
        end
    end
    assign i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_c[0] = i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_o[70];
    assign i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_q = i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_o[69:0];

    // i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0(BITSELECT,299)@6
    assign i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b = i_add_ptr_cnn657_mult_x_sums_result_add_0_1_q[69:69];

    // redist0_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1(DELAY,302)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q <= i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b;
        end
    end

    // redist1_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1(DELAY,303)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q <= i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b;
        end
    end

    // i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2(ADD,263)@7 + 1
    assign i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_cin = i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_c;
    assign i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_a = { {{1{redist1_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q[0]}}, redist1_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q}, 1'b1 };
    assign i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_b = { {{1{redist0_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q[0]}}, redist0_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q}, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_cin[0] };
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_o <= $signed(i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_a) + $signed(i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_b);
        end
    end
    assign i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_q = i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_o[1:1];

    // redist2_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_q_1(DELAY,304)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_q_1_q <= i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_q;
        end
    end

    // i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitJoin_for_q(BITJOIN,264)@8
    assign i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitJoin_for_q_q = {i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p2_of_2_q, redist2_i_add_ptr_cnn657_mult_x_sums_result_add_1_0_p1_of_2_q_1_q};

    // i_add_ptr_cnn657_mult_extender_x(BITJOIN,86)@8
    assign i_add_ptr_cnn657_mult_extender_x_q = {i_add_ptr_cnn657_mult_multconst_x_q, i_add_ptr_cnn657_mult_x_sums_result_add_1_0_BitJoin_for_q_q[66:0]};

    // i_add_ptr_cnn657_trunc_sel_x(BITSELECT,88)@8
    assign i_add_ptr_cnn657_trunc_sel_x_b = i_add_ptr_cnn657_mult_extender_x_q[63:0];

    // valid_fanout_reg9(REG,161)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= redist16_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_cnn653(BLACKBOX,30)@0
    // in in_i_dependence@8
    // in in_valid_in@8
    // out out_buffer_out@8
    // out out_valid_out@8
    cnn_i_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_654 thei_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_cnn653 (
        .in_buffer_in(in_weights),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_cnn653_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_cnn653_vt_select_63(BITSELECT,33)@8
    assign i_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_cnn653_vt_select_63_b = i_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_cnn653_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_cnn653_vt_join(BITJOIN,32)@8
    assign i_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_cnn653_vt_join_q = {i_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_cnn653_vt_select_63_b, i_add_ptr_cnn656_vt_const_9_q};

    // i_add_ptr_cnn657_add_x(ADD,80)@8
    assign i_add_ptr_cnn657_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1f32_weights_sync_buffer_cnn653_vt_join_q};
    assign i_add_ptr_cnn657_add_x_b = {1'b0, i_add_ptr_cnn657_trunc_sel_x_b};
    assign i_add_ptr_cnn657_add_x_o = $unsigned(i_add_ptr_cnn657_add_x_a) + $unsigned(i_add_ptr_cnn657_add_x_b);
    assign i_add_ptr_cnn657_add_x_q = i_add_ptr_cnn657_add_x_o[64:0];

    // i_add_ptr_cnn657_dupName_0_trunc_sel_x(BITSELECT,89)@8
    assign i_add_ptr_cnn657_dupName_0_trunc_sel_x_b = i_add_ptr_cnn657_add_x_q[63:0];

    // i_add_ptr_cnn656_vt_select_63(BITSELECT,14)@8
    assign i_add_ptr_cnn656_vt_select_63_b = i_add_ptr_cnn657_dupName_0_trunc_sel_x_b[63:10];

    // i_add_ptr_cnn656_vt_const_9(CONSTANT,12)
    assign i_add_ptr_cnn656_vt_const_9_q = 10'b0000000000;

    // i_add_ptr_cnn656_vt_join(BITJOIN,13)@8
    assign i_add_ptr_cnn656_vt_join_q = {i_add_ptr_cnn656_vt_select_63_b, i_add_ptr_cnn656_vt_const_9_q};

    // redist31_i_to_058_replace_phi_cnn650_q_4(DELAY,333)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist31_i_to_058_replace_phi_cnn650_q_4_delay_0 <= i_to_058_replace_phi_cnn650_q;
            redist31_i_to_058_replace_phi_cnn650_q_4_delay_1 <= redist31_i_to_058_replace_phi_cnn650_q_4_delay_0;
            redist31_i_to_058_replace_phi_cnn650_q_4_q <= redist31_i_to_058_replace_phi_cnn650_q_4_delay_1;
        end
    end

    // sync_out_aunroll_x(GPOUT,151)@8
    assign out_c0_exi12_0 = GND_q;
    assign out_c0_exi12_1 = redist31_i_to_058_replace_phi_cnn650_q_4_q;
    assign out_c0_exi12_2 = i_add_ptr_cnn656_vt_join_q;
    assign out_c0_exi12_3 = redist30_i_unnamed_cnn663_q_1_q;
    assign out_c0_exi12_4 = i_notcmp67_cnn666_q;
    assign out_c0_exi12_5 = redist25_i_llvm_fpga_pop_i64_add81_pop24_cnn679_i_llvm_fpga_pop_i64_add81_pop24_cnn678_mux_x_q_4_q;
    assign out_c0_exi12_6 = redist27_i_llvm_fpga_pop_i64_add1787_pop25_cnn684_i_llvm_fpga_pop_i64_add1787_pop25_cnn683_mux_x_q_4_q;
    assign out_c0_exi12_7 = redist26_i_llvm_fpga_pop_i64_add3192_pop26_cnn689_i_llvm_fpga_pop_i64_add3192_pop26_cnn688_mux_x_q_4_q;
    assign out_c0_exi12_8 = redist22_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn694_i_llvm_fpga_pop_i64_row_063_replace_phi95_pop27_cnn693_mux_x_q_4_q;
    assign out_c0_exi12_9 = redist23_i_llvm_fpga_pop_i64_mul8598_pop28_cnn699_i_llvm_fpga_pop_i64_mul8598_pop28_cnn698_mux_x_q_4_q;
    assign out_c0_exi12_10 = redist28_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn704_i_llvm_fpga_pop_i1_notcmp75101_pop29_cnn703_mux_x_q_4_q;
    assign out_c0_exi12_11 = redist24_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn709_i_llvm_fpga_pop_i64_col_060_replace_phi103_pop30_cnn708_mux_x_q_4_q;
    assign out_c0_exi12_12 = redist29_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn714_i_llvm_fpga_pop_i1_notcmp71105_pop31_cnn713_mux_x_q_4_q;
    assign out_cnn_B6_exited = i_cnn_b6_exited_cnn631_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
