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

// SystemVerilog created from cnn_bb_B3_stall_region
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B3_stall_region (
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    output wire [63:0] out_intel_reserved_ffwd_20_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_21_0,
    input wire [63:0] in_add1789,
    input wire [63:0] in_add83,
    input wire [0:0] in_forked,
    input wire [63:0] in_too_065,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_add1789,
    output wire [63:0] out_add83,
    output wire [63:0] out_c0_exe1799,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_22_0,
    input wire [63:0] in_intel_reserved_ffwd_93_0,
    output wire [63:0] out_intel_reserved_ffwd_23_0,
    input wire [63:0] in_intel_reserved_ffwd_94_0,
    output wire [64:0] out_intel_reserved_ffwd_24_0,
    input wire [63:0] in_intel_reserved_ffwd_95_0,
    output wire [63:0] out_intel_reserved_ffwd_25_0,
    output wire [0:0] out_intel_reserved_ffwd_26_0,
    output wire [0:0] out_intel_reserved_ffwd_27_0,
    output wire [0:0] out_intel_reserved_ffwd_28_0,
    output wire [0:0] out_intel_reserved_ffwd_29_0,
    output wire [0:0] out_intel_reserved_ffwd_30_0,
    output wire [0:0] out_intel_reserved_ffwd_31_0,
    output wire [0:0] out_intel_reserved_ffwd_32_0,
    output wire [0:0] out_intel_reserved_ffwd_33_0,
    output wire [0:0] out_intel_reserved_ffwd_34_0,
    output wire [0:0] out_intel_reserved_ffwd_35_0,
    output wire [0:0] out_intel_reserved_ffwd_36_0,
    output wire [0:0] out_intel_reserved_ffwd_37_0,
    output wire [0:0] out_intel_reserved_ffwd_38_0,
    output wire [0:0] out_intel_reserved_ffwd_39_0,
    output wire [0:0] out_intel_reserved_ffwd_40_0,
    output wire [0:0] out_intel_reserved_ffwd_41_0,
    output wire [0:0] out_intel_reserved_ffwd_42_0,
    output wire [0:0] out_intel_reserved_ffwd_43_0,
    output wire [0:0] out_intel_reserved_ffwd_44_0,
    output wire [0:0] out_intel_reserved_ffwd_45_0,
    output wire [0:0] out_intel_reserved_ffwd_46_0,
    output wire [0:0] out_intel_reserved_ffwd_47_0,
    output wire [0:0] out_intel_reserved_ffwd_48_0,
    output wire [0:0] out_intel_reserved_ffwd_49_0,
    output wire [0:0] out_intel_reserved_ffwd_50_0,
    output wire [0:0] out_intel_reserved_ffwd_51_0,
    output wire [0:0] out_intel_reserved_ffwd_52_0,
    output wire [0:0] out_intel_reserved_ffwd_53_0,
    output wire [0:0] out_intel_reserved_ffwd_54_0,
    output wire [0:0] out_intel_reserved_ffwd_55_0,
    output wire [0:0] out_intel_reserved_ffwd_56_0,
    output wire [0:0] out_intel_reserved_ffwd_57_0,
    output wire [0:0] out_intel_reserved_ffwd_58_0,
    output wire [0:0] out_intel_reserved_ffwd_59_0,
    output wire [0:0] out_intel_reserved_ffwd_60_0,
    output wire [0:0] out_intel_reserved_ffwd_61_0,
    output wire [0:0] out_intel_reserved_ffwd_62_0,
    output wire [0:0] out_intel_reserved_ffwd_63_0,
    output wire [0:0] out_intel_reserved_ffwd_64_0,
    output wire [0:0] out_intel_reserved_ffwd_65_0,
    output wire [0:0] out_intel_reserved_ffwd_66_0,
    output wire [0:0] out_intel_reserved_ffwd_67_0,
    output wire [0:0] out_intel_reserved_ffwd_68_0,
    output wire [0:0] out_intel_reserved_ffwd_69_0,
    output wire [0:0] out_intel_reserved_ffwd_70_0,
    output wire [0:0] out_intel_reserved_ffwd_71_0,
    output wire [0:0] out_intel_reserved_ffwd_72_0,
    output wire [0:0] out_intel_reserved_ffwd_73_0,
    output wire [0:0] out_intel_reserved_ffwd_74_0,
    output wire [0:0] out_intel_reserved_ffwd_75_0,
    output wire [0:0] out_intel_reserved_ffwd_76_0,
    output wire [0:0] out_intel_reserved_ffwd_77_0,
    output wire [0:0] out_intel_reserved_ffwd_78_0,
    output wire [0:0] out_intel_reserved_ffwd_79_0,
    output wire [0:0] out_intel_reserved_ffwd_80_0,
    output wire [0:0] out_intel_reserved_ffwd_81_0,
    output wire [0:0] out_intel_reserved_ffwd_82_0,
    output wire [0:0] out_intel_reserved_ffwd_83_0,
    output wire [0:0] out_intel_reserved_ffwd_84_0,
    output wire [0:0] out_intel_reserved_ffwd_85_0,
    output wire [0:0] out_intel_reserved_ffwd_86_0,
    output wire [0:0] out_intel_reserved_ffwd_87_0,
    output wire [0:0] out_intel_reserved_ffwd_88_0,
    output wire [0:0] out_intel_reserved_ffwd_89_0,
    output wire [0:0] out_intel_reserved_ffwd_90_0,
    output wire [0:0] out_intel_reserved_ffwd_91_0,
    output wire [0:0] out_intel_reserved_ffwd_92_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] cnn_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] cnn_B3_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] cnn_B3_merge_reg_aunroll_x_out_data_out_0;
    wire [0:0] cnn_B3_merge_reg_aunroll_x_out_data_out_1;
    wire [63:0] cnn_B3_merge_reg_aunroll_x_out_data_out_2;
    wire [63:0] cnn_B3_merge_reg_aunroll_x_out_data_out_3;
    wire [63:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [63:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_21_0;
    wire [63:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [64:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_24_0;
    wire [63:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_25_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_26_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_27_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_28_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_29_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_30_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_31_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_32_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_33_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_34_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_36_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_37_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_38_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_39_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_40_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_41_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_42_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_43_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_44_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_45_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_46_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_47_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_48_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_49_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_50_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_51_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_52_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_53_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_54_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_55_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_56_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_57_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_58_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_59_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_60_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_61_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_62_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_63_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_64_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_65_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_66_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_67_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_68_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_69_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_70_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_71_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_72_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_73_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_74_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_75_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_76_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_77_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_78_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_79_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_80_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_81_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_82_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_83_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_84_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_85_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_86_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_87_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_88_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_89_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_90_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_91_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_92_0;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_c0_exit798_1;
    wire [63:0] i_sfc_s_c1_in_for_cond7_preheader_cnns_c1_enter7893_cnn180_aunroll_x_out_intel_reserved_ffwd_22_0;
    wire [0:0] i_sfc_s_c1_in_for_cond7_preheader_cnns_c1_enter7893_cnn180_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_cond7_preheader_cnns_c1_enter7893_cnn180_aunroll_x_out_o_valid;
    wire [127:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [127:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [127:0] coalesced_delay_0_fifo_o_data;
    wire [192:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [192:0] bubble_join_cnn_B3_merge_reg_aunroll_x_q;
    wire [63:0] bubble_select_cnn_B3_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_cnn_B3_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_cnn_B3_merge_reg_aunroll_x_d;
    wire [63:0] bubble_select_cnn_B3_merge_reg_aunroll_x_e;
    wire [63:0] bubble_join_i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_b;
    wire [127:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [127:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_cnn_B3_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,106)
    assign bubble_join_stall_entry_q = {in_too_065, in_forked, in_add83, in_add1789};

    // bubble_select_stall_entry(BITSELECT,107)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[63:0];
    assign bubble_select_stall_entry_c = bubble_join_stall_entry_q[127:64];
    assign bubble_select_stall_entry_d = bubble_join_stall_entry_q[128:128];
    assign bubble_select_stall_entry_e = bubble_join_stall_entry_q[192:129];

    // SE_stall_entry(STALLENABLE,119)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = cnn_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // cnn_B3_merge_reg_aunroll_x(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0@1
    // out out_data_out_1@1
    // out out_data_out_2@1
    // out out_data_out_3@1
    cnn_B3_merge_reg thecnn_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_cnn_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0(bubble_select_stall_entry_e),
        .in_data_in_1(bubble_select_stall_entry_d),
        .in_data_in_2(bubble_select_stall_entry_c),
        .in_data_in_3(bubble_select_stall_entry_b),
        .out_stall_out(cnn_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(cnn_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0(cnn_B3_merge_reg_aunroll_x_out_data_out_0),
        .out_data_out_1(cnn_B3_merge_reg_aunroll_x_out_data_out_1),
        .out_data_out_2(cnn_B3_merge_reg_aunroll_x_out_data_out_2),
        .out_data_out_3(cnn_B3_merge_reg_aunroll_x_out_data_out_3),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // bubble_join_cnn_B3_merge_reg_aunroll_x(BITJOIN,110)
    assign bubble_join_cnn_B3_merge_reg_aunroll_x_q = {cnn_B3_merge_reg_aunroll_x_out_data_out_3, cnn_B3_merge_reg_aunroll_x_out_data_out_2, cnn_B3_merge_reg_aunroll_x_out_data_out_1, cnn_B3_merge_reg_aunroll_x_out_data_out_0};

    // bubble_select_cnn_B3_merge_reg_aunroll_x(BITSELECT,111)
    assign bubble_select_cnn_B3_merge_reg_aunroll_x_b = bubble_join_cnn_B3_merge_reg_aunroll_x_q[63:0];
    assign bubble_select_cnn_B3_merge_reg_aunroll_x_c = bubble_join_cnn_B3_merge_reg_aunroll_x_q[64:64];
    assign bubble_select_cnn_B3_merge_reg_aunroll_x_d = bubble_join_cnn_B3_merge_reg_aunroll_x_q[128:65];
    assign bubble_select_cnn_B3_merge_reg_aunroll_x_e = bubble_join_cnn_B3_merge_reg_aunroll_x_q[192:129];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // join_for_coalesced_delay_0(BITJOIN,102)
    assign join_for_coalesced_delay_0_q = {bubble_select_cnn_B3_merge_reg_aunroll_x_e, bubble_select_cnn_B3_merge_reg_aunroll_x_d};

    // coalesced_delay_0_fifo(STALLFIFO,104)
    assign coalesced_delay_0_fifo_i_valid = SE_out_cnn_B3_merge_reg_aunroll_x_V2;
    assign coalesced_delay_0_fifo_i_stall = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    hld_fifo #(
        .DEPTH(15),
        .WIDTH(128),
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

    // i_sfc_s_c1_in_for_cond7_preheader_cnns_c1_enter7893_cnn180_aunroll_x(BLACKBOX,98)@1
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@15
    // out out_c1_exit791_0@15
    cnn_i_sfc_s_c1_in_for_cond7_preheader_s_c1_enter7893_cnn180 thei_sfc_s_c1_in_for_cond7_preheader_cnns_c1_enter7893_cnn180_aunroll_x (
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_cnn_B3_merge_reg_aunroll_x_V1),
        .in_c1_eni1788_0(GND_q),
        .in_c1_eni1788_1(bubble_select_cnn_B3_merge_reg_aunroll_x_b),
        .out_intel_reserved_ffwd_22_0(i_sfc_s_c1_in_for_cond7_preheader_cnns_c1_enter7893_cnn180_aunroll_x_out_intel_reserved_ffwd_22_0),
        .out_o_stall(i_sfc_s_c1_in_for_cond7_preheader_cnns_c1_enter7893_cnn180_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_cond7_preheader_cnns_c1_enter7893_cnn180_aunroll_x_out_o_valid),
        .out_c1_exit791_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_cnn_B3_merge_reg_aunroll_x(STALLENABLE,122)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_out_cnn_B3_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_cnn_B3_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_cnn_B3_merge_reg_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_cnn_B3_merge_reg_aunroll_x_fromReg0 <= SE_out_cnn_B3_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_cnn_B3_merge_reg_aunroll_x_fromReg1 <= SE_out_cnn_B3_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_cnn_B3_merge_reg_aunroll_x_fromReg2 <= SE_out_cnn_B3_merge_reg_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_cnn_B3_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_o_stall) & SE_out_cnn_B3_merge_reg_aunroll_x_wireValid) | SE_out_cnn_B3_merge_reg_aunroll_x_fromReg0;
    assign SE_out_cnn_B3_merge_reg_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_for_cond7_preheader_cnns_c1_enter7893_cnn180_aunroll_x_out_o_stall) & SE_out_cnn_B3_merge_reg_aunroll_x_wireValid) | SE_out_cnn_B3_merge_reg_aunroll_x_fromReg1;
    assign SE_out_cnn_B3_merge_reg_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_o_stall) & SE_out_cnn_B3_merge_reg_aunroll_x_wireValid) | SE_out_cnn_B3_merge_reg_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_cnn_B3_merge_reg_aunroll_x_StallValid = SE_out_cnn_B3_merge_reg_aunroll_x_backStall & SE_out_cnn_B3_merge_reg_aunroll_x_wireValid;
    assign SE_out_cnn_B3_merge_reg_aunroll_x_toReg0 = SE_out_cnn_B3_merge_reg_aunroll_x_StallValid & SE_out_cnn_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_cnn_B3_merge_reg_aunroll_x_toReg1 = SE_out_cnn_B3_merge_reg_aunroll_x_StallValid & SE_out_cnn_B3_merge_reg_aunroll_x_consumed1;
    assign SE_out_cnn_B3_merge_reg_aunroll_x_toReg2 = SE_out_cnn_B3_merge_reg_aunroll_x_StallValid & SE_out_cnn_B3_merge_reg_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_cnn_B3_merge_reg_aunroll_x_or0 = SE_out_cnn_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_cnn_B3_merge_reg_aunroll_x_or1 = SE_out_cnn_B3_merge_reg_aunroll_x_consumed1 & SE_out_cnn_B3_merge_reg_aunroll_x_or0;
    assign SE_out_cnn_B3_merge_reg_aunroll_x_wireStall = ~ (SE_out_cnn_B3_merge_reg_aunroll_x_consumed2 & SE_out_cnn_B3_merge_reg_aunroll_x_or1);
    assign SE_out_cnn_B3_merge_reg_aunroll_x_backStall = SE_out_cnn_B3_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_cnn_B3_merge_reg_aunroll_x_V0 = SE_out_cnn_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_B3_merge_reg_aunroll_x_fromReg0);
    assign SE_out_cnn_B3_merge_reg_aunroll_x_V1 = SE_out_cnn_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_B3_merge_reg_aunroll_x_fromReg1);
    assign SE_out_cnn_B3_merge_reg_aunroll_x_V2 = SE_out_cnn_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_B3_merge_reg_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_cnn_B3_merge_reg_aunroll_x_wireValid = cnn_B3_merge_reg_aunroll_x_out_valid_out;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,130)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_o_valid;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_sfc_s_c1_in_for_cond7_preheader_cnns_c1_enter7893_cnn180_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x(BLACKBOX,97)@1
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_intel_reserved_ffwd_26_0@20000000
    // out out_intel_reserved_ffwd_27_0@20000000
    // out out_intel_reserved_ffwd_28_0@20000000
    // out out_intel_reserved_ffwd_29_0@20000000
    // out out_intel_reserved_ffwd_30_0@20000000
    // out out_intel_reserved_ffwd_31_0@20000000
    // out out_intel_reserved_ffwd_32_0@20000000
    // out out_intel_reserved_ffwd_33_0@20000000
    // out out_intel_reserved_ffwd_34_0@20000000
    // out out_intel_reserved_ffwd_35_0@20000000
    // out out_intel_reserved_ffwd_36_0@20000000
    // out out_intel_reserved_ffwd_37_0@20000000
    // out out_intel_reserved_ffwd_38_0@20000000
    // out out_intel_reserved_ffwd_39_0@20000000
    // out out_intel_reserved_ffwd_40_0@20000000
    // out out_intel_reserved_ffwd_41_0@20000000
    // out out_intel_reserved_ffwd_42_0@20000000
    // out out_intel_reserved_ffwd_43_0@20000000
    // out out_intel_reserved_ffwd_44_0@20000000
    // out out_intel_reserved_ffwd_45_0@20000000
    // out out_intel_reserved_ffwd_46_0@20000000
    // out out_intel_reserved_ffwd_47_0@20000000
    // out out_intel_reserved_ffwd_48_0@20000000
    // out out_intel_reserved_ffwd_49_0@20000000
    // out out_intel_reserved_ffwd_50_0@20000000
    // out out_intel_reserved_ffwd_51_0@20000000
    // out out_intel_reserved_ffwd_52_0@20000000
    // out out_intel_reserved_ffwd_53_0@20000000
    // out out_intel_reserved_ffwd_54_0@20000000
    // out out_intel_reserved_ffwd_55_0@20000000
    // out out_intel_reserved_ffwd_56_0@20000000
    // out out_intel_reserved_ffwd_57_0@20000000
    // out out_intel_reserved_ffwd_58_0@20000000
    // out out_intel_reserved_ffwd_59_0@20000000
    // out out_intel_reserved_ffwd_60_0@20000000
    // out out_intel_reserved_ffwd_61_0@20000000
    // out out_intel_reserved_ffwd_62_0@20000000
    // out out_intel_reserved_ffwd_63_0@20000000
    // out out_intel_reserved_ffwd_64_0@20000000
    // out out_intel_reserved_ffwd_65_0@20000000
    // out out_intel_reserved_ffwd_66_0@20000000
    // out out_intel_reserved_ffwd_67_0@20000000
    // out out_intel_reserved_ffwd_68_0@20000000
    // out out_intel_reserved_ffwd_69_0@20000000
    // out out_intel_reserved_ffwd_70_0@20000000
    // out out_intel_reserved_ffwd_71_0@20000000
    // out out_intel_reserved_ffwd_72_0@20000000
    // out out_intel_reserved_ffwd_73_0@20000000
    // out out_intel_reserved_ffwd_74_0@20000000
    // out out_intel_reserved_ffwd_75_0@20000000
    // out out_intel_reserved_ffwd_76_0@20000000
    // out out_intel_reserved_ffwd_77_0@20000000
    // out out_intel_reserved_ffwd_78_0@20000000
    // out out_intel_reserved_ffwd_79_0@20000000
    // out out_intel_reserved_ffwd_80_0@20000000
    // out out_intel_reserved_ffwd_81_0@20000000
    // out out_intel_reserved_ffwd_82_0@20000000
    // out out_intel_reserved_ffwd_83_0@20000000
    // out out_intel_reserved_ffwd_84_0@20000000
    // out out_intel_reserved_ffwd_85_0@20000000
    // out out_intel_reserved_ffwd_86_0@20000000
    // out out_intel_reserved_ffwd_87_0@20000000
    // out out_intel_reserved_ffwd_88_0@20000000
    // out out_intel_reserved_ffwd_89_0@20000000
    // out out_intel_reserved_ffwd_90_0@20000000
    // out out_intel_reserved_ffwd_91_0@20000000
    // out out_intel_reserved_ffwd_92_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@15
    // out out_c0_exit798_0@15
    // out out_c0_exit798_1@15
    cnn_i_sfc_s_c0_in_for_cond7_preheader_s_c0_enter794_cnn190 thei_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x (
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_cnn_B3_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_93_0(in_intel_reserved_ffwd_93_0),
        .in_intel_reserved_ffwd_94_0(in_intel_reserved_ffwd_94_0),
        .in_intel_reserved_ffwd_95_0(in_intel_reserved_ffwd_95_0),
        .in_c0_eni2793_0(GND_q),
        .in_c0_eni2793_1(bubble_select_cnn_B3_merge_reg_aunroll_x_c),
        .in_c0_eni2793_2(bubble_select_cnn_B3_merge_reg_aunroll_x_b),
        .out_intel_reserved_ffwd_20_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_23_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_50_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_51_0),
        .out_intel_reserved_ffwd_52_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_58_0),
        .out_intel_reserved_ffwd_59_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_60_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_65_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_65_0),
        .out_intel_reserved_ffwd_66_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_66_0),
        .out_intel_reserved_ffwd_67_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_67_0),
        .out_intel_reserved_ffwd_68_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_68_0),
        .out_intel_reserved_ffwd_69_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_69_0),
        .out_intel_reserved_ffwd_70_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_70_0),
        .out_intel_reserved_ffwd_71_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_71_0),
        .out_intel_reserved_ffwd_72_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_72_0),
        .out_intel_reserved_ffwd_73_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_74_0),
        .out_intel_reserved_ffwd_75_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_75_0),
        .out_intel_reserved_ffwd_76_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_76_0),
        .out_intel_reserved_ffwd_77_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_77_0),
        .out_intel_reserved_ffwd_78_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_78_0),
        .out_intel_reserved_ffwd_79_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_79_0),
        .out_intel_reserved_ffwd_80_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_80_0),
        .out_intel_reserved_ffwd_81_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_81_0),
        .out_intel_reserved_ffwd_82_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_82_0),
        .out_intel_reserved_ffwd_83_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_83_0),
        .out_intel_reserved_ffwd_84_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_84_0),
        .out_intel_reserved_ffwd_85_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_85_0),
        .out_intel_reserved_ffwd_86_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_86_0),
        .out_intel_reserved_ffwd_87_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_87_0),
        .out_intel_reserved_ffwd_88_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_88_0),
        .out_intel_reserved_ffwd_89_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_89_0),
        .out_intel_reserved_ffwd_90_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_90_0),
        .out_intel_reserved_ffwd_91_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_91_0),
        .out_intel_reserved_ffwd_92_0(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_92_0),
        .out_o_stall(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_o_valid),
        .out_c0_exit798_0(),
        .out_c0_exit798_1(i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_c0_exit798_1),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,8)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_20_0;

    // sync_out(GPOUT,12)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_21_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_21_0;

    // bubble_join_i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x(BITJOIN,113)
    assign bubble_join_i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_q = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_c0_exit798_1;

    // bubble_select_i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x(BITSELECT,114)
    assign bubble_select_i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_q[63:0];

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,117)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,118)
    assign bubble_select_coalesced_delay_0_fifo_b = bubble_join_coalesced_delay_0_fifo_q[127:0];

    // sel_for_coalesced_delay_0(BITSELECT,103)
    assign sel_for_coalesced_delay_0_b = bubble_select_coalesced_delay_0_fifo_b[63:0];
    assign sel_for_coalesced_delay_0_c = bubble_select_coalesced_delay_0_fifo_b[127:64];

    // dupName_0_sync_out_x(GPOUT,19)@15
    assign out_add1789 = sel_for_coalesced_delay_0_c;
    assign out_add83 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe1799 = bubble_select_i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

    // dupName_1_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_22_0 = i_sfc_s_c1_in_for_cond7_preheader_cnns_c1_enter7893_cnn180_aunroll_x_out_intel_reserved_ffwd_22_0;

    // dupName_2_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_23_0;

    // dupName_3_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_24_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_24_0;

    // dupName_4_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_25_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_25_0;

    // dupName_5_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_26_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_26_0;

    // dupName_6_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_27_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_27_0;

    // dupName_7_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_28_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_28_0;

    // dupName_8_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_29_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_29_0;

    // dupName_9_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_30_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_30_0;

    // dupName_10_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_31_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_31_0;

    // dupName_11_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_32_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_32_0;

    // dupName_12_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_33_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_33_0;

    // dupName_13_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_34_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_34_0;

    // dupName_14_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_35_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_35_0;

    // dupName_15_regfree_osync_x(GPOUT,40)
    assign out_intel_reserved_ffwd_36_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_36_0;

    // dupName_16_regfree_osync_x(GPOUT,41)
    assign out_intel_reserved_ffwd_37_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_37_0;

    // dupName_17_regfree_osync_x(GPOUT,42)
    assign out_intel_reserved_ffwd_38_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_38_0;

    // dupName_18_regfree_osync_x(GPOUT,43)
    assign out_intel_reserved_ffwd_39_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_39_0;

    // dupName_19_regfree_osync_x(GPOUT,44)
    assign out_intel_reserved_ffwd_40_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_40_0;

    // dupName_20_regfree_osync_x(GPOUT,45)
    assign out_intel_reserved_ffwd_41_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_41_0;

    // dupName_21_regfree_osync_x(GPOUT,46)
    assign out_intel_reserved_ffwd_42_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_42_0;

    // dupName_22_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_43_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_43_0;

    // dupName_23_regfree_osync_x(GPOUT,48)
    assign out_intel_reserved_ffwd_44_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_44_0;

    // dupName_24_regfree_osync_x(GPOUT,49)
    assign out_intel_reserved_ffwd_45_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_45_0;

    // dupName_25_regfree_osync_x(GPOUT,50)
    assign out_intel_reserved_ffwd_46_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_46_0;

    // dupName_26_regfree_osync_x(GPOUT,51)
    assign out_intel_reserved_ffwd_47_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_47_0;

    // dupName_27_regfree_osync_x(GPOUT,52)
    assign out_intel_reserved_ffwd_48_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_48_0;

    // dupName_28_regfree_osync_x(GPOUT,53)
    assign out_intel_reserved_ffwd_49_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_49_0;

    // dupName_29_regfree_osync_x(GPOUT,54)
    assign out_intel_reserved_ffwd_50_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_50_0;

    // dupName_30_regfree_osync_x(GPOUT,55)
    assign out_intel_reserved_ffwd_51_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_51_0;

    // dupName_31_regfree_osync_x(GPOUT,56)
    assign out_intel_reserved_ffwd_52_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_52_0;

    // dupName_32_regfree_osync_x(GPOUT,57)
    assign out_intel_reserved_ffwd_53_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_53_0;

    // dupName_33_regfree_osync_x(GPOUT,58)
    assign out_intel_reserved_ffwd_54_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_54_0;

    // dupName_34_regfree_osync_x(GPOUT,59)
    assign out_intel_reserved_ffwd_55_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_55_0;

    // dupName_35_regfree_osync_x(GPOUT,60)
    assign out_intel_reserved_ffwd_56_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_56_0;

    // dupName_36_regfree_osync_x(GPOUT,61)
    assign out_intel_reserved_ffwd_57_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_57_0;

    // dupName_37_regfree_osync_x(GPOUT,62)
    assign out_intel_reserved_ffwd_58_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_58_0;

    // dupName_38_regfree_osync_x(GPOUT,63)
    assign out_intel_reserved_ffwd_59_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_59_0;

    // dupName_39_regfree_osync_x(GPOUT,64)
    assign out_intel_reserved_ffwd_60_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_60_0;

    // dupName_40_regfree_osync_x(GPOUT,65)
    assign out_intel_reserved_ffwd_61_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_61_0;

    // dupName_41_regfree_osync_x(GPOUT,66)
    assign out_intel_reserved_ffwd_62_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_62_0;

    // dupName_42_regfree_osync_x(GPOUT,67)
    assign out_intel_reserved_ffwd_63_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_63_0;

    // dupName_43_regfree_osync_x(GPOUT,68)
    assign out_intel_reserved_ffwd_64_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_64_0;

    // dupName_44_regfree_osync_x(GPOUT,69)
    assign out_intel_reserved_ffwd_65_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_65_0;

    // dupName_45_regfree_osync_x(GPOUT,70)
    assign out_intel_reserved_ffwd_66_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_66_0;

    // dupName_46_regfree_osync_x(GPOUT,71)
    assign out_intel_reserved_ffwd_67_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_67_0;

    // dupName_47_regfree_osync_x(GPOUT,72)
    assign out_intel_reserved_ffwd_68_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_68_0;

    // dupName_48_regfree_osync_x(GPOUT,73)
    assign out_intel_reserved_ffwd_69_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_69_0;

    // dupName_49_regfree_osync_x(GPOUT,74)
    assign out_intel_reserved_ffwd_70_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_70_0;

    // dupName_50_regfree_osync_x(GPOUT,75)
    assign out_intel_reserved_ffwd_71_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_71_0;

    // dupName_51_regfree_osync_x(GPOUT,76)
    assign out_intel_reserved_ffwd_72_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_72_0;

    // dupName_52_regfree_osync_x(GPOUT,77)
    assign out_intel_reserved_ffwd_73_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_73_0;

    // dupName_53_regfree_osync_x(GPOUT,78)
    assign out_intel_reserved_ffwd_74_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_74_0;

    // dupName_54_regfree_osync_x(GPOUT,79)
    assign out_intel_reserved_ffwd_75_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_75_0;

    // dupName_55_regfree_osync_x(GPOUT,80)
    assign out_intel_reserved_ffwd_76_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_76_0;

    // dupName_56_regfree_osync_x(GPOUT,81)
    assign out_intel_reserved_ffwd_77_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_77_0;

    // dupName_57_regfree_osync_x(GPOUT,82)
    assign out_intel_reserved_ffwd_78_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_78_0;

    // dupName_58_regfree_osync_x(GPOUT,83)
    assign out_intel_reserved_ffwd_79_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_79_0;

    // dupName_59_regfree_osync_x(GPOUT,84)
    assign out_intel_reserved_ffwd_80_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_80_0;

    // dupName_60_regfree_osync_x(GPOUT,85)
    assign out_intel_reserved_ffwd_81_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_81_0;

    // dupName_61_regfree_osync_x(GPOUT,86)
    assign out_intel_reserved_ffwd_82_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_82_0;

    // dupName_62_regfree_osync_x(GPOUT,87)
    assign out_intel_reserved_ffwd_83_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_83_0;

    // dupName_63_regfree_osync_x(GPOUT,88)
    assign out_intel_reserved_ffwd_84_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_84_0;

    // dupName_64_regfree_osync_x(GPOUT,89)
    assign out_intel_reserved_ffwd_85_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_85_0;

    // dupName_65_regfree_osync_x(GPOUT,90)
    assign out_intel_reserved_ffwd_86_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_86_0;

    // dupName_66_regfree_osync_x(GPOUT,91)
    assign out_intel_reserved_ffwd_87_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_87_0;

    // dupName_67_regfree_osync_x(GPOUT,92)
    assign out_intel_reserved_ffwd_88_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_88_0;

    // dupName_68_regfree_osync_x(GPOUT,93)
    assign out_intel_reserved_ffwd_89_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_89_0;

    // dupName_69_regfree_osync_x(GPOUT,94)
    assign out_intel_reserved_ffwd_90_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_90_0;

    // dupName_70_regfree_osync_x(GPOUT,95)
    assign out_intel_reserved_ffwd_91_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_91_0;

    // dupName_71_regfree_osync_x(GPOUT,96)
    assign out_intel_reserved_ffwd_92_0 = i_sfc_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn190_aunroll_x_out_intel_reserved_ffwd_92_0;

    // rst_sync(RESETSYNC,151)
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
