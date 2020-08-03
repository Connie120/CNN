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

// SystemVerilog created from cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_coA000000Z97_cnn2687_data_fifo
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_coA000000Z97_cnn2687_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0,
    input wire [63:0] in_i_data_1,
    input wire [63:0] in_i_data_2,
    input wire [0:0] in_i_data_3,
    input wire [63:0] in_i_data_4,
    input wire [63:0] in_i_data_5,
    input wire [0:0] in_i_data_6,
    input wire [63:0] in_i_data_7,
    input wire [0:0] in_i_data_8,
    input wire [63:0] in_i_data_9,
    input wire [0:0] in_i_data_10,
    input wire [63:0] in_i_data_11,
    input wire [0:0] in_i_data_12,
    input wire [63:0] in_i_data_13,
    input wire [0:0] in_i_data_14,
    input wire [63:0] in_i_data_15,
    input wire [0:0] in_i_data_16,
    input wire [63:0] in_i_data_17,
    input wire [0:0] in_i_data_18,
    input wire [63:0] in_i_data_19,
    input wire [0:0] in_i_data_20,
    input wire [63:0] in_i_data_21,
    input wire [0:0] in_i_data_22,
    input wire [63:0] in_i_data_23,
    input wire [0:0] in_i_data_24,
    input wire [63:0] in_i_data_25,
    input wire [0:0] in_i_data_26,
    input wire [63:0] in_i_data_27,
    input wire [0:0] in_i_data_28,
    input wire [63:0] in_i_data_29,
    input wire [0:0] in_i_data_30,
    input wire [63:0] in_i_data_31,
    input wire [0:0] in_i_data_32,
    input wire [63:0] in_i_data_33,
    input wire [0:0] in_i_data_34,
    input wire [63:0] in_i_data_35,
    input wire [0:0] in_i_data_36,
    input wire [63:0] in_i_data_37,
    input wire [0:0] in_i_data_38,
    input wire [63:0] in_i_data_39,
    input wire [0:0] in_i_data_40,
    input wire [63:0] in_i_data_41,
    input wire [0:0] in_i_data_42,
    input wire [63:0] in_i_data_43,
    input wire [0:0] in_i_data_44,
    input wire [63:0] in_i_data_45,
    input wire [0:0] in_i_data_46,
    input wire [63:0] in_i_data_47,
    input wire [0:0] in_i_data_48,
    input wire [63:0] in_i_data_49,
    input wire [0:0] in_i_data_50,
    input wire [63:0] in_i_data_51,
    input wire [0:0] in_i_data_52,
    input wire [63:0] in_i_data_53,
    input wire [0:0] in_i_data_54,
    input wire [63:0] in_i_data_55,
    input wire [0:0] in_i_data_56,
    input wire [63:0] in_i_data_57,
    input wire [0:0] in_i_data_58,
    input wire [63:0] in_i_data_59,
    input wire [0:0] in_i_data_60,
    input wire [63:0] in_i_data_61,
    input wire [0:0] in_i_data_62,
    input wire [63:0] in_i_data_63,
    input wire [0:0] in_i_data_64,
    input wire [63:0] in_i_data_65,
    input wire [0:0] in_i_data_66,
    input wire [63:0] in_i_data_67,
    input wire [0:0] in_i_data_68,
    input wire [63:0] in_i_data_69,
    input wire [0:0] in_i_data_70,
    input wire [63:0] in_i_data_71,
    input wire [0:0] in_i_data_72,
    input wire [63:0] in_i_data_73,
    input wire [0:0] in_i_data_74,
    input wire [63:0] in_i_data_75,
    input wire [0:0] in_i_data_76,
    input wire [63:0] in_i_data_77,
    input wire [0:0] in_i_data_78,
    input wire [63:0] in_i_data_79,
    input wire [0:0] in_i_data_80,
    input wire [63:0] in_i_data_81,
    input wire [0:0] in_i_data_82,
    input wire [63:0] in_i_data_83,
    input wire [0:0] in_i_data_84,
    input wire [63:0] in_i_data_85,
    input wire [0:0] in_i_data_86,
    input wire [63:0] in_i_data_87,
    input wire [0:0] in_i_data_88,
    input wire [63:0] in_i_data_89,
    input wire [0:0] in_i_data_90,
    input wire [63:0] in_i_data_91,
    input wire [0:0] in_i_data_92,
    input wire [63:0] in_i_data_93,
    input wire [0:0] in_i_data_94,
    input wire [63:0] in_i_data_95,
    input wire [0:0] in_i_data_96,
    input wire [63:0] in_i_data_97,
    input wire [0:0] in_i_data_98,
    input wire [63:0] in_i_data_99,
    input wire [0:0] in_i_data_100,
    input wire [63:0] in_i_data_101,
    input wire [0:0] in_i_data_102,
    input wire [63:0] in_i_data_103,
    input wire [0:0] in_i_data_104,
    input wire [63:0] in_i_data_105,
    input wire [0:0] in_i_data_106,
    input wire [63:0] in_i_data_107,
    input wire [0:0] in_i_data_108,
    input wire [63:0] in_i_data_109,
    input wire [0:0] in_i_data_110,
    input wire [63:0] in_i_data_111,
    input wire [0:0] in_i_data_112,
    input wire [63:0] in_i_data_113,
    input wire [0:0] in_i_data_114,
    input wire [63:0] in_i_data_115,
    input wire [0:0] in_i_data_116,
    input wire [63:0] in_i_data_117,
    input wire [0:0] in_i_data_118,
    input wire [63:0] in_i_data_119,
    input wire [0:0] in_i_data_120,
    input wire [63:0] in_i_data_121,
    input wire [0:0] in_i_data_122,
    input wire [63:0] in_i_data_123,
    input wire [0:0] in_i_data_124,
    input wire [63:0] in_i_data_125,
    input wire [0:0] in_i_data_126,
    input wire [63:0] in_i_data_127,
    input wire [0:0] in_i_data_128,
    input wire [63:0] in_i_data_129,
    input wire [0:0] in_i_data_130,
    input wire [63:0] in_i_data_131,
    input wire [0:0] in_i_data_132,
    input wire [0:0] in_i_data_133,
    input wire [0:0] in_i_data_134,
    input wire [63:0] in_i_data_135,
    input wire [63:0] in_i_data_136,
    input wire [63:0] in_i_data_137,
    input wire [0:0] in_i_data_138,
    input wire [0:0] in_i_data_139,
    input wire [63:0] in_i_data_140,
    input wire [0:0] in_i_data_141,
    input wire [0:0] in_i_data_142,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0,
    output wire [63:0] out_o_data_1,
    output wire [63:0] out_o_data_2,
    output wire [0:0] out_o_data_3,
    output wire [63:0] out_o_data_4,
    output wire [63:0] out_o_data_5,
    output wire [0:0] out_o_data_6,
    output wire [63:0] out_o_data_7,
    output wire [0:0] out_o_data_8,
    output wire [63:0] out_o_data_9,
    output wire [0:0] out_o_data_10,
    output wire [63:0] out_o_data_11,
    output wire [0:0] out_o_data_12,
    output wire [63:0] out_o_data_13,
    output wire [0:0] out_o_data_14,
    output wire [63:0] out_o_data_15,
    output wire [0:0] out_o_data_16,
    output wire [63:0] out_o_data_17,
    output wire [0:0] out_o_data_18,
    output wire [63:0] out_o_data_19,
    output wire [0:0] out_o_data_20,
    output wire [63:0] out_o_data_21,
    output wire [0:0] out_o_data_22,
    output wire [63:0] out_o_data_23,
    output wire [0:0] out_o_data_24,
    output wire [63:0] out_o_data_25,
    output wire [0:0] out_o_data_26,
    output wire [63:0] out_o_data_27,
    output wire [0:0] out_o_data_28,
    output wire [63:0] out_o_data_29,
    output wire [0:0] out_o_data_30,
    output wire [63:0] out_o_data_31,
    output wire [0:0] out_o_data_32,
    output wire [63:0] out_o_data_33,
    output wire [0:0] out_o_data_34,
    output wire [63:0] out_o_data_35,
    output wire [0:0] out_o_data_36,
    output wire [63:0] out_o_data_37,
    output wire [0:0] out_o_data_38,
    output wire [63:0] out_o_data_39,
    output wire [0:0] out_o_data_40,
    output wire [63:0] out_o_data_41,
    output wire [0:0] out_o_data_42,
    output wire [63:0] out_o_data_43,
    output wire [0:0] out_o_data_44,
    output wire [63:0] out_o_data_45,
    output wire [0:0] out_o_data_46,
    output wire [63:0] out_o_data_47,
    output wire [0:0] out_o_data_48,
    output wire [63:0] out_o_data_49,
    output wire [0:0] out_o_data_50,
    output wire [63:0] out_o_data_51,
    output wire [0:0] out_o_data_52,
    output wire [63:0] out_o_data_53,
    output wire [0:0] out_o_data_54,
    output wire [63:0] out_o_data_55,
    output wire [0:0] out_o_data_56,
    output wire [63:0] out_o_data_57,
    output wire [0:0] out_o_data_58,
    output wire [63:0] out_o_data_59,
    output wire [0:0] out_o_data_60,
    output wire [63:0] out_o_data_61,
    output wire [0:0] out_o_data_62,
    output wire [63:0] out_o_data_63,
    output wire [0:0] out_o_data_64,
    output wire [63:0] out_o_data_65,
    output wire [0:0] out_o_data_66,
    output wire [63:0] out_o_data_67,
    output wire [0:0] out_o_data_68,
    output wire [63:0] out_o_data_69,
    output wire [0:0] out_o_data_70,
    output wire [63:0] out_o_data_71,
    output wire [0:0] out_o_data_72,
    output wire [63:0] out_o_data_73,
    output wire [0:0] out_o_data_74,
    output wire [63:0] out_o_data_75,
    output wire [0:0] out_o_data_76,
    output wire [63:0] out_o_data_77,
    output wire [0:0] out_o_data_78,
    output wire [63:0] out_o_data_79,
    output wire [0:0] out_o_data_80,
    output wire [63:0] out_o_data_81,
    output wire [0:0] out_o_data_82,
    output wire [63:0] out_o_data_83,
    output wire [0:0] out_o_data_84,
    output wire [63:0] out_o_data_85,
    output wire [0:0] out_o_data_86,
    output wire [63:0] out_o_data_87,
    output wire [0:0] out_o_data_88,
    output wire [63:0] out_o_data_89,
    output wire [0:0] out_o_data_90,
    output wire [63:0] out_o_data_91,
    output wire [0:0] out_o_data_92,
    output wire [63:0] out_o_data_93,
    output wire [0:0] out_o_data_94,
    output wire [63:0] out_o_data_95,
    output wire [0:0] out_o_data_96,
    output wire [63:0] out_o_data_97,
    output wire [0:0] out_o_data_98,
    output wire [63:0] out_o_data_99,
    output wire [0:0] out_o_data_100,
    output wire [63:0] out_o_data_101,
    output wire [0:0] out_o_data_102,
    output wire [63:0] out_o_data_103,
    output wire [0:0] out_o_data_104,
    output wire [63:0] out_o_data_105,
    output wire [0:0] out_o_data_106,
    output wire [63:0] out_o_data_107,
    output wire [0:0] out_o_data_108,
    output wire [63:0] out_o_data_109,
    output wire [0:0] out_o_data_110,
    output wire [63:0] out_o_data_111,
    output wire [0:0] out_o_data_112,
    output wire [63:0] out_o_data_113,
    output wire [0:0] out_o_data_114,
    output wire [63:0] out_o_data_115,
    output wire [0:0] out_o_data_116,
    output wire [63:0] out_o_data_117,
    output wire [0:0] out_o_data_118,
    output wire [63:0] out_o_data_119,
    output wire [0:0] out_o_data_120,
    output wire [63:0] out_o_data_121,
    output wire [0:0] out_o_data_122,
    output wire [63:0] out_o_data_123,
    output wire [0:0] out_o_data_124,
    output wire [63:0] out_o_data_125,
    output wire [0:0] out_o_data_126,
    output wire [63:0] out_o_data_127,
    output wire [0:0] out_o_data_128,
    output wire [63:0] out_o_data_129,
    output wire [0:0] out_o_data_130,
    output wire [63:0] out_o_data_131,
    output wire [0:0] out_o_data_132,
    output wire [0:0] out_o_data_133,
    output wire [0:0] out_o_data_134,
    output wire [63:0] out_o_data_135,
    output wire [63:0] out_o_data_136,
    output wire [63:0] out_o_data_137,
    output wire [0:0] out_o_data_138,
    output wire [0:0] out_o_data_139,
    output wire [63:0] out_o_data_140,
    output wire [0:0] out_o_data_141,
    output wire [0:0] out_o_data_142,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc_in;
    wire [0:0] adapt_scalar_trunc_q;
    wire [39:0] c_i40_0gr_q;
    wire [47:0] c_i48_0gr_q;
    wire [55:0] c_i56_0gr_q;
    wire [6:0] c_i7_0gr_q;
    wire [8895:0] dsdk_ip_adapt_bitjoin_q;
    wire [7:0] element_extension_q;
    wire [8895:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_almost_full_bitsignaltemp;
    wire [8895:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect_b;
    wire [63:0] ip_dsdk_adapt_cast_b;
    wire [0:0] dupName_0_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_0_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_0_element_extension_x_q;
    wire [63:0] dupName_0_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_0_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_1_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_1_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_1_element_extension_x_q;
    wire [63:0] dupName_1_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_1_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_2_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_2_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_2_element_extension_x_q;
    wire [0:0] dupName_2_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_2_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_3_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_3_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_3_element_extension_x_q;
    wire [63:0] dupName_3_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_3_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_4_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_4_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_4_element_extension_x_q;
    wire [63:0] dupName_4_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_4_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_5_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_5_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_5_element_extension_x_q;
    wire [0:0] dupName_5_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_5_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_6_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_6_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_6_element_extension_x_q;
    wire [63:0] dupName_6_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_6_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_7_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_7_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_7_element_extension_x_q;
    wire [0:0] dupName_7_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_7_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_8_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_8_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_8_element_extension_x_q;
    wire [63:0] dupName_8_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_8_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_9_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_9_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_9_element_extension_x_q;
    wire [0:0] dupName_9_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_9_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_10_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_10_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_10_element_extension_x_q;
    wire [63:0] dupName_10_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_10_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_11_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_11_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_11_element_extension_x_q;
    wire [0:0] dupName_11_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_11_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_12_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_12_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_12_element_extension_x_q;
    wire [63:0] dupName_12_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_12_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_13_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_13_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_13_element_extension_x_q;
    wire [0:0] dupName_13_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_13_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_14_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_14_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_14_element_extension_x_q;
    wire [63:0] dupName_14_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_14_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_15_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_15_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_15_element_extension_x_q;
    wire [0:0] dupName_15_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_15_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_16_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_16_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_16_element_extension_x_q;
    wire [63:0] dupName_16_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_16_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_17_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_17_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_17_element_extension_x_q;
    wire [0:0] dupName_17_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_17_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_18_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_18_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_18_element_extension_x_q;
    wire [63:0] dupName_18_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_18_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_19_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_19_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_19_element_extension_x_q;
    wire [0:0] dupName_19_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_19_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_20_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_20_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_20_element_extension_x_q;
    wire [63:0] dupName_20_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_20_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_21_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_21_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_21_element_extension_x_q;
    wire [0:0] dupName_21_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_21_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_22_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_22_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_22_element_extension_x_q;
    wire [63:0] dupName_22_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_22_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_23_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_23_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_23_element_extension_x_q;
    wire [0:0] dupName_23_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_23_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_24_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_24_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_24_element_extension_x_q;
    wire [63:0] dupName_24_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_24_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_25_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_25_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_25_element_extension_x_q;
    wire [0:0] dupName_25_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_25_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_26_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_26_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_26_element_extension_x_q;
    wire [63:0] dupName_26_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_26_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_27_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_27_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_27_element_extension_x_q;
    wire [0:0] dupName_27_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_27_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_28_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_28_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_28_element_extension_x_q;
    wire [63:0] dupName_28_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_28_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_29_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_29_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_29_element_extension_x_q;
    wire [0:0] dupName_29_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_29_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_30_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_30_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_30_element_extension_x_q;
    wire [63:0] dupName_30_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_30_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_31_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_31_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_31_element_extension_x_q;
    wire [0:0] dupName_31_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_31_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_32_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_32_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_32_element_extension_x_q;
    wire [63:0] dupName_32_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_32_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_33_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_33_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_33_element_extension_x_q;
    wire [0:0] dupName_33_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_33_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_34_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_34_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_34_element_extension_x_q;
    wire [63:0] dupName_34_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_34_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_35_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_35_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_35_element_extension_x_q;
    wire [0:0] dupName_35_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_35_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_36_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_36_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_36_element_extension_x_q;
    wire [63:0] dupName_36_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_36_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_37_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_37_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_37_element_extension_x_q;
    wire [0:0] dupName_37_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_37_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_38_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_38_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_38_element_extension_x_q;
    wire [63:0] dupName_38_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_38_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_39_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_39_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_39_element_extension_x_q;
    wire [0:0] dupName_39_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_39_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_40_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_40_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_40_element_extension_x_q;
    wire [63:0] dupName_40_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_40_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_41_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_41_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_41_element_extension_x_q;
    wire [0:0] dupName_41_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_41_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_42_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_42_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_42_element_extension_x_q;
    wire [63:0] dupName_42_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_42_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_43_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_43_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_43_element_extension_x_q;
    wire [0:0] dupName_43_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_43_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_44_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_44_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_44_element_extension_x_q;
    wire [63:0] dupName_44_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_44_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_45_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_45_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_45_element_extension_x_q;
    wire [0:0] dupName_45_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_45_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_46_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_46_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_46_element_extension_x_q;
    wire [63:0] dupName_46_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_46_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_47_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_47_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_47_element_extension_x_q;
    wire [0:0] dupName_47_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_47_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_48_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_48_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_48_element_extension_x_q;
    wire [63:0] dupName_48_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_48_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_49_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_49_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_49_element_extension_x_q;
    wire [0:0] dupName_49_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_49_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_50_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_50_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_50_element_extension_x_q;
    wire [63:0] dupName_50_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_50_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_51_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_51_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_51_element_extension_x_q;
    wire [0:0] dupName_51_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_51_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_52_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_52_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_52_element_extension_x_q;
    wire [63:0] dupName_52_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_52_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_53_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_53_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_53_element_extension_x_q;
    wire [0:0] dupName_53_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_53_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_54_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_54_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_54_element_extension_x_q;
    wire [63:0] dupName_54_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_54_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_55_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_55_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_55_element_extension_x_q;
    wire [0:0] dupName_55_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_55_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_56_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_56_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_56_element_extension_x_q;
    wire [63:0] dupName_56_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_56_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_57_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_57_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_57_element_extension_x_q;
    wire [0:0] dupName_57_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_57_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_58_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_58_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_58_element_extension_x_q;
    wire [63:0] dupName_58_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_58_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_59_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_59_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_59_element_extension_x_q;
    wire [0:0] dupName_59_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_59_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_60_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_60_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_60_element_extension_x_q;
    wire [63:0] dupName_60_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_60_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_61_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_61_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_61_element_extension_x_q;
    wire [0:0] dupName_61_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_61_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_62_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_62_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_62_element_extension_x_q;
    wire [63:0] dupName_62_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_62_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_63_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_63_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_63_element_extension_x_q;
    wire [0:0] dupName_63_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_63_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_64_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_64_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_64_element_extension_x_q;
    wire [63:0] dupName_64_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_64_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_65_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_65_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_65_element_extension_x_q;
    wire [0:0] dupName_65_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_65_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_66_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_66_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_66_element_extension_x_q;
    wire [63:0] dupName_66_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_66_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_67_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_67_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_67_element_extension_x_q;
    wire [0:0] dupName_67_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_67_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_68_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_68_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_68_element_extension_x_q;
    wire [63:0] dupName_68_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_68_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_69_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_69_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_69_element_extension_x_q;
    wire [0:0] dupName_69_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_69_ip_dsdk_adapt_cast_x_b;
    wire [0:0] dupName_70_adapt_scalar_trunc_x_in;
    wire [0:0] dupName_70_adapt_scalar_trunc_x_q;
    wire [7:0] dupName_70_element_extension_x_q;
    wire [63:0] dupName_70_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_71_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_72_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_73_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_74_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_75_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_76_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_77_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_78_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_79_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_80_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_81_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_82_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_83_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_84_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_85_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_86_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_87_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_88_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_89_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_90_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_91_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_92_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_93_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_94_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_95_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_96_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_97_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_98_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_99_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_100_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_101_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_102_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_103_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_104_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_105_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_106_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_107_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_108_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_109_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_110_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_111_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_112_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_113_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_114_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_115_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_116_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_117_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_118_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_119_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_120_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_121_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_122_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_123_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_124_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_125_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_126_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_127_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_128_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_129_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_130_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_131_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_132_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_133_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_134_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_135_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_136_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_137_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_138_ip_dsdk_adapt_bitselect_x_b;
    wire [63:0] dupName_139_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_140_ip_dsdk_adapt_bitselect_x_b;
    wire [0:0] dupName_141_ip_dsdk_adapt_bitselect_x_b;


    // c_i7_0gr(CONSTANT,6)
    assign c_i7_0gr_q = 7'b0000000;

    // dupName_70_element_extension_x(BITJOIN,431)
    assign dupName_70_element_extension_x_q = {c_i7_0gr_q, in_i_data_142};

    // dupName_69_element_extension_x(BITJOIN,426)
    assign dupName_69_element_extension_x_q = {c_i7_0gr_q, in_i_data_141};

    // c_i48_0gr(CONSTANT,4)
    assign c_i48_0gr_q = 48'b000000000000000000000000000000000000000000000000;

    // dupName_68_element_extension_x(BITJOIN,421)
    assign dupName_68_element_extension_x_q = {c_i7_0gr_q, in_i_data_139};

    // dupName_67_element_extension_x(BITJOIN,416)
    assign dupName_67_element_extension_x_q = {c_i7_0gr_q, in_i_data_138};

    // c_i40_0gr(CONSTANT,3)
    assign c_i40_0gr_q = 40'b0000000000000000000000000000000000000000;

    // dupName_66_element_extension_x(BITJOIN,411)
    assign dupName_66_element_extension_x_q = {c_i7_0gr_q, in_i_data_134};

    // dupName_65_element_extension_x(BITJOIN,406)
    assign dupName_65_element_extension_x_q = {c_i7_0gr_q, in_i_data_133};

    // dupName_64_element_extension_x(BITJOIN,401)
    assign dupName_64_element_extension_x_q = {c_i7_0gr_q, in_i_data_132};

    // dupName_63_element_extension_x(BITJOIN,396)
    assign dupName_63_element_extension_x_q = {c_i7_0gr_q, in_i_data_130};

    // dupName_62_element_extension_x(BITJOIN,390)
    assign dupName_62_element_extension_x_q = {c_i7_0gr_q, in_i_data_128};

    // dupName_61_element_extension_x(BITJOIN,384)
    assign dupName_61_element_extension_x_q = {c_i7_0gr_q, in_i_data_126};

    // dupName_60_element_extension_x(BITJOIN,378)
    assign dupName_60_element_extension_x_q = {c_i7_0gr_q, in_i_data_124};

    // dupName_59_element_extension_x(BITJOIN,372)
    assign dupName_59_element_extension_x_q = {c_i7_0gr_q, in_i_data_122};

    // dupName_58_element_extension_x(BITJOIN,366)
    assign dupName_58_element_extension_x_q = {c_i7_0gr_q, in_i_data_120};

    // dupName_57_element_extension_x(BITJOIN,360)
    assign dupName_57_element_extension_x_q = {c_i7_0gr_q, in_i_data_118};

    // dupName_56_element_extension_x(BITJOIN,354)
    assign dupName_56_element_extension_x_q = {c_i7_0gr_q, in_i_data_116};

    // dupName_55_element_extension_x(BITJOIN,348)
    assign dupName_55_element_extension_x_q = {c_i7_0gr_q, in_i_data_114};

    // dupName_54_element_extension_x(BITJOIN,342)
    assign dupName_54_element_extension_x_q = {c_i7_0gr_q, in_i_data_112};

    // dupName_53_element_extension_x(BITJOIN,336)
    assign dupName_53_element_extension_x_q = {c_i7_0gr_q, in_i_data_110};

    // dupName_52_element_extension_x(BITJOIN,330)
    assign dupName_52_element_extension_x_q = {c_i7_0gr_q, in_i_data_108};

    // dupName_51_element_extension_x(BITJOIN,324)
    assign dupName_51_element_extension_x_q = {c_i7_0gr_q, in_i_data_106};

    // dupName_50_element_extension_x(BITJOIN,318)
    assign dupName_50_element_extension_x_q = {c_i7_0gr_q, in_i_data_104};

    // dupName_49_element_extension_x(BITJOIN,312)
    assign dupName_49_element_extension_x_q = {c_i7_0gr_q, in_i_data_102};

    // dupName_48_element_extension_x(BITJOIN,306)
    assign dupName_48_element_extension_x_q = {c_i7_0gr_q, in_i_data_100};

    // dupName_47_element_extension_x(BITJOIN,300)
    assign dupName_47_element_extension_x_q = {c_i7_0gr_q, in_i_data_98};

    // dupName_46_element_extension_x(BITJOIN,294)
    assign dupName_46_element_extension_x_q = {c_i7_0gr_q, in_i_data_96};

    // dupName_45_element_extension_x(BITJOIN,288)
    assign dupName_45_element_extension_x_q = {c_i7_0gr_q, in_i_data_94};

    // dupName_44_element_extension_x(BITJOIN,282)
    assign dupName_44_element_extension_x_q = {c_i7_0gr_q, in_i_data_92};

    // dupName_43_element_extension_x(BITJOIN,276)
    assign dupName_43_element_extension_x_q = {c_i7_0gr_q, in_i_data_90};

    // dupName_42_element_extension_x(BITJOIN,270)
    assign dupName_42_element_extension_x_q = {c_i7_0gr_q, in_i_data_88};

    // dupName_41_element_extension_x(BITJOIN,264)
    assign dupName_41_element_extension_x_q = {c_i7_0gr_q, in_i_data_86};

    // dupName_40_element_extension_x(BITJOIN,258)
    assign dupName_40_element_extension_x_q = {c_i7_0gr_q, in_i_data_84};

    // dupName_39_element_extension_x(BITJOIN,252)
    assign dupName_39_element_extension_x_q = {c_i7_0gr_q, in_i_data_82};

    // dupName_38_element_extension_x(BITJOIN,246)
    assign dupName_38_element_extension_x_q = {c_i7_0gr_q, in_i_data_80};

    // dupName_37_element_extension_x(BITJOIN,240)
    assign dupName_37_element_extension_x_q = {c_i7_0gr_q, in_i_data_78};

    // dupName_36_element_extension_x(BITJOIN,234)
    assign dupName_36_element_extension_x_q = {c_i7_0gr_q, in_i_data_76};

    // dupName_35_element_extension_x(BITJOIN,228)
    assign dupName_35_element_extension_x_q = {c_i7_0gr_q, in_i_data_74};

    // dupName_34_element_extension_x(BITJOIN,222)
    assign dupName_34_element_extension_x_q = {c_i7_0gr_q, in_i_data_72};

    // dupName_33_element_extension_x(BITJOIN,216)
    assign dupName_33_element_extension_x_q = {c_i7_0gr_q, in_i_data_70};

    // dupName_32_element_extension_x(BITJOIN,210)
    assign dupName_32_element_extension_x_q = {c_i7_0gr_q, in_i_data_68};

    // dupName_31_element_extension_x(BITJOIN,204)
    assign dupName_31_element_extension_x_q = {c_i7_0gr_q, in_i_data_66};

    // dupName_30_element_extension_x(BITJOIN,198)
    assign dupName_30_element_extension_x_q = {c_i7_0gr_q, in_i_data_64};

    // dupName_29_element_extension_x(BITJOIN,192)
    assign dupName_29_element_extension_x_q = {c_i7_0gr_q, in_i_data_62};

    // dupName_28_element_extension_x(BITJOIN,186)
    assign dupName_28_element_extension_x_q = {c_i7_0gr_q, in_i_data_60};

    // dupName_27_element_extension_x(BITJOIN,180)
    assign dupName_27_element_extension_x_q = {c_i7_0gr_q, in_i_data_58};

    // dupName_26_element_extension_x(BITJOIN,174)
    assign dupName_26_element_extension_x_q = {c_i7_0gr_q, in_i_data_56};

    // dupName_25_element_extension_x(BITJOIN,168)
    assign dupName_25_element_extension_x_q = {c_i7_0gr_q, in_i_data_54};

    // dupName_24_element_extension_x(BITJOIN,162)
    assign dupName_24_element_extension_x_q = {c_i7_0gr_q, in_i_data_52};

    // dupName_23_element_extension_x(BITJOIN,156)
    assign dupName_23_element_extension_x_q = {c_i7_0gr_q, in_i_data_50};

    // dupName_22_element_extension_x(BITJOIN,150)
    assign dupName_22_element_extension_x_q = {c_i7_0gr_q, in_i_data_48};

    // dupName_21_element_extension_x(BITJOIN,144)
    assign dupName_21_element_extension_x_q = {c_i7_0gr_q, in_i_data_46};

    // dupName_20_element_extension_x(BITJOIN,138)
    assign dupName_20_element_extension_x_q = {c_i7_0gr_q, in_i_data_44};

    // dupName_19_element_extension_x(BITJOIN,132)
    assign dupName_19_element_extension_x_q = {c_i7_0gr_q, in_i_data_42};

    // dupName_18_element_extension_x(BITJOIN,126)
    assign dupName_18_element_extension_x_q = {c_i7_0gr_q, in_i_data_40};

    // dupName_17_element_extension_x(BITJOIN,120)
    assign dupName_17_element_extension_x_q = {c_i7_0gr_q, in_i_data_38};

    // dupName_16_element_extension_x(BITJOIN,114)
    assign dupName_16_element_extension_x_q = {c_i7_0gr_q, in_i_data_36};

    // dupName_15_element_extension_x(BITJOIN,108)
    assign dupName_15_element_extension_x_q = {c_i7_0gr_q, in_i_data_34};

    // dupName_14_element_extension_x(BITJOIN,102)
    assign dupName_14_element_extension_x_q = {c_i7_0gr_q, in_i_data_32};

    // dupName_13_element_extension_x(BITJOIN,96)
    assign dupName_13_element_extension_x_q = {c_i7_0gr_q, in_i_data_30};

    // dupName_12_element_extension_x(BITJOIN,90)
    assign dupName_12_element_extension_x_q = {c_i7_0gr_q, in_i_data_28};

    // dupName_11_element_extension_x(BITJOIN,84)
    assign dupName_11_element_extension_x_q = {c_i7_0gr_q, in_i_data_26};

    // dupName_10_element_extension_x(BITJOIN,78)
    assign dupName_10_element_extension_x_q = {c_i7_0gr_q, in_i_data_24};

    // dupName_9_element_extension_x(BITJOIN,72)
    assign dupName_9_element_extension_x_q = {c_i7_0gr_q, in_i_data_22};

    // dupName_8_element_extension_x(BITJOIN,66)
    assign dupName_8_element_extension_x_q = {c_i7_0gr_q, in_i_data_20};

    // dupName_7_element_extension_x(BITJOIN,60)
    assign dupName_7_element_extension_x_q = {c_i7_0gr_q, in_i_data_18};

    // dupName_6_element_extension_x(BITJOIN,54)
    assign dupName_6_element_extension_x_q = {c_i7_0gr_q, in_i_data_16};

    // dupName_5_element_extension_x(BITJOIN,48)
    assign dupName_5_element_extension_x_q = {c_i7_0gr_q, in_i_data_14};

    // dupName_4_element_extension_x(BITJOIN,42)
    assign dupName_4_element_extension_x_q = {c_i7_0gr_q, in_i_data_12};

    // dupName_3_element_extension_x(BITJOIN,36)
    assign dupName_3_element_extension_x_q = {c_i7_0gr_q, in_i_data_10};

    // dupName_2_element_extension_x(BITJOIN,30)
    assign dupName_2_element_extension_x_q = {c_i7_0gr_q, in_i_data_8};

    // dupName_1_element_extension_x(BITJOIN,24)
    assign dupName_1_element_extension_x_q = {c_i7_0gr_q, in_i_data_6};

    // dupName_0_element_extension_x(BITJOIN,18)
    assign dupName_0_element_extension_x_q = {c_i7_0gr_q, in_i_data_3};

    // c_i56_0gr(CONSTANT,5)
    assign c_i56_0gr_q = 56'b00000000000000000000000000000000000000000000000000000000;

    // element_extension(BITJOIN,8)
    assign element_extension_q = {c_i7_0gr_q, in_i_data_0};

    // dsdk_ip_adapt_bitjoin(BITJOIN,7)
    assign dsdk_ip_adapt_bitjoin_q = {c_i48_0gr_q, dupName_70_element_extension_x_q, dupName_69_element_extension_x_q, in_i_data_140, c_i48_0gr_q, dupName_68_element_extension_x_q, dupName_67_element_extension_x_q, in_i_data_137, in_i_data_136, in_i_data_135, c_i40_0gr_q, dupName_66_element_extension_x_q, dupName_65_element_extension_x_q, dupName_64_element_extension_x_q, in_i_data_131, c_i56_0gr_q, dupName_63_element_extension_x_q, in_i_data_129, c_i56_0gr_q, dupName_62_element_extension_x_q, in_i_data_127, c_i56_0gr_q, dupName_61_element_extension_x_q, in_i_data_125, c_i56_0gr_q, dupName_60_element_extension_x_q, in_i_data_123, c_i56_0gr_q, dupName_59_element_extension_x_q, in_i_data_121, c_i56_0gr_q, dupName_58_element_extension_x_q, in_i_data_119, c_i56_0gr_q, dupName_57_element_extension_x_q, in_i_data_117, c_i56_0gr_q, dupName_56_element_extension_x_q, in_i_data_115, c_i56_0gr_q, dupName_55_element_extension_x_q, in_i_data_113, c_i56_0gr_q, dupName_54_element_extension_x_q, in_i_data_111, c_i56_0gr_q, dupName_53_element_extension_x_q, in_i_data_109, c_i56_0gr_q, dupName_52_element_extension_x_q, in_i_data_107, c_i56_0gr_q, dupName_51_element_extension_x_q, in_i_data_105, c_i56_0gr_q, dupName_50_element_extension_x_q, in_i_data_103, c_i56_0gr_q, dupName_49_element_extension_x_q, in_i_data_101, c_i56_0gr_q, dupName_48_element_extension_x_q, in_i_data_99, c_i56_0gr_q, dupName_47_element_extension_x_q, in_i_data_97, c_i56_0gr_q, dupName_46_element_extension_x_q, in_i_data_95, c_i56_0gr_q, dupName_45_element_extension_x_q, in_i_data_93, c_i56_0gr_q, dupName_44_element_extension_x_q, in_i_data_91, c_i56_0gr_q, dupName_43_element_extension_x_q, in_i_data_89, c_i56_0gr_q, dupName_42_element_extension_x_q, in_i_data_87, c_i56_0gr_q, dupName_41_element_extension_x_q, in_i_data_85, c_i56_0gr_q, dupName_40_element_extension_x_q, in_i_data_83, c_i56_0gr_q, dupName_39_element_extension_x_q, in_i_data_81, c_i56_0gr_q, dupName_38_element_extension_x_q, in_i_data_79, c_i56_0gr_q, dupName_37_element_extension_x_q, in_i_data_77, c_i56_0gr_q, dupName_36_element_extension_x_q, in_i_data_75, c_i56_0gr_q, dupName_35_element_extension_x_q, in_i_data_73, c_i56_0gr_q, dupName_34_element_extension_x_q, in_i_data_71, c_i56_0gr_q, dupName_33_element_extension_x_q, in_i_data_69, c_i56_0gr_q, dupName_32_element_extension_x_q, in_i_data_67, c_i56_0gr_q, dupName_31_element_extension_x_q, in_i_data_65, c_i56_0gr_q, dupName_30_element_extension_x_q, in_i_data_63, c_i56_0gr_q, dupName_29_element_extension_x_q, in_i_data_61, c_i56_0gr_q, dupName_28_element_extension_x_q, in_i_data_59, c_i56_0gr_q, dupName_27_element_extension_x_q, in_i_data_57, c_i56_0gr_q, dupName_26_element_extension_x_q, in_i_data_55, c_i56_0gr_q, dupName_25_element_extension_x_q, in_i_data_53, c_i56_0gr_q, dupName_24_element_extension_x_q, in_i_data_51, c_i56_0gr_q, dupName_23_element_extension_x_q, in_i_data_49, c_i56_0gr_q, dupName_22_element_extension_x_q, in_i_data_47, c_i56_0gr_q, dupName_21_element_extension_x_q, in_i_data_45, c_i56_0gr_q, dupName_20_element_extension_x_q, in_i_data_43, c_i56_0gr_q, dupName_19_element_extension_x_q, in_i_data_41, c_i56_0gr_q, dupName_18_element_extension_x_q, in_i_data_39, c_i56_0gr_q, dupName_17_element_extension_x_q, in_i_data_37, c_i56_0gr_q, dupName_16_element_extension_x_q, in_i_data_35, c_i56_0gr_q, dupName_15_element_extension_x_q, in_i_data_33, c_i56_0gr_q, dupName_14_element_extension_x_q, in_i_data_31, c_i56_0gr_q, dupName_13_element_extension_x_q, in_i_data_29, c_i56_0gr_q, dupName_12_element_extension_x_q, in_i_data_27, c_i56_0gr_q, dupName_11_element_extension_x_q, in_i_data_25, c_i56_0gr_q, dupName_10_element_extension_x_q, in_i_data_23, c_i56_0gr_q, dupName_9_element_extension_x_q, in_i_data_21, c_i56_0gr_q, dupName_8_element_extension_x_q, in_i_data_19, c_i56_0gr_q, dupName_7_element_extension_x_q, in_i_data_17, c_i56_0gr_q, dupName_6_element_extension_x_q, in_i_data_15, c_i56_0gr_q, dupName_5_element_extension_x_q, in_i_data_13, c_i56_0gr_q, dupName_4_element_extension_x_q, in_i_data_11, c_i56_0gr_q, dupName_3_element_extension_x_q, in_i_data_9, c_i56_0gr_q, dupName_2_element_extension_x_q, in_i_data_7, c_i56_0gr_q, dupName_1_element_extension_x_q, in_i_data_5, in_i_data_4, c_i56_0gr_q, dupName_0_element_extension_x_q, in_i_data_2, in_i_data_1, c_i56_0gr_q, element_extension_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688(EXTIFACE,9)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_data = dsdk_ip_adapt_bitjoin_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(1024),
        .ASYNC_RESET(0),
        .RESET_EXTERNALLY_HELD(0),
        .STYLE("hs"),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(8896)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688 (
        .i_data(dsdk_ip_adapt_bitjoin_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,13)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_stall;

    // dupName_141_ip_dsdk_adapt_bitselect_x(BITSELECT,503)
    assign dupName_141_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8840:8840];

    // dupName_70_adapt_scalar_trunc_x(ROUND,429)
    assign dupName_70_adapt_scalar_trunc_x_in = dupName_141_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_70_adapt_scalar_trunc_x_q = dupName_70_adapt_scalar_trunc_x_in[0:0];

    // dupName_140_ip_dsdk_adapt_bitselect_x(BITSELECT,502)
    assign dupName_140_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8832:8832];

    // dupName_69_adapt_scalar_trunc_x(ROUND,424)
    assign dupName_69_adapt_scalar_trunc_x_in = dupName_140_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_69_adapt_scalar_trunc_x_q = dupName_69_adapt_scalar_trunc_x_in[0:0];

    // dupName_139_ip_dsdk_adapt_bitselect_x(BITSELECT,501)
    assign dupName_139_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8831:8768];

    // dupName_69_ip_dsdk_adapt_cast_x(BITSELECT,428)
    assign dupName_69_ip_dsdk_adapt_cast_x_b = dupName_139_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_138_ip_dsdk_adapt_bitselect_x(BITSELECT,500)
    assign dupName_138_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8712:8712];

    // dupName_68_adapt_scalar_trunc_x(ROUND,419)
    assign dupName_68_adapt_scalar_trunc_x_in = dupName_138_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_68_adapt_scalar_trunc_x_q = dupName_68_adapt_scalar_trunc_x_in[0:0];

    // dupName_137_ip_dsdk_adapt_bitselect_x(BITSELECT,499)
    assign dupName_137_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8704:8704];

    // dupName_67_adapt_scalar_trunc_x(ROUND,414)
    assign dupName_67_adapt_scalar_trunc_x_in = dupName_137_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_67_adapt_scalar_trunc_x_q = dupName_67_adapt_scalar_trunc_x_in[0:0];

    // dupName_136_ip_dsdk_adapt_bitselect_x(BITSELECT,498)
    assign dupName_136_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8703:8640];

    // dupName_68_ip_dsdk_adapt_cast_x(BITSELECT,423)
    assign dupName_68_ip_dsdk_adapt_cast_x_b = dupName_136_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_135_ip_dsdk_adapt_bitselect_x(BITSELECT,497)
    assign dupName_135_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8639:8576];

    // dupName_67_ip_dsdk_adapt_cast_x(BITSELECT,418)
    assign dupName_67_ip_dsdk_adapt_cast_x_b = dupName_135_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_134_ip_dsdk_adapt_bitselect_x(BITSELECT,496)
    assign dupName_134_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8575:8512];

    // dupName_66_ip_dsdk_adapt_cast_x(BITSELECT,413)
    assign dupName_66_ip_dsdk_adapt_cast_x_b = dupName_134_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_133_ip_dsdk_adapt_bitselect_x(BITSELECT,495)
    assign dupName_133_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8464:8464];

    // dupName_66_adapt_scalar_trunc_x(ROUND,409)
    assign dupName_66_adapt_scalar_trunc_x_in = dupName_133_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_66_adapt_scalar_trunc_x_q = dupName_66_adapt_scalar_trunc_x_in[0:0];

    // dupName_132_ip_dsdk_adapt_bitselect_x(BITSELECT,494)
    assign dupName_132_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8456:8456];

    // dupName_65_adapt_scalar_trunc_x(ROUND,404)
    assign dupName_65_adapt_scalar_trunc_x_in = dupName_132_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_65_adapt_scalar_trunc_x_q = dupName_65_adapt_scalar_trunc_x_in[0:0];

    // dupName_131_ip_dsdk_adapt_bitselect_x(BITSELECT,493)
    assign dupName_131_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8448:8448];

    // dupName_64_adapt_scalar_trunc_x(ROUND,399)
    assign dupName_64_adapt_scalar_trunc_x_in = dupName_131_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_64_adapt_scalar_trunc_x_q = dupName_64_adapt_scalar_trunc_x_in[0:0];

    // dupName_130_ip_dsdk_adapt_bitselect_x(BITSELECT,492)
    assign dupName_130_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8447:8384];

    // dupName_65_ip_dsdk_adapt_cast_x(BITSELECT,408)
    assign dupName_65_ip_dsdk_adapt_cast_x_b = dupName_130_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_129_ip_dsdk_adapt_bitselect_x(BITSELECT,491)
    assign dupName_129_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8320:8320];

    // dupName_63_adapt_scalar_trunc_x(ROUND,393)
    assign dupName_63_adapt_scalar_trunc_x_in = dupName_129_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_63_adapt_scalar_trunc_x_q = dupName_63_adapt_scalar_trunc_x_in[0:0];

    // dupName_128_ip_dsdk_adapt_bitselect_x(BITSELECT,490)
    assign dupName_128_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8319:8256];

    // dupName_64_ip_dsdk_adapt_cast_x(BITSELECT,403)
    assign dupName_64_ip_dsdk_adapt_cast_x_b = dupName_128_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_127_ip_dsdk_adapt_bitselect_x(BITSELECT,489)
    assign dupName_127_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8192:8192];

    // dupName_62_adapt_scalar_trunc_x(ROUND,387)
    assign dupName_62_adapt_scalar_trunc_x_in = dupName_127_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_62_adapt_scalar_trunc_x_q = dupName_62_adapt_scalar_trunc_x_in[0:0];

    // dupName_126_ip_dsdk_adapt_bitselect_x(BITSELECT,488)
    assign dupName_126_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8191:8128];

    // dupName_63_ip_dsdk_adapt_cast_x(BITSELECT,398)
    assign dupName_63_ip_dsdk_adapt_cast_x_b = dupName_126_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_125_ip_dsdk_adapt_bitselect_x(BITSELECT,487)
    assign dupName_125_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8064:8064];

    // dupName_61_adapt_scalar_trunc_x(ROUND,381)
    assign dupName_61_adapt_scalar_trunc_x_in = dupName_125_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_61_adapt_scalar_trunc_x_q = dupName_61_adapt_scalar_trunc_x_in[0:0];

    // dupName_124_ip_dsdk_adapt_bitselect_x(BITSELECT,486)
    assign dupName_124_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[8063:8000];

    // dupName_62_ip_dsdk_adapt_cast_x(BITSELECT,392)
    assign dupName_62_ip_dsdk_adapt_cast_x_b = dupName_124_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_123_ip_dsdk_adapt_bitselect_x(BITSELECT,485)
    assign dupName_123_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7936:7936];

    // dupName_60_adapt_scalar_trunc_x(ROUND,375)
    assign dupName_60_adapt_scalar_trunc_x_in = dupName_123_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_60_adapt_scalar_trunc_x_q = dupName_60_adapt_scalar_trunc_x_in[0:0];

    // dupName_122_ip_dsdk_adapt_bitselect_x(BITSELECT,484)
    assign dupName_122_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7935:7872];

    // dupName_61_ip_dsdk_adapt_cast_x(BITSELECT,386)
    assign dupName_61_ip_dsdk_adapt_cast_x_b = dupName_122_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_121_ip_dsdk_adapt_bitselect_x(BITSELECT,483)
    assign dupName_121_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7808:7808];

    // dupName_59_adapt_scalar_trunc_x(ROUND,369)
    assign dupName_59_adapt_scalar_trunc_x_in = dupName_121_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_59_adapt_scalar_trunc_x_q = dupName_59_adapt_scalar_trunc_x_in[0:0];

    // dupName_120_ip_dsdk_adapt_bitselect_x(BITSELECT,482)
    assign dupName_120_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7807:7744];

    // dupName_60_ip_dsdk_adapt_cast_x(BITSELECT,380)
    assign dupName_60_ip_dsdk_adapt_cast_x_b = dupName_120_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_119_ip_dsdk_adapt_bitselect_x(BITSELECT,481)
    assign dupName_119_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7680:7680];

    // dupName_58_adapt_scalar_trunc_x(ROUND,363)
    assign dupName_58_adapt_scalar_trunc_x_in = dupName_119_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_58_adapt_scalar_trunc_x_q = dupName_58_adapt_scalar_trunc_x_in[0:0];

    // dupName_118_ip_dsdk_adapt_bitselect_x(BITSELECT,480)
    assign dupName_118_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7679:7616];

    // dupName_59_ip_dsdk_adapt_cast_x(BITSELECT,374)
    assign dupName_59_ip_dsdk_adapt_cast_x_b = dupName_118_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_117_ip_dsdk_adapt_bitselect_x(BITSELECT,479)
    assign dupName_117_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7552:7552];

    // dupName_57_adapt_scalar_trunc_x(ROUND,357)
    assign dupName_57_adapt_scalar_trunc_x_in = dupName_117_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_57_adapt_scalar_trunc_x_q = dupName_57_adapt_scalar_trunc_x_in[0:0];

    // dupName_116_ip_dsdk_adapt_bitselect_x(BITSELECT,478)
    assign dupName_116_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7551:7488];

    // dupName_58_ip_dsdk_adapt_cast_x(BITSELECT,368)
    assign dupName_58_ip_dsdk_adapt_cast_x_b = dupName_116_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_115_ip_dsdk_adapt_bitselect_x(BITSELECT,477)
    assign dupName_115_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7424:7424];

    // dupName_56_adapt_scalar_trunc_x(ROUND,351)
    assign dupName_56_adapt_scalar_trunc_x_in = dupName_115_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_56_adapt_scalar_trunc_x_q = dupName_56_adapt_scalar_trunc_x_in[0:0];

    // dupName_114_ip_dsdk_adapt_bitselect_x(BITSELECT,476)
    assign dupName_114_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7423:7360];

    // dupName_57_ip_dsdk_adapt_cast_x(BITSELECT,362)
    assign dupName_57_ip_dsdk_adapt_cast_x_b = dupName_114_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_113_ip_dsdk_adapt_bitselect_x(BITSELECT,475)
    assign dupName_113_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7296:7296];

    // dupName_55_adapt_scalar_trunc_x(ROUND,345)
    assign dupName_55_adapt_scalar_trunc_x_in = dupName_113_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_55_adapt_scalar_trunc_x_q = dupName_55_adapt_scalar_trunc_x_in[0:0];

    // dupName_112_ip_dsdk_adapt_bitselect_x(BITSELECT,474)
    assign dupName_112_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7295:7232];

    // dupName_56_ip_dsdk_adapt_cast_x(BITSELECT,356)
    assign dupName_56_ip_dsdk_adapt_cast_x_b = dupName_112_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_111_ip_dsdk_adapt_bitselect_x(BITSELECT,473)
    assign dupName_111_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7168:7168];

    // dupName_54_adapt_scalar_trunc_x(ROUND,339)
    assign dupName_54_adapt_scalar_trunc_x_in = dupName_111_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_54_adapt_scalar_trunc_x_q = dupName_54_adapt_scalar_trunc_x_in[0:0];

    // dupName_110_ip_dsdk_adapt_bitselect_x(BITSELECT,472)
    assign dupName_110_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7167:7104];

    // dupName_55_ip_dsdk_adapt_cast_x(BITSELECT,350)
    assign dupName_55_ip_dsdk_adapt_cast_x_b = dupName_110_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_109_ip_dsdk_adapt_bitselect_x(BITSELECT,471)
    assign dupName_109_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7040:7040];

    // dupName_53_adapt_scalar_trunc_x(ROUND,333)
    assign dupName_53_adapt_scalar_trunc_x_in = dupName_109_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_53_adapt_scalar_trunc_x_q = dupName_53_adapt_scalar_trunc_x_in[0:0];

    // dupName_108_ip_dsdk_adapt_bitselect_x(BITSELECT,470)
    assign dupName_108_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[7039:6976];

    // dupName_54_ip_dsdk_adapt_cast_x(BITSELECT,344)
    assign dupName_54_ip_dsdk_adapt_cast_x_b = dupName_108_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_107_ip_dsdk_adapt_bitselect_x(BITSELECT,469)
    assign dupName_107_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6912:6912];

    // dupName_52_adapt_scalar_trunc_x(ROUND,327)
    assign dupName_52_adapt_scalar_trunc_x_in = dupName_107_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_52_adapt_scalar_trunc_x_q = dupName_52_adapt_scalar_trunc_x_in[0:0];

    // dupName_106_ip_dsdk_adapt_bitselect_x(BITSELECT,468)
    assign dupName_106_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6911:6848];

    // dupName_53_ip_dsdk_adapt_cast_x(BITSELECT,338)
    assign dupName_53_ip_dsdk_adapt_cast_x_b = dupName_106_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_105_ip_dsdk_adapt_bitselect_x(BITSELECT,467)
    assign dupName_105_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6784:6784];

    // dupName_51_adapt_scalar_trunc_x(ROUND,321)
    assign dupName_51_adapt_scalar_trunc_x_in = dupName_105_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_51_adapt_scalar_trunc_x_q = dupName_51_adapt_scalar_trunc_x_in[0:0];

    // dupName_104_ip_dsdk_adapt_bitselect_x(BITSELECT,466)
    assign dupName_104_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6783:6720];

    // dupName_52_ip_dsdk_adapt_cast_x(BITSELECT,332)
    assign dupName_52_ip_dsdk_adapt_cast_x_b = dupName_104_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_103_ip_dsdk_adapt_bitselect_x(BITSELECT,465)
    assign dupName_103_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6656:6656];

    // dupName_50_adapt_scalar_trunc_x(ROUND,315)
    assign dupName_50_adapt_scalar_trunc_x_in = dupName_103_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_50_adapt_scalar_trunc_x_q = dupName_50_adapt_scalar_trunc_x_in[0:0];

    // dupName_102_ip_dsdk_adapt_bitselect_x(BITSELECT,464)
    assign dupName_102_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6655:6592];

    // dupName_51_ip_dsdk_adapt_cast_x(BITSELECT,326)
    assign dupName_51_ip_dsdk_adapt_cast_x_b = dupName_102_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_101_ip_dsdk_adapt_bitselect_x(BITSELECT,463)
    assign dupName_101_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6528:6528];

    // dupName_49_adapt_scalar_trunc_x(ROUND,309)
    assign dupName_49_adapt_scalar_trunc_x_in = dupName_101_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_49_adapt_scalar_trunc_x_q = dupName_49_adapt_scalar_trunc_x_in[0:0];

    // dupName_100_ip_dsdk_adapt_bitselect_x(BITSELECT,462)
    assign dupName_100_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6527:6464];

    // dupName_50_ip_dsdk_adapt_cast_x(BITSELECT,320)
    assign dupName_50_ip_dsdk_adapt_cast_x_b = dupName_100_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_99_ip_dsdk_adapt_bitselect_x(BITSELECT,461)
    assign dupName_99_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6400:6400];

    // dupName_48_adapt_scalar_trunc_x(ROUND,303)
    assign dupName_48_adapt_scalar_trunc_x_in = dupName_99_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_48_adapt_scalar_trunc_x_q = dupName_48_adapt_scalar_trunc_x_in[0:0];

    // dupName_98_ip_dsdk_adapt_bitselect_x(BITSELECT,460)
    assign dupName_98_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6399:6336];

    // dupName_49_ip_dsdk_adapt_cast_x(BITSELECT,314)
    assign dupName_49_ip_dsdk_adapt_cast_x_b = dupName_98_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_97_ip_dsdk_adapt_bitselect_x(BITSELECT,459)
    assign dupName_97_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6272:6272];

    // dupName_47_adapt_scalar_trunc_x(ROUND,297)
    assign dupName_47_adapt_scalar_trunc_x_in = dupName_97_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_47_adapt_scalar_trunc_x_q = dupName_47_adapt_scalar_trunc_x_in[0:0];

    // dupName_96_ip_dsdk_adapt_bitselect_x(BITSELECT,458)
    assign dupName_96_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6271:6208];

    // dupName_48_ip_dsdk_adapt_cast_x(BITSELECT,308)
    assign dupName_48_ip_dsdk_adapt_cast_x_b = dupName_96_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_95_ip_dsdk_adapt_bitselect_x(BITSELECT,457)
    assign dupName_95_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6144:6144];

    // dupName_46_adapt_scalar_trunc_x(ROUND,291)
    assign dupName_46_adapt_scalar_trunc_x_in = dupName_95_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_46_adapt_scalar_trunc_x_q = dupName_46_adapt_scalar_trunc_x_in[0:0];

    // dupName_94_ip_dsdk_adapt_bitselect_x(BITSELECT,456)
    assign dupName_94_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6143:6080];

    // dupName_47_ip_dsdk_adapt_cast_x(BITSELECT,302)
    assign dupName_47_ip_dsdk_adapt_cast_x_b = dupName_94_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_93_ip_dsdk_adapt_bitselect_x(BITSELECT,455)
    assign dupName_93_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6016:6016];

    // dupName_45_adapt_scalar_trunc_x(ROUND,285)
    assign dupName_45_adapt_scalar_trunc_x_in = dupName_93_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_45_adapt_scalar_trunc_x_q = dupName_45_adapt_scalar_trunc_x_in[0:0];

    // dupName_92_ip_dsdk_adapt_bitselect_x(BITSELECT,454)
    assign dupName_92_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[6015:5952];

    // dupName_46_ip_dsdk_adapt_cast_x(BITSELECT,296)
    assign dupName_46_ip_dsdk_adapt_cast_x_b = dupName_92_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_91_ip_dsdk_adapt_bitselect_x(BITSELECT,453)
    assign dupName_91_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5888:5888];

    // dupName_44_adapt_scalar_trunc_x(ROUND,279)
    assign dupName_44_adapt_scalar_trunc_x_in = dupName_91_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_44_adapt_scalar_trunc_x_q = dupName_44_adapt_scalar_trunc_x_in[0:0];

    // dupName_90_ip_dsdk_adapt_bitselect_x(BITSELECT,452)
    assign dupName_90_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5887:5824];

    // dupName_45_ip_dsdk_adapt_cast_x(BITSELECT,290)
    assign dupName_45_ip_dsdk_adapt_cast_x_b = dupName_90_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_89_ip_dsdk_adapt_bitselect_x(BITSELECT,451)
    assign dupName_89_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5760:5760];

    // dupName_43_adapt_scalar_trunc_x(ROUND,273)
    assign dupName_43_adapt_scalar_trunc_x_in = dupName_89_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_43_adapt_scalar_trunc_x_q = dupName_43_adapt_scalar_trunc_x_in[0:0];

    // dupName_88_ip_dsdk_adapt_bitselect_x(BITSELECT,450)
    assign dupName_88_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5759:5696];

    // dupName_44_ip_dsdk_adapt_cast_x(BITSELECT,284)
    assign dupName_44_ip_dsdk_adapt_cast_x_b = dupName_88_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_87_ip_dsdk_adapt_bitselect_x(BITSELECT,449)
    assign dupName_87_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5632:5632];

    // dupName_42_adapt_scalar_trunc_x(ROUND,267)
    assign dupName_42_adapt_scalar_trunc_x_in = dupName_87_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_42_adapt_scalar_trunc_x_q = dupName_42_adapt_scalar_trunc_x_in[0:0];

    // dupName_86_ip_dsdk_adapt_bitselect_x(BITSELECT,448)
    assign dupName_86_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5631:5568];

    // dupName_43_ip_dsdk_adapt_cast_x(BITSELECT,278)
    assign dupName_43_ip_dsdk_adapt_cast_x_b = dupName_86_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_85_ip_dsdk_adapt_bitselect_x(BITSELECT,447)
    assign dupName_85_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5504:5504];

    // dupName_41_adapt_scalar_trunc_x(ROUND,261)
    assign dupName_41_adapt_scalar_trunc_x_in = dupName_85_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_41_adapt_scalar_trunc_x_q = dupName_41_adapt_scalar_trunc_x_in[0:0];

    // dupName_84_ip_dsdk_adapt_bitselect_x(BITSELECT,446)
    assign dupName_84_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5503:5440];

    // dupName_42_ip_dsdk_adapt_cast_x(BITSELECT,272)
    assign dupName_42_ip_dsdk_adapt_cast_x_b = dupName_84_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_83_ip_dsdk_adapt_bitselect_x(BITSELECT,445)
    assign dupName_83_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5376:5376];

    // dupName_40_adapt_scalar_trunc_x(ROUND,255)
    assign dupName_40_adapt_scalar_trunc_x_in = dupName_83_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_40_adapt_scalar_trunc_x_q = dupName_40_adapt_scalar_trunc_x_in[0:0];

    // dupName_82_ip_dsdk_adapt_bitselect_x(BITSELECT,444)
    assign dupName_82_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5375:5312];

    // dupName_41_ip_dsdk_adapt_cast_x(BITSELECT,266)
    assign dupName_41_ip_dsdk_adapt_cast_x_b = dupName_82_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_81_ip_dsdk_adapt_bitselect_x(BITSELECT,443)
    assign dupName_81_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5248:5248];

    // dupName_39_adapt_scalar_trunc_x(ROUND,249)
    assign dupName_39_adapt_scalar_trunc_x_in = dupName_81_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_39_adapt_scalar_trunc_x_q = dupName_39_adapt_scalar_trunc_x_in[0:0];

    // dupName_80_ip_dsdk_adapt_bitselect_x(BITSELECT,442)
    assign dupName_80_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5247:5184];

    // dupName_40_ip_dsdk_adapt_cast_x(BITSELECT,260)
    assign dupName_40_ip_dsdk_adapt_cast_x_b = dupName_80_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_79_ip_dsdk_adapt_bitselect_x(BITSELECT,441)
    assign dupName_79_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5120:5120];

    // dupName_38_adapt_scalar_trunc_x(ROUND,243)
    assign dupName_38_adapt_scalar_trunc_x_in = dupName_79_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_38_adapt_scalar_trunc_x_q = dupName_38_adapt_scalar_trunc_x_in[0:0];

    // dupName_78_ip_dsdk_adapt_bitselect_x(BITSELECT,440)
    assign dupName_78_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[5119:5056];

    // dupName_39_ip_dsdk_adapt_cast_x(BITSELECT,254)
    assign dupName_39_ip_dsdk_adapt_cast_x_b = dupName_78_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_77_ip_dsdk_adapt_bitselect_x(BITSELECT,439)
    assign dupName_77_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4992:4992];

    // dupName_37_adapt_scalar_trunc_x(ROUND,237)
    assign dupName_37_adapt_scalar_trunc_x_in = dupName_77_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_37_adapt_scalar_trunc_x_q = dupName_37_adapt_scalar_trunc_x_in[0:0];

    // dupName_76_ip_dsdk_adapt_bitselect_x(BITSELECT,438)
    assign dupName_76_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4991:4928];

    // dupName_38_ip_dsdk_adapt_cast_x(BITSELECT,248)
    assign dupName_38_ip_dsdk_adapt_cast_x_b = dupName_76_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_75_ip_dsdk_adapt_bitselect_x(BITSELECT,437)
    assign dupName_75_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4864:4864];

    // dupName_36_adapt_scalar_trunc_x(ROUND,231)
    assign dupName_36_adapt_scalar_trunc_x_in = dupName_75_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_36_adapt_scalar_trunc_x_q = dupName_36_adapt_scalar_trunc_x_in[0:0];

    // dupName_74_ip_dsdk_adapt_bitselect_x(BITSELECT,436)
    assign dupName_74_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4863:4800];

    // dupName_37_ip_dsdk_adapt_cast_x(BITSELECT,242)
    assign dupName_37_ip_dsdk_adapt_cast_x_b = dupName_74_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_73_ip_dsdk_adapt_bitselect_x(BITSELECT,435)
    assign dupName_73_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4736:4736];

    // dupName_35_adapt_scalar_trunc_x(ROUND,225)
    assign dupName_35_adapt_scalar_trunc_x_in = dupName_73_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_35_adapt_scalar_trunc_x_q = dupName_35_adapt_scalar_trunc_x_in[0:0];

    // dupName_72_ip_dsdk_adapt_bitselect_x(BITSELECT,434)
    assign dupName_72_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4735:4672];

    // dupName_36_ip_dsdk_adapt_cast_x(BITSELECT,236)
    assign dupName_36_ip_dsdk_adapt_cast_x_b = dupName_72_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_71_ip_dsdk_adapt_bitselect_x(BITSELECT,433)
    assign dupName_71_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4608:4608];

    // dupName_34_adapt_scalar_trunc_x(ROUND,219)
    assign dupName_34_adapt_scalar_trunc_x_in = dupName_71_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_34_adapt_scalar_trunc_x_q = dupName_34_adapt_scalar_trunc_x_in[0:0];

    // dupName_70_ip_dsdk_adapt_bitselect_x(BITSELECT,432)
    assign dupName_70_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4607:4544];

    // dupName_35_ip_dsdk_adapt_cast_x(BITSELECT,230)
    assign dupName_35_ip_dsdk_adapt_cast_x_b = dupName_70_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_69_ip_dsdk_adapt_bitselect_x(BITSELECT,427)
    assign dupName_69_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4480:4480];

    // dupName_33_adapt_scalar_trunc_x(ROUND,213)
    assign dupName_33_adapt_scalar_trunc_x_in = dupName_69_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_33_adapt_scalar_trunc_x_q = dupName_33_adapt_scalar_trunc_x_in[0:0];

    // dupName_68_ip_dsdk_adapt_bitselect_x(BITSELECT,422)
    assign dupName_68_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4479:4416];

    // dupName_34_ip_dsdk_adapt_cast_x(BITSELECT,224)
    assign dupName_34_ip_dsdk_adapt_cast_x_b = dupName_68_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_67_ip_dsdk_adapt_bitselect_x(BITSELECT,417)
    assign dupName_67_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4352:4352];

    // dupName_32_adapt_scalar_trunc_x(ROUND,207)
    assign dupName_32_adapt_scalar_trunc_x_in = dupName_67_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_32_adapt_scalar_trunc_x_q = dupName_32_adapt_scalar_trunc_x_in[0:0];

    // dupName_66_ip_dsdk_adapt_bitselect_x(BITSELECT,412)
    assign dupName_66_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4351:4288];

    // dupName_33_ip_dsdk_adapt_cast_x(BITSELECT,218)
    assign dupName_33_ip_dsdk_adapt_cast_x_b = dupName_66_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_65_ip_dsdk_adapt_bitselect_x(BITSELECT,407)
    assign dupName_65_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4224:4224];

    // dupName_31_adapt_scalar_trunc_x(ROUND,201)
    assign dupName_31_adapt_scalar_trunc_x_in = dupName_65_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_31_adapt_scalar_trunc_x_q = dupName_31_adapt_scalar_trunc_x_in[0:0];

    // dupName_64_ip_dsdk_adapt_bitselect_x(BITSELECT,402)
    assign dupName_64_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4223:4160];

    // dupName_32_ip_dsdk_adapt_cast_x(BITSELECT,212)
    assign dupName_32_ip_dsdk_adapt_cast_x_b = dupName_64_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_63_ip_dsdk_adapt_bitselect_x(BITSELECT,397)
    assign dupName_63_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4096:4096];

    // dupName_30_adapt_scalar_trunc_x(ROUND,195)
    assign dupName_30_adapt_scalar_trunc_x_in = dupName_63_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_30_adapt_scalar_trunc_x_q = dupName_30_adapt_scalar_trunc_x_in[0:0];

    // dupName_62_ip_dsdk_adapt_bitselect_x(BITSELECT,391)
    assign dupName_62_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[4095:4032];

    // dupName_31_ip_dsdk_adapt_cast_x(BITSELECT,206)
    assign dupName_31_ip_dsdk_adapt_cast_x_b = dupName_62_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_61_ip_dsdk_adapt_bitselect_x(BITSELECT,385)
    assign dupName_61_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3968:3968];

    // dupName_29_adapt_scalar_trunc_x(ROUND,189)
    assign dupName_29_adapt_scalar_trunc_x_in = dupName_61_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_29_adapt_scalar_trunc_x_q = dupName_29_adapt_scalar_trunc_x_in[0:0];

    // dupName_60_ip_dsdk_adapt_bitselect_x(BITSELECT,379)
    assign dupName_60_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3967:3904];

    // dupName_30_ip_dsdk_adapt_cast_x(BITSELECT,200)
    assign dupName_30_ip_dsdk_adapt_cast_x_b = dupName_60_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_59_ip_dsdk_adapt_bitselect_x(BITSELECT,373)
    assign dupName_59_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3840:3840];

    // dupName_28_adapt_scalar_trunc_x(ROUND,183)
    assign dupName_28_adapt_scalar_trunc_x_in = dupName_59_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_28_adapt_scalar_trunc_x_q = dupName_28_adapt_scalar_trunc_x_in[0:0];

    // dupName_58_ip_dsdk_adapt_bitselect_x(BITSELECT,367)
    assign dupName_58_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3839:3776];

    // dupName_29_ip_dsdk_adapt_cast_x(BITSELECT,194)
    assign dupName_29_ip_dsdk_adapt_cast_x_b = dupName_58_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_57_ip_dsdk_adapt_bitselect_x(BITSELECT,361)
    assign dupName_57_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3712:3712];

    // dupName_27_adapt_scalar_trunc_x(ROUND,177)
    assign dupName_27_adapt_scalar_trunc_x_in = dupName_57_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_27_adapt_scalar_trunc_x_q = dupName_27_adapt_scalar_trunc_x_in[0:0];

    // dupName_56_ip_dsdk_adapt_bitselect_x(BITSELECT,355)
    assign dupName_56_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3711:3648];

    // dupName_28_ip_dsdk_adapt_cast_x(BITSELECT,188)
    assign dupName_28_ip_dsdk_adapt_cast_x_b = dupName_56_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_55_ip_dsdk_adapt_bitselect_x(BITSELECT,349)
    assign dupName_55_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3584:3584];

    // dupName_26_adapt_scalar_trunc_x(ROUND,171)
    assign dupName_26_adapt_scalar_trunc_x_in = dupName_55_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_26_adapt_scalar_trunc_x_q = dupName_26_adapt_scalar_trunc_x_in[0:0];

    // dupName_54_ip_dsdk_adapt_bitselect_x(BITSELECT,343)
    assign dupName_54_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3583:3520];

    // dupName_27_ip_dsdk_adapt_cast_x(BITSELECT,182)
    assign dupName_27_ip_dsdk_adapt_cast_x_b = dupName_54_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_53_ip_dsdk_adapt_bitselect_x(BITSELECT,337)
    assign dupName_53_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3456:3456];

    // dupName_25_adapt_scalar_trunc_x(ROUND,165)
    assign dupName_25_adapt_scalar_trunc_x_in = dupName_53_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_25_adapt_scalar_trunc_x_q = dupName_25_adapt_scalar_trunc_x_in[0:0];

    // dupName_52_ip_dsdk_adapt_bitselect_x(BITSELECT,331)
    assign dupName_52_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3455:3392];

    // dupName_26_ip_dsdk_adapt_cast_x(BITSELECT,176)
    assign dupName_26_ip_dsdk_adapt_cast_x_b = dupName_52_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_51_ip_dsdk_adapt_bitselect_x(BITSELECT,325)
    assign dupName_51_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3328:3328];

    // dupName_24_adapt_scalar_trunc_x(ROUND,159)
    assign dupName_24_adapt_scalar_trunc_x_in = dupName_51_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_24_adapt_scalar_trunc_x_q = dupName_24_adapt_scalar_trunc_x_in[0:0];

    // dupName_50_ip_dsdk_adapt_bitselect_x(BITSELECT,319)
    assign dupName_50_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3327:3264];

    // dupName_25_ip_dsdk_adapt_cast_x(BITSELECT,170)
    assign dupName_25_ip_dsdk_adapt_cast_x_b = dupName_50_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_49_ip_dsdk_adapt_bitselect_x(BITSELECT,313)
    assign dupName_49_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3200:3200];

    // dupName_23_adapt_scalar_trunc_x(ROUND,153)
    assign dupName_23_adapt_scalar_trunc_x_in = dupName_49_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_23_adapt_scalar_trunc_x_q = dupName_23_adapt_scalar_trunc_x_in[0:0];

    // dupName_48_ip_dsdk_adapt_bitselect_x(BITSELECT,307)
    assign dupName_48_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3199:3136];

    // dupName_24_ip_dsdk_adapt_cast_x(BITSELECT,164)
    assign dupName_24_ip_dsdk_adapt_cast_x_b = dupName_48_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_47_ip_dsdk_adapt_bitselect_x(BITSELECT,301)
    assign dupName_47_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3072:3072];

    // dupName_22_adapt_scalar_trunc_x(ROUND,147)
    assign dupName_22_adapt_scalar_trunc_x_in = dupName_47_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_22_adapt_scalar_trunc_x_q = dupName_22_adapt_scalar_trunc_x_in[0:0];

    // dupName_46_ip_dsdk_adapt_bitselect_x(BITSELECT,295)
    assign dupName_46_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[3071:3008];

    // dupName_23_ip_dsdk_adapt_cast_x(BITSELECT,158)
    assign dupName_23_ip_dsdk_adapt_cast_x_b = dupName_46_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_45_ip_dsdk_adapt_bitselect_x(BITSELECT,289)
    assign dupName_45_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2944:2944];

    // dupName_21_adapt_scalar_trunc_x(ROUND,141)
    assign dupName_21_adapt_scalar_trunc_x_in = dupName_45_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_21_adapt_scalar_trunc_x_q = dupName_21_adapt_scalar_trunc_x_in[0:0];

    // dupName_44_ip_dsdk_adapt_bitselect_x(BITSELECT,283)
    assign dupName_44_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2943:2880];

    // dupName_22_ip_dsdk_adapt_cast_x(BITSELECT,152)
    assign dupName_22_ip_dsdk_adapt_cast_x_b = dupName_44_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_43_ip_dsdk_adapt_bitselect_x(BITSELECT,277)
    assign dupName_43_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2816:2816];

    // dupName_20_adapt_scalar_trunc_x(ROUND,135)
    assign dupName_20_adapt_scalar_trunc_x_in = dupName_43_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_20_adapt_scalar_trunc_x_q = dupName_20_adapt_scalar_trunc_x_in[0:0];

    // dupName_42_ip_dsdk_adapt_bitselect_x(BITSELECT,271)
    assign dupName_42_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2815:2752];

    // dupName_21_ip_dsdk_adapt_cast_x(BITSELECT,146)
    assign dupName_21_ip_dsdk_adapt_cast_x_b = dupName_42_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_41_ip_dsdk_adapt_bitselect_x(BITSELECT,265)
    assign dupName_41_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2688:2688];

    // dupName_19_adapt_scalar_trunc_x(ROUND,129)
    assign dupName_19_adapt_scalar_trunc_x_in = dupName_41_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_19_adapt_scalar_trunc_x_q = dupName_19_adapt_scalar_trunc_x_in[0:0];

    // dupName_40_ip_dsdk_adapt_bitselect_x(BITSELECT,259)
    assign dupName_40_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2687:2624];

    // dupName_20_ip_dsdk_adapt_cast_x(BITSELECT,140)
    assign dupName_20_ip_dsdk_adapt_cast_x_b = dupName_40_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_39_ip_dsdk_adapt_bitselect_x(BITSELECT,253)
    assign dupName_39_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2560:2560];

    // dupName_18_adapt_scalar_trunc_x(ROUND,123)
    assign dupName_18_adapt_scalar_trunc_x_in = dupName_39_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_18_adapt_scalar_trunc_x_q = dupName_18_adapt_scalar_trunc_x_in[0:0];

    // dupName_38_ip_dsdk_adapt_bitselect_x(BITSELECT,247)
    assign dupName_38_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2559:2496];

    // dupName_19_ip_dsdk_adapt_cast_x(BITSELECT,134)
    assign dupName_19_ip_dsdk_adapt_cast_x_b = dupName_38_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_37_ip_dsdk_adapt_bitselect_x(BITSELECT,241)
    assign dupName_37_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2432:2432];

    // dupName_17_adapt_scalar_trunc_x(ROUND,117)
    assign dupName_17_adapt_scalar_trunc_x_in = dupName_37_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_17_adapt_scalar_trunc_x_q = dupName_17_adapt_scalar_trunc_x_in[0:0];

    // dupName_36_ip_dsdk_adapt_bitselect_x(BITSELECT,235)
    assign dupName_36_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2431:2368];

    // dupName_18_ip_dsdk_adapt_cast_x(BITSELECT,128)
    assign dupName_18_ip_dsdk_adapt_cast_x_b = dupName_36_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_35_ip_dsdk_adapt_bitselect_x(BITSELECT,229)
    assign dupName_35_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2304:2304];

    // dupName_16_adapt_scalar_trunc_x(ROUND,111)
    assign dupName_16_adapt_scalar_trunc_x_in = dupName_35_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_16_adapt_scalar_trunc_x_q = dupName_16_adapt_scalar_trunc_x_in[0:0];

    // dupName_34_ip_dsdk_adapt_bitselect_x(BITSELECT,223)
    assign dupName_34_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2303:2240];

    // dupName_17_ip_dsdk_adapt_cast_x(BITSELECT,122)
    assign dupName_17_ip_dsdk_adapt_cast_x_b = dupName_34_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_33_ip_dsdk_adapt_bitselect_x(BITSELECT,217)
    assign dupName_33_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2176:2176];

    // dupName_15_adapt_scalar_trunc_x(ROUND,105)
    assign dupName_15_adapt_scalar_trunc_x_in = dupName_33_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_15_adapt_scalar_trunc_x_q = dupName_15_adapt_scalar_trunc_x_in[0:0];

    // dupName_32_ip_dsdk_adapt_bitselect_x(BITSELECT,211)
    assign dupName_32_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2175:2112];

    // dupName_16_ip_dsdk_adapt_cast_x(BITSELECT,116)
    assign dupName_16_ip_dsdk_adapt_cast_x_b = dupName_32_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_31_ip_dsdk_adapt_bitselect_x(BITSELECT,205)
    assign dupName_31_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2048:2048];

    // dupName_14_adapt_scalar_trunc_x(ROUND,99)
    assign dupName_14_adapt_scalar_trunc_x_in = dupName_31_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_14_adapt_scalar_trunc_x_q = dupName_14_adapt_scalar_trunc_x_in[0:0];

    // dupName_30_ip_dsdk_adapt_bitselect_x(BITSELECT,199)
    assign dupName_30_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[2047:1984];

    // dupName_15_ip_dsdk_adapt_cast_x(BITSELECT,110)
    assign dupName_15_ip_dsdk_adapt_cast_x_b = dupName_30_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_29_ip_dsdk_adapt_bitselect_x(BITSELECT,193)
    assign dupName_29_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1920:1920];

    // dupName_13_adapt_scalar_trunc_x(ROUND,93)
    assign dupName_13_adapt_scalar_trunc_x_in = dupName_29_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_13_adapt_scalar_trunc_x_q = dupName_13_adapt_scalar_trunc_x_in[0:0];

    // dupName_28_ip_dsdk_adapt_bitselect_x(BITSELECT,187)
    assign dupName_28_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1919:1856];

    // dupName_14_ip_dsdk_adapt_cast_x(BITSELECT,104)
    assign dupName_14_ip_dsdk_adapt_cast_x_b = dupName_28_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_27_ip_dsdk_adapt_bitselect_x(BITSELECT,181)
    assign dupName_27_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1792:1792];

    // dupName_12_adapt_scalar_trunc_x(ROUND,87)
    assign dupName_12_adapt_scalar_trunc_x_in = dupName_27_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_12_adapt_scalar_trunc_x_q = dupName_12_adapt_scalar_trunc_x_in[0:0];

    // dupName_26_ip_dsdk_adapt_bitselect_x(BITSELECT,175)
    assign dupName_26_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1791:1728];

    // dupName_13_ip_dsdk_adapt_cast_x(BITSELECT,98)
    assign dupName_13_ip_dsdk_adapt_cast_x_b = dupName_26_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_25_ip_dsdk_adapt_bitselect_x(BITSELECT,169)
    assign dupName_25_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1664:1664];

    // dupName_11_adapt_scalar_trunc_x(ROUND,81)
    assign dupName_11_adapt_scalar_trunc_x_in = dupName_25_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_11_adapt_scalar_trunc_x_q = dupName_11_adapt_scalar_trunc_x_in[0:0];

    // dupName_24_ip_dsdk_adapt_bitselect_x(BITSELECT,163)
    assign dupName_24_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1663:1600];

    // dupName_12_ip_dsdk_adapt_cast_x(BITSELECT,92)
    assign dupName_12_ip_dsdk_adapt_cast_x_b = dupName_24_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_23_ip_dsdk_adapt_bitselect_x(BITSELECT,157)
    assign dupName_23_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1536:1536];

    // dupName_10_adapt_scalar_trunc_x(ROUND,75)
    assign dupName_10_adapt_scalar_trunc_x_in = dupName_23_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_10_adapt_scalar_trunc_x_q = dupName_10_adapt_scalar_trunc_x_in[0:0];

    // dupName_22_ip_dsdk_adapt_bitselect_x(BITSELECT,151)
    assign dupName_22_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1535:1472];

    // dupName_11_ip_dsdk_adapt_cast_x(BITSELECT,86)
    assign dupName_11_ip_dsdk_adapt_cast_x_b = dupName_22_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_21_ip_dsdk_adapt_bitselect_x(BITSELECT,145)
    assign dupName_21_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1408:1408];

    // dupName_9_adapt_scalar_trunc_x(ROUND,69)
    assign dupName_9_adapt_scalar_trunc_x_in = dupName_21_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_9_adapt_scalar_trunc_x_q = dupName_9_adapt_scalar_trunc_x_in[0:0];

    // dupName_20_ip_dsdk_adapt_bitselect_x(BITSELECT,139)
    assign dupName_20_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1407:1344];

    // dupName_10_ip_dsdk_adapt_cast_x(BITSELECT,80)
    assign dupName_10_ip_dsdk_adapt_cast_x_b = dupName_20_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_19_ip_dsdk_adapt_bitselect_x(BITSELECT,133)
    assign dupName_19_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1280:1280];

    // dupName_8_adapt_scalar_trunc_x(ROUND,63)
    assign dupName_8_adapt_scalar_trunc_x_in = dupName_19_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_8_adapt_scalar_trunc_x_q = dupName_8_adapt_scalar_trunc_x_in[0:0];

    // dupName_18_ip_dsdk_adapt_bitselect_x(BITSELECT,127)
    assign dupName_18_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1279:1216];

    // dupName_9_ip_dsdk_adapt_cast_x(BITSELECT,74)
    assign dupName_9_ip_dsdk_adapt_cast_x_b = dupName_18_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_17_ip_dsdk_adapt_bitselect_x(BITSELECT,121)
    assign dupName_17_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1152:1152];

    // dupName_7_adapt_scalar_trunc_x(ROUND,57)
    assign dupName_7_adapt_scalar_trunc_x_in = dupName_17_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_7_adapt_scalar_trunc_x_q = dupName_7_adapt_scalar_trunc_x_in[0:0];

    // dupName_16_ip_dsdk_adapt_bitselect_x(BITSELECT,115)
    assign dupName_16_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1151:1088];

    // dupName_8_ip_dsdk_adapt_cast_x(BITSELECT,68)
    assign dupName_8_ip_dsdk_adapt_cast_x_b = dupName_16_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_15_ip_dsdk_adapt_bitselect_x(BITSELECT,109)
    assign dupName_15_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1024:1024];

    // dupName_6_adapt_scalar_trunc_x(ROUND,51)
    assign dupName_6_adapt_scalar_trunc_x_in = dupName_15_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_6_adapt_scalar_trunc_x_q = dupName_6_adapt_scalar_trunc_x_in[0:0];

    // dupName_14_ip_dsdk_adapt_bitselect_x(BITSELECT,103)
    assign dupName_14_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[1023:960];

    // dupName_7_ip_dsdk_adapt_cast_x(BITSELECT,62)
    assign dupName_7_ip_dsdk_adapt_cast_x_b = dupName_14_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_13_ip_dsdk_adapt_bitselect_x(BITSELECT,97)
    assign dupName_13_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[896:896];

    // dupName_5_adapt_scalar_trunc_x(ROUND,45)
    assign dupName_5_adapt_scalar_trunc_x_in = dupName_13_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_5_adapt_scalar_trunc_x_q = dupName_5_adapt_scalar_trunc_x_in[0:0];

    // dupName_12_ip_dsdk_adapt_bitselect_x(BITSELECT,91)
    assign dupName_12_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[895:832];

    // dupName_6_ip_dsdk_adapt_cast_x(BITSELECT,56)
    assign dupName_6_ip_dsdk_adapt_cast_x_b = dupName_12_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_11_ip_dsdk_adapt_bitselect_x(BITSELECT,85)
    assign dupName_11_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[768:768];

    // dupName_4_adapt_scalar_trunc_x(ROUND,39)
    assign dupName_4_adapt_scalar_trunc_x_in = dupName_11_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_4_adapt_scalar_trunc_x_q = dupName_4_adapt_scalar_trunc_x_in[0:0];

    // dupName_10_ip_dsdk_adapt_bitselect_x(BITSELECT,79)
    assign dupName_10_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[767:704];

    // dupName_5_ip_dsdk_adapt_cast_x(BITSELECT,50)
    assign dupName_5_ip_dsdk_adapt_cast_x_b = dupName_10_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_9_ip_dsdk_adapt_bitselect_x(BITSELECT,73)
    assign dupName_9_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[640:640];

    // dupName_3_adapt_scalar_trunc_x(ROUND,33)
    assign dupName_3_adapt_scalar_trunc_x_in = dupName_9_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_3_adapt_scalar_trunc_x_q = dupName_3_adapt_scalar_trunc_x_in[0:0];

    // dupName_8_ip_dsdk_adapt_bitselect_x(BITSELECT,67)
    assign dupName_8_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[639:576];

    // dupName_4_ip_dsdk_adapt_cast_x(BITSELECT,44)
    assign dupName_4_ip_dsdk_adapt_cast_x_b = dupName_8_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_7_ip_dsdk_adapt_bitselect_x(BITSELECT,61)
    assign dupName_7_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[512:512];

    // dupName_2_adapt_scalar_trunc_x(ROUND,27)
    assign dupName_2_adapt_scalar_trunc_x_in = dupName_7_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_2_adapt_scalar_trunc_x_q = dupName_2_adapt_scalar_trunc_x_in[0:0];

    // dupName_6_ip_dsdk_adapt_bitselect_x(BITSELECT,55)
    assign dupName_6_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[511:448];

    // dupName_3_ip_dsdk_adapt_cast_x(BITSELECT,38)
    assign dupName_3_ip_dsdk_adapt_cast_x_b = dupName_6_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_5_ip_dsdk_adapt_bitselect_x(BITSELECT,49)
    assign dupName_5_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[384:384];

    // dupName_1_adapt_scalar_trunc_x(ROUND,21)
    assign dupName_1_adapt_scalar_trunc_x_in = dupName_5_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_1_adapt_scalar_trunc_x_q = dupName_1_adapt_scalar_trunc_x_in[0:0];

    // dupName_4_ip_dsdk_adapt_bitselect_x(BITSELECT,43)
    assign dupName_4_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[383:320];

    // dupName_2_ip_dsdk_adapt_cast_x(BITSELECT,32)
    assign dupName_2_ip_dsdk_adapt_cast_x_b = dupName_4_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_3_ip_dsdk_adapt_bitselect_x(BITSELECT,37)
    assign dupName_3_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[319:256];

    // dupName_1_ip_dsdk_adapt_cast_x(BITSELECT,26)
    assign dupName_1_ip_dsdk_adapt_cast_x_b = dupName_3_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_2_ip_dsdk_adapt_bitselect_x(BITSELECT,31)
    assign dupName_2_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[192:192];

    // dupName_0_adapt_scalar_trunc_x(ROUND,14)
    assign dupName_0_adapt_scalar_trunc_x_in = dupName_2_ip_dsdk_adapt_bitselect_x_b;
    assign dupName_0_adapt_scalar_trunc_x_q = dupName_0_adapt_scalar_trunc_x_in[0:0];

    // dupName_1_ip_dsdk_adapt_bitselect_x(BITSELECT,25)
    assign dupName_1_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[191:128];

    // dupName_0_ip_dsdk_adapt_cast_x(BITSELECT,20)
    assign dupName_0_ip_dsdk_adapt_cast_x_b = dupName_1_ip_dsdk_adapt_bitselect_x_b[63:0];

    // dupName_0_ip_dsdk_adapt_bitselect_x(BITSELECT,19)
    assign dupName_0_ip_dsdk_adapt_bitselect_x_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[127:64];

    // ip_dsdk_adapt_cast(BITSELECT,11)
    assign ip_dsdk_adapt_cast_b = dupName_0_ip_dsdk_adapt_bitselect_x_b[63:0];

    // ip_dsdk_adapt_bitselect(BITSELECT,10)
    assign ip_dsdk_adapt_bitselect_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_data[0:0];

    // adapt_scalar_trunc(ROUND,2)
    assign adapt_scalar_trunc_in = ip_dsdk_adapt_bitselect_b;
    assign adapt_scalar_trunc_q = adapt_scalar_trunc_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,505)@20000005
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_almost_full;
    assign out_o_data_0 = adapt_scalar_trunc_q;
    assign out_o_data_1 = ip_dsdk_adapt_cast_b;
    assign out_o_data_2 = dupName_0_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_3 = dupName_0_adapt_scalar_trunc_x_q;
    assign out_o_data_4 = dupName_1_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_5 = dupName_2_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_6 = dupName_1_adapt_scalar_trunc_x_q;
    assign out_o_data_7 = dupName_3_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_8 = dupName_2_adapt_scalar_trunc_x_q;
    assign out_o_data_9 = dupName_4_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_10 = dupName_3_adapt_scalar_trunc_x_q;
    assign out_o_data_11 = dupName_5_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_12 = dupName_4_adapt_scalar_trunc_x_q;
    assign out_o_data_13 = dupName_6_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_14 = dupName_5_adapt_scalar_trunc_x_q;
    assign out_o_data_15 = dupName_7_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_16 = dupName_6_adapt_scalar_trunc_x_q;
    assign out_o_data_17 = dupName_8_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_18 = dupName_7_adapt_scalar_trunc_x_q;
    assign out_o_data_19 = dupName_9_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_20 = dupName_8_adapt_scalar_trunc_x_q;
    assign out_o_data_21 = dupName_10_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_22 = dupName_9_adapt_scalar_trunc_x_q;
    assign out_o_data_23 = dupName_11_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_24 = dupName_10_adapt_scalar_trunc_x_q;
    assign out_o_data_25 = dupName_12_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_26 = dupName_11_adapt_scalar_trunc_x_q;
    assign out_o_data_27 = dupName_13_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_28 = dupName_12_adapt_scalar_trunc_x_q;
    assign out_o_data_29 = dupName_14_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_30 = dupName_13_adapt_scalar_trunc_x_q;
    assign out_o_data_31 = dupName_15_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_32 = dupName_14_adapt_scalar_trunc_x_q;
    assign out_o_data_33 = dupName_16_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_34 = dupName_15_adapt_scalar_trunc_x_q;
    assign out_o_data_35 = dupName_17_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_36 = dupName_16_adapt_scalar_trunc_x_q;
    assign out_o_data_37 = dupName_18_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_38 = dupName_17_adapt_scalar_trunc_x_q;
    assign out_o_data_39 = dupName_19_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_40 = dupName_18_adapt_scalar_trunc_x_q;
    assign out_o_data_41 = dupName_20_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_42 = dupName_19_adapt_scalar_trunc_x_q;
    assign out_o_data_43 = dupName_21_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_44 = dupName_20_adapt_scalar_trunc_x_q;
    assign out_o_data_45 = dupName_22_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_46 = dupName_21_adapt_scalar_trunc_x_q;
    assign out_o_data_47 = dupName_23_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_48 = dupName_22_adapt_scalar_trunc_x_q;
    assign out_o_data_49 = dupName_24_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_50 = dupName_23_adapt_scalar_trunc_x_q;
    assign out_o_data_51 = dupName_25_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_52 = dupName_24_adapt_scalar_trunc_x_q;
    assign out_o_data_53 = dupName_26_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_54 = dupName_25_adapt_scalar_trunc_x_q;
    assign out_o_data_55 = dupName_27_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_56 = dupName_26_adapt_scalar_trunc_x_q;
    assign out_o_data_57 = dupName_28_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_58 = dupName_27_adapt_scalar_trunc_x_q;
    assign out_o_data_59 = dupName_29_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_60 = dupName_28_adapt_scalar_trunc_x_q;
    assign out_o_data_61 = dupName_30_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_62 = dupName_29_adapt_scalar_trunc_x_q;
    assign out_o_data_63 = dupName_31_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_64 = dupName_30_adapt_scalar_trunc_x_q;
    assign out_o_data_65 = dupName_32_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_66 = dupName_31_adapt_scalar_trunc_x_q;
    assign out_o_data_67 = dupName_33_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_68 = dupName_32_adapt_scalar_trunc_x_q;
    assign out_o_data_69 = dupName_34_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_70 = dupName_33_adapt_scalar_trunc_x_q;
    assign out_o_data_71 = dupName_35_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_72 = dupName_34_adapt_scalar_trunc_x_q;
    assign out_o_data_73 = dupName_36_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_74 = dupName_35_adapt_scalar_trunc_x_q;
    assign out_o_data_75 = dupName_37_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_76 = dupName_36_adapt_scalar_trunc_x_q;
    assign out_o_data_77 = dupName_38_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_78 = dupName_37_adapt_scalar_trunc_x_q;
    assign out_o_data_79 = dupName_39_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_80 = dupName_38_adapt_scalar_trunc_x_q;
    assign out_o_data_81 = dupName_40_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_82 = dupName_39_adapt_scalar_trunc_x_q;
    assign out_o_data_83 = dupName_41_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_84 = dupName_40_adapt_scalar_trunc_x_q;
    assign out_o_data_85 = dupName_42_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_86 = dupName_41_adapt_scalar_trunc_x_q;
    assign out_o_data_87 = dupName_43_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_88 = dupName_42_adapt_scalar_trunc_x_q;
    assign out_o_data_89 = dupName_44_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_90 = dupName_43_adapt_scalar_trunc_x_q;
    assign out_o_data_91 = dupName_45_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_92 = dupName_44_adapt_scalar_trunc_x_q;
    assign out_o_data_93 = dupName_46_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_94 = dupName_45_adapt_scalar_trunc_x_q;
    assign out_o_data_95 = dupName_47_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_96 = dupName_46_adapt_scalar_trunc_x_q;
    assign out_o_data_97 = dupName_48_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_98 = dupName_47_adapt_scalar_trunc_x_q;
    assign out_o_data_99 = dupName_49_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_100 = dupName_48_adapt_scalar_trunc_x_q;
    assign out_o_data_101 = dupName_50_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_102 = dupName_49_adapt_scalar_trunc_x_q;
    assign out_o_data_103 = dupName_51_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_104 = dupName_50_adapt_scalar_trunc_x_q;
    assign out_o_data_105 = dupName_52_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_106 = dupName_51_adapt_scalar_trunc_x_q;
    assign out_o_data_107 = dupName_53_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_108 = dupName_52_adapt_scalar_trunc_x_q;
    assign out_o_data_109 = dupName_54_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_110 = dupName_53_adapt_scalar_trunc_x_q;
    assign out_o_data_111 = dupName_55_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_112 = dupName_54_adapt_scalar_trunc_x_q;
    assign out_o_data_113 = dupName_56_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_114 = dupName_55_adapt_scalar_trunc_x_q;
    assign out_o_data_115 = dupName_57_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_116 = dupName_56_adapt_scalar_trunc_x_q;
    assign out_o_data_117 = dupName_58_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_118 = dupName_57_adapt_scalar_trunc_x_q;
    assign out_o_data_119 = dupName_59_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_120 = dupName_58_adapt_scalar_trunc_x_q;
    assign out_o_data_121 = dupName_60_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_122 = dupName_59_adapt_scalar_trunc_x_q;
    assign out_o_data_123 = dupName_61_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_124 = dupName_60_adapt_scalar_trunc_x_q;
    assign out_o_data_125 = dupName_62_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_126 = dupName_61_adapt_scalar_trunc_x_q;
    assign out_o_data_127 = dupName_63_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_128 = dupName_62_adapt_scalar_trunc_x_q;
    assign out_o_data_129 = dupName_64_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_130 = dupName_63_adapt_scalar_trunc_x_q;
    assign out_o_data_131 = dupName_65_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_132 = dupName_64_adapt_scalar_trunc_x_q;
    assign out_o_data_133 = dupName_65_adapt_scalar_trunc_x_q;
    assign out_o_data_134 = dupName_66_adapt_scalar_trunc_x_q;
    assign out_o_data_135 = dupName_66_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_136 = dupName_67_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_137 = dupName_68_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_138 = dupName_67_adapt_scalar_trunc_x_q;
    assign out_o_data_139 = dupName_68_adapt_scalar_trunc_x_q;
    assign out_o_data_140 = dupName_69_ip_dsdk_adapt_cast_x_b;
    assign out_o_data_141 = dupName_69_adapt_scalar_trunc_x_q;
    assign out_o_data_142 = dupName_70_adapt_scalar_trunc_x_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn2688_o_valid;

endmodule
