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

// SystemVerilog created from cnn_i_sfc_s_c0_in_for_cond47_preheader_s_c0_enter87510_cnn723
// SystemVerilog created on Thu Jun 25 10:37:45 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_s_c0_in_for_cond47_preheader_s_c0_enter87510_cnn723 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_input,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_intel_reserved_ffwd_26_0,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_27_0,
    input wire [0:0] in_intel_reserved_ffwd_28_0,
    input wire [0:0] in_intel_reserved_ffwd_29_0,
    input wire [0:0] in_intel_reserved_ffwd_30_0,
    input wire [0:0] in_intel_reserved_ffwd_31_0,
    input wire [0:0] in_intel_reserved_ffwd_32_0,
    input wire [0:0] in_intel_reserved_ffwd_33_0,
    input wire [0:0] in_intel_reserved_ffwd_34_0,
    input wire [0:0] in_intel_reserved_ffwd_35_0,
    input wire [0:0] in_intel_reserved_ffwd_36_0,
    input wire [0:0] in_intel_reserved_ffwd_37_0,
    input wire [0:0] in_intel_reserved_ffwd_38_0,
    input wire [0:0] in_intel_reserved_ffwd_39_0,
    input wire [0:0] in_intel_reserved_ffwd_40_0,
    input wire [0:0] in_intel_reserved_ffwd_41_0,
    input wire [0:0] in_intel_reserved_ffwd_42_0,
    input wire [0:0] in_intel_reserved_ffwd_43_0,
    input wire [0:0] in_intel_reserved_ffwd_44_0,
    input wire [0:0] in_intel_reserved_ffwd_45_0,
    input wire [0:0] in_intel_reserved_ffwd_46_0,
    input wire [0:0] in_intel_reserved_ffwd_47_0,
    input wire [0:0] in_intel_reserved_ffwd_48_0,
    input wire [0:0] in_intel_reserved_ffwd_49_0,
    input wire [0:0] in_intel_reserved_ffwd_50_0,
    input wire [0:0] in_intel_reserved_ffwd_51_0,
    input wire [0:0] in_intel_reserved_ffwd_52_0,
    input wire [0:0] in_intel_reserved_ffwd_53_0,
    input wire [0:0] in_intel_reserved_ffwd_54_0,
    input wire [0:0] in_intel_reserved_ffwd_55_0,
    input wire [0:0] in_intel_reserved_ffwd_56_0,
    input wire [0:0] in_intel_reserved_ffwd_57_0,
    input wire [0:0] in_intel_reserved_ffwd_58_0,
    input wire [0:0] in_intel_reserved_ffwd_59_0,
    input wire [0:0] in_intel_reserved_ffwd_60_0,
    input wire [0:0] in_intel_reserved_ffwd_61_0,
    input wire [0:0] in_intel_reserved_ffwd_62_0,
    input wire [0:0] in_intel_reserved_ffwd_63_0,
    input wire [0:0] in_intel_reserved_ffwd_64_0,
    input wire [0:0] in_intel_reserved_ffwd_65_0,
    input wire [0:0] in_intel_reserved_ffwd_66_0,
    input wire [0:0] in_intel_reserved_ffwd_67_0,
    input wire [0:0] in_intel_reserved_ffwd_68_0,
    input wire [0:0] in_intel_reserved_ffwd_69_0,
    input wire [0:0] in_intel_reserved_ffwd_70_0,
    input wire [0:0] in_intel_reserved_ffwd_71_0,
    input wire [0:0] in_intel_reserved_ffwd_72_0,
    input wire [0:0] in_intel_reserved_ffwd_73_0,
    input wire [0:0] in_intel_reserved_ffwd_74_0,
    input wire [0:0] in_intel_reserved_ffwd_75_0,
    input wire [0:0] in_intel_reserved_ffwd_76_0,
    input wire [0:0] in_intel_reserved_ffwd_77_0,
    input wire [0:0] in_intel_reserved_ffwd_78_0,
    input wire [0:0] in_intel_reserved_ffwd_79_0,
    input wire [0:0] in_intel_reserved_ffwd_80_0,
    input wire [0:0] in_intel_reserved_ffwd_81_0,
    input wire [0:0] in_intel_reserved_ffwd_82_0,
    input wire [0:0] in_intel_reserved_ffwd_83_0,
    input wire [0:0] in_intel_reserved_ffwd_84_0,
    input wire [0:0] in_intel_reserved_ffwd_85_0,
    input wire [0:0] in_intel_reserved_ffwd_86_0,
    input wire [0:0] in_intel_reserved_ffwd_87_0,
    input wire [0:0] in_intel_reserved_ffwd_88_0,
    input wire [0:0] in_intel_reserved_ffwd_89_0,
    input wire [0:0] in_intel_reserved_ffwd_90_0,
    input wire [0:0] in_intel_reserved_ffwd_91_0,
    input wire [0:0] in_c0_eni12_0,
    input wire [63:0] in_c0_eni12_1,
    input wire [0:0] in_c0_eni12_2,
    input wire [63:0] in_c0_eni12_3,
    input wire [63:0] in_c0_eni12_4,
    input wire [63:0] in_c0_eni12_5,
    input wire [63:0] in_c0_eni12_6,
    input wire [63:0] in_c0_eni12_7,
    input wire [63:0] in_c0_eni12_8,
    input wire [0:0] in_c0_eni12_9,
    input wire [0:0] in_c0_eni12_10,
    input wire [63:0] in_c0_eni12_11,
    input wire [0:0] in_c0_eni12_12,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit897_0,
    output wire [63:0] out_c0_exit897_1,
    output wire [63:0] out_c0_exit897_2,
    output wire [0:0] out_c0_exit897_3,
    output wire [63:0] out_c0_exit897_4,
    output wire [63:0] out_c0_exit897_5,
    output wire [0:0] out_c0_exit897_6,
    output wire [63:0] out_c0_exit897_7,
    output wire [0:0] out_c0_exit897_8,
    output wire [63:0] out_c0_exit897_9,
    output wire [0:0] out_c0_exit897_10,
    output wire [63:0] out_c0_exit897_11,
    output wire [0:0] out_c0_exit897_12,
    output wire [63:0] out_c0_exit897_13,
    output wire [0:0] out_c0_exit897_14,
    output wire [63:0] out_c0_exit897_15,
    output wire [0:0] out_c0_exit897_16,
    output wire [63:0] out_c0_exit897_17,
    output wire [0:0] out_c0_exit897_18,
    output wire [63:0] out_c0_exit897_19,
    output wire [0:0] out_c0_exit897_20,
    output wire [63:0] out_c0_exit897_21,
    output wire [0:0] out_c0_exit897_22,
    output wire [63:0] out_c0_exit897_23,
    output wire [0:0] out_c0_exit897_24,
    output wire [63:0] out_c0_exit897_25,
    output wire [0:0] out_c0_exit897_26,
    output wire [63:0] out_c0_exit897_27,
    output wire [0:0] out_c0_exit897_28,
    output wire [63:0] out_c0_exit897_29,
    output wire [0:0] out_c0_exit897_30,
    output wire [63:0] out_c0_exit897_31,
    output wire [0:0] out_c0_exit897_32,
    output wire [63:0] out_c0_exit897_33,
    output wire [0:0] out_c0_exit897_34,
    output wire [63:0] out_c0_exit897_35,
    output wire [0:0] out_c0_exit897_36,
    output wire [63:0] out_c0_exit897_37,
    output wire [0:0] out_c0_exit897_38,
    output wire [63:0] out_c0_exit897_39,
    output wire [0:0] out_c0_exit897_40,
    output wire [63:0] out_c0_exit897_41,
    output wire [0:0] out_c0_exit897_42,
    output wire [63:0] out_c0_exit897_43,
    output wire [0:0] out_c0_exit897_44,
    output wire [63:0] out_c0_exit897_45,
    output wire [0:0] out_c0_exit897_46,
    output wire [63:0] out_c0_exit897_47,
    output wire [0:0] out_c0_exit897_48,
    output wire [63:0] out_c0_exit897_49,
    output wire [0:0] out_c0_exit897_50,
    output wire [63:0] out_c0_exit897_51,
    output wire [0:0] out_c0_exit897_52,
    output wire [63:0] out_c0_exit897_53,
    output wire [0:0] out_c0_exit897_54,
    output wire [63:0] out_c0_exit897_55,
    output wire [0:0] out_c0_exit897_56,
    output wire [63:0] out_c0_exit897_57,
    output wire [0:0] out_c0_exit897_58,
    output wire [63:0] out_c0_exit897_59,
    output wire [0:0] out_c0_exit897_60,
    output wire [63:0] out_c0_exit897_61,
    output wire [0:0] out_c0_exit897_62,
    output wire [63:0] out_c0_exit897_63,
    output wire [0:0] out_c0_exit897_64,
    output wire [63:0] out_c0_exit897_65,
    output wire [0:0] out_c0_exit897_66,
    output wire [63:0] out_c0_exit897_67,
    output wire [0:0] out_c0_exit897_68,
    output wire [63:0] out_c0_exit897_69,
    output wire [0:0] out_c0_exit897_70,
    output wire [63:0] out_c0_exit897_71,
    output wire [0:0] out_c0_exit897_72,
    output wire [63:0] out_c0_exit897_73,
    output wire [0:0] out_c0_exit897_74,
    output wire [63:0] out_c0_exit897_75,
    output wire [0:0] out_c0_exit897_76,
    output wire [63:0] out_c0_exit897_77,
    output wire [0:0] out_c0_exit897_78,
    output wire [63:0] out_c0_exit897_79,
    output wire [0:0] out_c0_exit897_80,
    output wire [63:0] out_c0_exit897_81,
    output wire [0:0] out_c0_exit897_82,
    output wire [63:0] out_c0_exit897_83,
    output wire [0:0] out_c0_exit897_84,
    output wire [63:0] out_c0_exit897_85,
    output wire [0:0] out_c0_exit897_86,
    output wire [63:0] out_c0_exit897_87,
    output wire [0:0] out_c0_exit897_88,
    output wire [63:0] out_c0_exit897_89,
    output wire [0:0] out_c0_exit897_90,
    output wire [63:0] out_c0_exit897_91,
    output wire [0:0] out_c0_exit897_92,
    output wire [63:0] out_c0_exit897_93,
    output wire [0:0] out_c0_exit897_94,
    output wire [63:0] out_c0_exit897_95,
    output wire [0:0] out_c0_exit897_96,
    output wire [63:0] out_c0_exit897_97,
    output wire [0:0] out_c0_exit897_98,
    output wire [63:0] out_c0_exit897_99,
    output wire [0:0] out_c0_exit897_100,
    output wire [63:0] out_c0_exit897_101,
    output wire [0:0] out_c0_exit897_102,
    output wire [63:0] out_c0_exit897_103,
    output wire [0:0] out_c0_exit897_104,
    output wire [63:0] out_c0_exit897_105,
    output wire [0:0] out_c0_exit897_106,
    output wire [63:0] out_c0_exit897_107,
    output wire [0:0] out_c0_exit897_108,
    output wire [63:0] out_c0_exit897_109,
    output wire [0:0] out_c0_exit897_110,
    output wire [63:0] out_c0_exit897_111,
    output wire [0:0] out_c0_exit897_112,
    output wire [63:0] out_c0_exit897_113,
    output wire [0:0] out_c0_exit897_114,
    output wire [63:0] out_c0_exit897_115,
    output wire [0:0] out_c0_exit897_116,
    output wire [63:0] out_c0_exit897_117,
    output wire [0:0] out_c0_exit897_118,
    output wire [63:0] out_c0_exit897_119,
    output wire [0:0] out_c0_exit897_120,
    output wire [63:0] out_c0_exit897_121,
    output wire [0:0] out_c0_exit897_122,
    output wire [63:0] out_c0_exit897_123,
    output wire [0:0] out_c0_exit897_124,
    output wire [63:0] out_c0_exit897_125,
    output wire [0:0] out_c0_exit897_126,
    output wire [63:0] out_c0_exit897_127,
    output wire [0:0] out_c0_exit897_128,
    output wire [63:0] out_c0_exit897_129,
    output wire [0:0] out_c0_exit897_130,
    output wire [63:0] out_c0_exit897_131,
    output wire [0:0] out_c0_exit897_132,
    output wire [0:0] out_c0_exit897_133,
    output wire [0:0] out_c0_exit897_134,
    output wire [63:0] out_c0_exit897_135,
    output wire [63:0] out_c0_exit897_136,
    output wire [63:0] out_c0_exit897_137,
    output wire [0:0] out_c0_exit897_138,
    output wire [0:0] out_c0_exit897_139,
    output wire [63:0] out_c0_exit897_140,
    output wire [0:0] out_c0_exit897_141,
    output wire [0:0] out_c0_exit897_142,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_0;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_1;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_2;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_3;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_4;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_5;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_6;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_7;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_8;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_9;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_10;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_11;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_12;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_13;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_14;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_15;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_16;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_17;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_18;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_19;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_20;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_21;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_22;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_23;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_24;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_25;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_26;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_27;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_28;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_29;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_30;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_31;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_32;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_33;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_34;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_35;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_36;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_37;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_38;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_39;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_40;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_41;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_42;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_43;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_44;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_45;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_46;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_47;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_48;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_49;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_50;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_51;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_52;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_53;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_54;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_55;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_56;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_57;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_58;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_59;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_60;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_61;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_62;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_63;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_64;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_65;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_66;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_67;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_68;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_69;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_70;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_71;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_72;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_73;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_74;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_75;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_76;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_77;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_78;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_79;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_80;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_81;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_82;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_83;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_84;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_85;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_86;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_87;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_88;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_89;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_90;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_91;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_92;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_93;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_94;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_95;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_96;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_97;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_98;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_99;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_100;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_101;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_102;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_103;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_104;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_105;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_106;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_107;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_108;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_109;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_110;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_111;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_112;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_113;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_114;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_115;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_116;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_117;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_118;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_119;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_120;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_121;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_122;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_123;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_124;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_125;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_126;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_127;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_128;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_129;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_130;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_131;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_132;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_133;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_134;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_135;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_136;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_137;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_138;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_139;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_140;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_141;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_142;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_1;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_2;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_3;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_4;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_5;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_6;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_7;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_8;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_9;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_10;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_11;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_12;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_13;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_14;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_15;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_16;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_17;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_18;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_19;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_20;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_21;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_22;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_23;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_24;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_25;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_26;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_27;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_28;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_29;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_30;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_31;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_32;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_33;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_34;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_35;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_36;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_37;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_38;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_39;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_40;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_41;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_42;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_43;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_44;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_45;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_46;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_47;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_48;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_49;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_50;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_51;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_52;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_53;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_54;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_55;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_56;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_57;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_58;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_59;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_60;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_61;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_62;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_63;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_64;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_65;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_66;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_67;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_68;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_69;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_70;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_71;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_72;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_73;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_74;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_75;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_76;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_77;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_78;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_79;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_80;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_81;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_82;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_83;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_84;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_85;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_86;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_87;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_88;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_89;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_90;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_91;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_92;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_93;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_94;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_95;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_96;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_97;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_98;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_99;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_100;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_101;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_102;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_103;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_104;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_105;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_106;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_107;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_108;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_109;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_110;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_111;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_112;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_113;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_114;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_115;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_116;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_117;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_118;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_119;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_120;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_121;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_122;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_123;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_124;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_125;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_126;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_127;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_128;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_129;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_130;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_131;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_132;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_133;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_134;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_135;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_136;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_137;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_138;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_139;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_140;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_141;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_142;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x(BLACKBOX,78)@20000000
    // out out_valid_out@20000006
    // out out_data_out_0@20000006
    // out out_data_out_1@20000006
    // out out_data_out_2@20000006
    // out out_data_out_3@20000006
    // out out_data_out_4@20000006
    // out out_data_out_5@20000006
    // out out_data_out_6@20000006
    // out out_data_out_7@20000006
    // out out_data_out_8@20000006
    // out out_data_out_9@20000006
    // out out_data_out_10@20000006
    // out out_data_out_11@20000006
    // out out_data_out_12@20000006
    // out out_data_out_13@20000006
    // out out_data_out_14@20000006
    // out out_data_out_15@20000006
    // out out_data_out_16@20000006
    // out out_data_out_17@20000006
    // out out_data_out_18@20000006
    // out out_data_out_19@20000006
    // out out_data_out_20@20000006
    // out out_data_out_21@20000006
    // out out_data_out_22@20000006
    // out out_data_out_23@20000006
    // out out_data_out_24@20000006
    // out out_data_out_25@20000006
    // out out_data_out_26@20000006
    // out out_data_out_27@20000006
    // out out_data_out_28@20000006
    // out out_data_out_29@20000006
    // out out_data_out_30@20000006
    // out out_data_out_31@20000006
    // out out_data_out_32@20000006
    // out out_data_out_33@20000006
    // out out_data_out_34@20000006
    // out out_data_out_35@20000006
    // out out_data_out_36@20000006
    // out out_data_out_37@20000006
    // out out_data_out_38@20000006
    // out out_data_out_39@20000006
    // out out_data_out_40@20000006
    // out out_data_out_41@20000006
    // out out_data_out_42@20000006
    // out out_data_out_43@20000006
    // out out_data_out_44@20000006
    // out out_data_out_45@20000006
    // out out_data_out_46@20000006
    // out out_data_out_47@20000006
    // out out_data_out_48@20000006
    // out out_data_out_49@20000006
    // out out_data_out_50@20000006
    // out out_data_out_51@20000006
    // out out_data_out_52@20000006
    // out out_data_out_53@20000006
    // out out_data_out_54@20000006
    // out out_data_out_55@20000006
    // out out_data_out_56@20000006
    // out out_data_out_57@20000006
    // out out_data_out_58@20000006
    // out out_data_out_59@20000006
    // out out_data_out_60@20000006
    // out out_data_out_61@20000006
    // out out_data_out_62@20000006
    // out out_data_out_63@20000006
    // out out_data_out_64@20000006
    // out out_data_out_65@20000006
    // out out_data_out_66@20000006
    // out out_data_out_67@20000006
    // out out_data_out_68@20000006
    // out out_data_out_69@20000006
    // out out_data_out_70@20000006
    // out out_data_out_71@20000006
    // out out_data_out_72@20000006
    // out out_data_out_73@20000006
    // out out_data_out_74@20000006
    // out out_data_out_75@20000006
    // out out_data_out_76@20000006
    // out out_data_out_77@20000006
    // out out_data_out_78@20000006
    // out out_data_out_79@20000006
    // out out_data_out_80@20000006
    // out out_data_out_81@20000006
    // out out_data_out_82@20000006
    // out out_data_out_83@20000006
    // out out_data_out_84@20000006
    // out out_data_out_85@20000006
    // out out_data_out_86@20000006
    // out out_data_out_87@20000006
    // out out_data_out_88@20000006
    // out out_data_out_89@20000006
    // out out_data_out_90@20000006
    // out out_data_out_91@20000006
    // out out_data_out_92@20000006
    // out out_data_out_93@20000006
    // out out_data_out_94@20000006
    // out out_data_out_95@20000006
    // out out_data_out_96@20000006
    // out out_data_out_97@20000006
    // out out_data_out_98@20000006
    // out out_data_out_99@20000006
    // out out_data_out_100@20000006
    // out out_data_out_101@20000006
    // out out_data_out_102@20000006
    // out out_data_out_103@20000006
    // out out_data_out_104@20000006
    // out out_data_out_105@20000006
    // out out_data_out_106@20000006
    // out out_data_out_107@20000006
    // out out_data_out_108@20000006
    // out out_data_out_109@20000006
    // out out_data_out_110@20000006
    // out out_data_out_111@20000006
    // out out_data_out_112@20000006
    // out out_data_out_113@20000006
    // out out_data_out_114@20000006
    // out out_data_out_115@20000006
    // out out_data_out_116@20000006
    // out out_data_out_117@20000006
    // out out_data_out_118@20000006
    // out out_data_out_119@20000006
    // out out_data_out_120@20000006
    // out out_data_out_121@20000006
    // out out_data_out_122@20000006
    // out out_data_out_123@20000006
    // out out_data_out_124@20000006
    // out out_data_out_125@20000006
    // out out_data_out_126@20000006
    // out out_data_out_127@20000006
    // out out_data_out_128@20000006
    // out out_data_out_129@20000006
    // out out_data_out_130@20000006
    // out out_data_out_131@20000006
    // out out_data_out_132@20000006
    // out out_data_out_133@20000006
    // out out_data_out_134@20000006
    // out out_data_out_135@20000006
    // out out_data_out_136@20000006
    // out out_data_out_137@20000006
    // out out_data_out_138@20000006
    // out out_data_out_139@20000006
    // out out_data_out_140@20000006
    // out out_data_out_141@20000006
    // out out_data_out_142@20000006
    cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_coA000000Zs_c0_exit897_cnn1468 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_o_valid),
        .in_data_in_0(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_0),
        .in_data_in_1(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_1),
        .in_data_in_2(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_2),
        .in_data_in_3(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_3),
        .in_data_in_4(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_4),
        .in_data_in_5(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_5),
        .in_data_in_6(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_6),
        .in_data_in_7(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_7),
        .in_data_in_8(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_8),
        .in_data_in_9(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_9),
        .in_data_in_10(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_10),
        .in_data_in_11(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_11),
        .in_data_in_12(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_12),
        .in_data_in_13(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_13),
        .in_data_in_14(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_14),
        .in_data_in_15(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_15),
        .in_data_in_16(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_16),
        .in_data_in_17(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_17),
        .in_data_in_18(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_18),
        .in_data_in_19(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_19),
        .in_data_in_20(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_20),
        .in_data_in_21(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_21),
        .in_data_in_22(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_22),
        .in_data_in_23(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_23),
        .in_data_in_24(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_24),
        .in_data_in_25(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_25),
        .in_data_in_26(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_26),
        .in_data_in_27(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_27),
        .in_data_in_28(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_28),
        .in_data_in_29(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_29),
        .in_data_in_30(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_30),
        .in_data_in_31(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_31),
        .in_data_in_32(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_32),
        .in_data_in_33(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_33),
        .in_data_in_34(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_34),
        .in_data_in_35(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_35),
        .in_data_in_36(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_36),
        .in_data_in_37(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_37),
        .in_data_in_38(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_38),
        .in_data_in_39(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_39),
        .in_data_in_40(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_40),
        .in_data_in_41(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_41),
        .in_data_in_42(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_42),
        .in_data_in_43(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_43),
        .in_data_in_44(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_44),
        .in_data_in_45(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_45),
        .in_data_in_46(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_46),
        .in_data_in_47(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_47),
        .in_data_in_48(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_48),
        .in_data_in_49(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_49),
        .in_data_in_50(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_50),
        .in_data_in_51(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_51),
        .in_data_in_52(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_52),
        .in_data_in_53(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_53),
        .in_data_in_54(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_54),
        .in_data_in_55(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_55),
        .in_data_in_56(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_56),
        .in_data_in_57(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_57),
        .in_data_in_58(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_58),
        .in_data_in_59(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_59),
        .in_data_in_60(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_60),
        .in_data_in_61(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_61),
        .in_data_in_62(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_62),
        .in_data_in_63(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_63),
        .in_data_in_64(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_64),
        .in_data_in_65(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_65),
        .in_data_in_66(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_66),
        .in_data_in_67(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_67),
        .in_data_in_68(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_68),
        .in_data_in_69(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_69),
        .in_data_in_70(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_70),
        .in_data_in_71(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_71),
        .in_data_in_72(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_72),
        .in_data_in_73(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_73),
        .in_data_in_74(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_74),
        .in_data_in_75(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_75),
        .in_data_in_76(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_76),
        .in_data_in_77(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_77),
        .in_data_in_78(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_78),
        .in_data_in_79(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_79),
        .in_data_in_80(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_80),
        .in_data_in_81(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_81),
        .in_data_in_82(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_82),
        .in_data_in_83(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_83),
        .in_data_in_84(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_84),
        .in_data_in_85(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_85),
        .in_data_in_86(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_86),
        .in_data_in_87(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_87),
        .in_data_in_88(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_88),
        .in_data_in_89(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_89),
        .in_data_in_90(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_90),
        .in_data_in_91(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_91),
        .in_data_in_92(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_92),
        .in_data_in_93(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_93),
        .in_data_in_94(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_94),
        .in_data_in_95(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_95),
        .in_data_in_96(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_96),
        .in_data_in_97(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_97),
        .in_data_in_98(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_98),
        .in_data_in_99(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_99),
        .in_data_in_100(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_100),
        .in_data_in_101(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_101),
        .in_data_in_102(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_102),
        .in_data_in_103(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_103),
        .in_data_in_104(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_104),
        .in_data_in_105(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_105),
        .in_data_in_106(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_106),
        .in_data_in_107(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_107),
        .in_data_in_108(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_108),
        .in_data_in_109(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_109),
        .in_data_in_110(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_110),
        .in_data_in_111(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_111),
        .in_data_in_112(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_112),
        .in_data_in_113(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_113),
        .in_data_in_114(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_114),
        .in_data_in_115(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_115),
        .in_data_in_116(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_116),
        .in_data_in_117(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_117),
        .in_data_in_118(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_118),
        .in_data_in_119(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_119),
        .in_data_in_120(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_120),
        .in_data_in_121(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_121),
        .in_data_in_122(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_122),
        .in_data_in_123(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_123),
        .in_data_in_124(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_124),
        .in_data_in_125(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_125),
        .in_data_in_126(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_126),
        .in_data_in_127(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_127),
        .in_data_in_128(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_128),
        .in_data_in_129(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_129),
        .in_data_in_130(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_130),
        .in_data_in_131(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_131),
        .in_data_in_132(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_132),
        .in_data_in_133(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_133),
        .in_data_in_134(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_134),
        .in_data_in_135(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_135),
        .in_data_in_136(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_136),
        .in_data_in_137(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_137),
        .in_data_in_138(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_138),
        .in_data_in_139(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_139),
        .in_data_in_140(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_140),
        .in_data_in_141(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_141),
        .in_data_in_142(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_142),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_valid_out),
        .out_data_out_0(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_0),
        .out_data_out_1(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_1),
        .out_data_out_2(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_2),
        .out_data_out_3(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_3),
        .out_data_out_4(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_4),
        .out_data_out_5(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_5),
        .out_data_out_6(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_6),
        .out_data_out_7(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_7),
        .out_data_out_8(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_8),
        .out_data_out_9(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_9),
        .out_data_out_10(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_10),
        .out_data_out_11(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_11),
        .out_data_out_12(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_12),
        .out_data_out_13(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_13),
        .out_data_out_14(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_14),
        .out_data_out_15(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_15),
        .out_data_out_16(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_16),
        .out_data_out_17(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_17),
        .out_data_out_18(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_18),
        .out_data_out_19(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_19),
        .out_data_out_20(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_20),
        .out_data_out_21(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_21),
        .out_data_out_22(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_22),
        .out_data_out_23(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_23),
        .out_data_out_24(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_24),
        .out_data_out_25(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_25),
        .out_data_out_26(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_26),
        .out_data_out_27(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_27),
        .out_data_out_28(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_28),
        .out_data_out_29(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_29),
        .out_data_out_30(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_30),
        .out_data_out_31(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_31),
        .out_data_out_32(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_32),
        .out_data_out_33(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_33),
        .out_data_out_34(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_34),
        .out_data_out_35(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_35),
        .out_data_out_36(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_36),
        .out_data_out_37(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_37),
        .out_data_out_38(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_38),
        .out_data_out_39(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_39),
        .out_data_out_40(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_40),
        .out_data_out_41(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_41),
        .out_data_out_42(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_42),
        .out_data_out_43(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_43),
        .out_data_out_44(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_44),
        .out_data_out_45(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_45),
        .out_data_out_46(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_46),
        .out_data_out_47(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_47),
        .out_data_out_48(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_48),
        .out_data_out_49(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_49),
        .out_data_out_50(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_50),
        .out_data_out_51(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_51),
        .out_data_out_52(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_52),
        .out_data_out_53(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_53),
        .out_data_out_54(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_54),
        .out_data_out_55(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_55),
        .out_data_out_56(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_56),
        .out_data_out_57(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_57),
        .out_data_out_58(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_58),
        .out_data_out_59(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_59),
        .out_data_out_60(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_60),
        .out_data_out_61(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_61),
        .out_data_out_62(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_62),
        .out_data_out_63(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_63),
        .out_data_out_64(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_64),
        .out_data_out_65(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_65),
        .out_data_out_66(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_66),
        .out_data_out_67(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_67),
        .out_data_out_68(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_68),
        .out_data_out_69(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_69),
        .out_data_out_70(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_70),
        .out_data_out_71(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_71),
        .out_data_out_72(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_72),
        .out_data_out_73(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_73),
        .out_data_out_74(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_74),
        .out_data_out_75(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_75),
        .out_data_out_76(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_76),
        .out_data_out_77(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_77),
        .out_data_out_78(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_78),
        .out_data_out_79(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_79),
        .out_data_out_80(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_80),
        .out_data_out_81(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_81),
        .out_data_out_82(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_82),
        .out_data_out_83(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_83),
        .out_data_out_84(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_84),
        .out_data_out_85(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_85),
        .out_data_out_86(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_86),
        .out_data_out_87(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_87),
        .out_data_out_88(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_88),
        .out_data_out_89(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_89),
        .out_data_out_90(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_90),
        .out_data_out_91(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_91),
        .out_data_out_92(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_92),
        .out_data_out_93(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_93),
        .out_data_out_94(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_94),
        .out_data_out_95(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_95),
        .out_data_out_96(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_96),
        .out_data_out_97(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_97),
        .out_data_out_98(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_98),
        .out_data_out_99(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_99),
        .out_data_out_100(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_100),
        .out_data_out_101(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_101),
        .out_data_out_102(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_102),
        .out_data_out_103(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_103),
        .out_data_out_104(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_104),
        .out_data_out_105(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_105),
        .out_data_out_106(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_106),
        .out_data_out_107(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_107),
        .out_data_out_108(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_108),
        .out_data_out_109(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_109),
        .out_data_out_110(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_110),
        .out_data_out_111(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_111),
        .out_data_out_112(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_112),
        .out_data_out_113(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_113),
        .out_data_out_114(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_114),
        .out_data_out_115(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_115),
        .out_data_out_116(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_116),
        .out_data_out_117(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_117),
        .out_data_out_118(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_118),
        .out_data_out_119(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_119),
        .out_data_out_120(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_120),
        .out_data_out_121(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_121),
        .out_data_out_122(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_122),
        .out_data_out_123(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_123),
        .out_data_out_124(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_124),
        .out_data_out_125(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_125),
        .out_data_out_126(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_126),
        .out_data_out_127(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_127),
        .out_data_out_128(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_128),
        .out_data_out_129(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_129),
        .out_data_out_130(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_130),
        .out_data_out_131(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_131),
        .out_data_out_132(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_132),
        .out_data_out_133(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_133),
        .out_data_out_134(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_134),
        .out_data_out_135(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_135),
        .out_data_out_136(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_136),
        .out_data_out_137(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_137),
        .out_data_out_138(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_138),
        .out_data_out_139(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_139),
        .out_data_out_140(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_140),
        .out_data_out_141(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_141),
        .out_data_out_142(i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_142),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x(BLACKBOX,79)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_valid_out@20000000
    // out out_o_valid@769
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_cnn8@769
    // out out_c0_exi142_0@769
    // out out_c0_exi142_1@769
    // out out_c0_exi142_2@769
    // out out_c0_exi142_3@769
    // out out_c0_exi142_4@769
    // out out_c0_exi142_5@769
    // out out_c0_exi142_6@769
    // out out_c0_exi142_7@769
    // out out_c0_exi142_8@769
    // out out_c0_exi142_9@769
    // out out_c0_exi142_10@769
    // out out_c0_exi142_11@769
    // out out_c0_exi142_12@769
    // out out_c0_exi142_13@769
    // out out_c0_exi142_14@769
    // out out_c0_exi142_15@769
    // out out_c0_exi142_16@769
    // out out_c0_exi142_17@769
    // out out_c0_exi142_18@769
    // out out_c0_exi142_19@769
    // out out_c0_exi142_20@769
    // out out_c0_exi142_21@769
    // out out_c0_exi142_22@769
    // out out_c0_exi142_23@769
    // out out_c0_exi142_24@769
    // out out_c0_exi142_25@769
    // out out_c0_exi142_26@769
    // out out_c0_exi142_27@769
    // out out_c0_exi142_28@769
    // out out_c0_exi142_29@769
    // out out_c0_exi142_30@769
    // out out_c0_exi142_31@769
    // out out_c0_exi142_32@769
    // out out_c0_exi142_33@769
    // out out_c0_exi142_34@769
    // out out_c0_exi142_35@769
    // out out_c0_exi142_36@769
    // out out_c0_exi142_37@769
    // out out_c0_exi142_38@769
    // out out_c0_exi142_39@769
    // out out_c0_exi142_40@769
    // out out_c0_exi142_41@769
    // out out_c0_exi142_42@769
    // out out_c0_exi142_43@769
    // out out_c0_exi142_44@769
    // out out_c0_exi142_45@769
    // out out_c0_exi142_46@769
    // out out_c0_exi142_47@769
    // out out_c0_exi142_48@769
    // out out_c0_exi142_49@769
    // out out_c0_exi142_50@769
    // out out_c0_exi142_51@769
    // out out_c0_exi142_52@769
    // out out_c0_exi142_53@769
    // out out_c0_exi142_54@769
    // out out_c0_exi142_55@769
    // out out_c0_exi142_56@769
    // out out_c0_exi142_57@769
    // out out_c0_exi142_58@769
    // out out_c0_exi142_59@769
    // out out_c0_exi142_60@769
    // out out_c0_exi142_61@769
    // out out_c0_exi142_62@769
    // out out_c0_exi142_63@769
    // out out_c0_exi142_64@769
    // out out_c0_exi142_65@769
    // out out_c0_exi142_66@769
    // out out_c0_exi142_67@769
    // out out_c0_exi142_68@769
    // out out_c0_exi142_69@769
    // out out_c0_exi142_70@769
    // out out_c0_exi142_71@769
    // out out_c0_exi142_72@769
    // out out_c0_exi142_73@769
    // out out_c0_exi142_74@769
    // out out_c0_exi142_75@769
    // out out_c0_exi142_76@769
    // out out_c0_exi142_77@769
    // out out_c0_exi142_78@769
    // out out_c0_exi142_79@769
    // out out_c0_exi142_80@769
    // out out_c0_exi142_81@769
    // out out_c0_exi142_82@769
    // out out_c0_exi142_83@769
    // out out_c0_exi142_84@769
    // out out_c0_exi142_85@769
    // out out_c0_exi142_86@769
    // out out_c0_exi142_87@769
    // out out_c0_exi142_88@769
    // out out_c0_exi142_89@769
    // out out_c0_exi142_90@769
    // out out_c0_exi142_91@769
    // out out_c0_exi142_92@769
    // out out_c0_exi142_93@769
    // out out_c0_exi142_94@769
    // out out_c0_exi142_95@769
    // out out_c0_exi142_96@769
    // out out_c0_exi142_97@769
    // out out_c0_exi142_98@769
    // out out_c0_exi142_99@769
    // out out_c0_exi142_100@769
    // out out_c0_exi142_101@769
    // out out_c0_exi142_102@769
    // out out_c0_exi142_103@769
    // out out_c0_exi142_104@769
    // out out_c0_exi142_105@769
    // out out_c0_exi142_106@769
    // out out_c0_exi142_107@769
    // out out_c0_exi142_108@769
    // out out_c0_exi142_109@769
    // out out_c0_exi142_110@769
    // out out_c0_exi142_111@769
    // out out_c0_exi142_112@769
    // out out_c0_exi142_113@769
    // out out_c0_exi142_114@769
    // out out_c0_exi142_115@769
    // out out_c0_exi142_116@769
    // out out_c0_exi142_117@769
    // out out_c0_exi142_118@769
    // out out_c0_exi142_119@769
    // out out_c0_exi142_120@769
    // out out_c0_exi142_121@769
    // out out_c0_exi142_122@769
    // out out_c0_exi142_123@769
    // out out_c0_exi142_124@769
    // out out_c0_exi142_125@769
    // out out_c0_exi142_126@769
    // out out_c0_exi142_127@769
    // out out_c0_exi142_128@769
    // out out_c0_exi142_129@769
    // out out_c0_exi142_130@769
    // out out_c0_exi142_131@769
    // out out_c0_exi142_132@769
    // out out_c0_exi142_133@769
    // out out_c0_exi142_134@769
    // out out_c0_exi142_135@769
    // out out_c0_exi142_136@769
    // out out_c0_exi142_137@769
    // out out_c0_exi142_138@769
    // out out_c0_exi142_139@769
    // out out_c0_exi142_140@769
    // out out_c0_exi142_141@769
    // out out_c0_exi142_142@769
    cnn_i_sfc_logic_s_c0_in_for_cond47_preheader_s_c0_enter87510_cnn724 thei_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_input(in_input),
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_42_0(in_intel_reserved_ffwd_42_0),
        .in_intel_reserved_ffwd_43_0(in_intel_reserved_ffwd_43_0),
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_intel_reserved_ffwd_48_0(in_intel_reserved_ffwd_48_0),
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_51_0(in_intel_reserved_ffwd_51_0),
        .in_intel_reserved_ffwd_52_0(in_intel_reserved_ffwd_52_0),
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_intel_reserved_ffwd_54_0(in_intel_reserved_ffwd_54_0),
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_intel_reserved_ffwd_57_0(in_intel_reserved_ffwd_57_0),
        .in_intel_reserved_ffwd_58_0(in_intel_reserved_ffwd_58_0),
        .in_intel_reserved_ffwd_59_0(in_intel_reserved_ffwd_59_0),
        .in_intel_reserved_ffwd_60_0(in_intel_reserved_ffwd_60_0),
        .in_intel_reserved_ffwd_61_0(in_intel_reserved_ffwd_61_0),
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_intel_reserved_ffwd_65_0(in_intel_reserved_ffwd_65_0),
        .in_intel_reserved_ffwd_66_0(in_intel_reserved_ffwd_66_0),
        .in_intel_reserved_ffwd_67_0(in_intel_reserved_ffwd_67_0),
        .in_intel_reserved_ffwd_68_0(in_intel_reserved_ffwd_68_0),
        .in_intel_reserved_ffwd_69_0(in_intel_reserved_ffwd_69_0),
        .in_intel_reserved_ffwd_70_0(in_intel_reserved_ffwd_70_0),
        .in_intel_reserved_ffwd_71_0(in_intel_reserved_ffwd_71_0),
        .in_intel_reserved_ffwd_72_0(in_intel_reserved_ffwd_72_0),
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_intel_reserved_ffwd_74_0(in_intel_reserved_ffwd_74_0),
        .in_intel_reserved_ffwd_75_0(in_intel_reserved_ffwd_75_0),
        .in_intel_reserved_ffwd_76_0(in_intel_reserved_ffwd_76_0),
        .in_intel_reserved_ffwd_77_0(in_intel_reserved_ffwd_77_0),
        .in_intel_reserved_ffwd_78_0(in_intel_reserved_ffwd_78_0),
        .in_intel_reserved_ffwd_79_0(in_intel_reserved_ffwd_79_0),
        .in_intel_reserved_ffwd_80_0(in_intel_reserved_ffwd_80_0),
        .in_intel_reserved_ffwd_81_0(in_intel_reserved_ffwd_81_0),
        .in_intel_reserved_ffwd_82_0(in_intel_reserved_ffwd_82_0),
        .in_intel_reserved_ffwd_83_0(in_intel_reserved_ffwd_83_0),
        .in_intel_reserved_ffwd_84_0(in_intel_reserved_ffwd_84_0),
        .in_intel_reserved_ffwd_85_0(in_intel_reserved_ffwd_85_0),
        .in_intel_reserved_ffwd_86_0(in_intel_reserved_ffwd_86_0),
        .in_intel_reserved_ffwd_87_0(in_intel_reserved_ffwd_87_0),
        .in_intel_reserved_ffwd_88_0(in_intel_reserved_ffwd_88_0),
        .in_intel_reserved_ffwd_89_0(in_intel_reserved_ffwd_89_0),
        .in_intel_reserved_ffwd_90_0(in_intel_reserved_ffwd_90_0),
        .in_intel_reserved_ffwd_91_0(in_intel_reserved_ffwd_91_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni12_0(in_c0_eni12_0),
        .in_c0_eni12_1(in_c0_eni12_1),
        .in_c0_eni12_2(in_c0_eni12_2),
        .in_c0_eni12_3(in_c0_eni12_3),
        .in_c0_eni12_4(in_c0_eni12_4),
        .in_c0_eni12_5(in_c0_eni12_5),
        .in_c0_eni12_6(in_c0_eni12_6),
        .in_c0_eni12_7(in_c0_eni12_7),
        .in_c0_eni12_8(in_c0_eni12_8),
        .in_c0_eni12_9(in_c0_eni12_9),
        .in_c0_eni12_10(in_c0_eni12_10),
        .in_c0_eni12_11(in_c0_eni12_11),
        .in_c0_eni12_12(in_c0_eni12_12),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_stall_out(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_valid_out(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_cnn8(),
        .out_c0_exi142_0(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_0),
        .out_c0_exi142_1(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_1),
        .out_c0_exi142_2(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_2),
        .out_c0_exi142_3(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_3),
        .out_c0_exi142_4(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_4),
        .out_c0_exi142_5(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_5),
        .out_c0_exi142_6(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_6),
        .out_c0_exi142_7(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_7),
        .out_c0_exi142_8(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_8),
        .out_c0_exi142_9(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_9),
        .out_c0_exi142_10(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_10),
        .out_c0_exi142_11(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_11),
        .out_c0_exi142_12(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_12),
        .out_c0_exi142_13(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_13),
        .out_c0_exi142_14(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_14),
        .out_c0_exi142_15(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_15),
        .out_c0_exi142_16(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_16),
        .out_c0_exi142_17(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_17),
        .out_c0_exi142_18(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_18),
        .out_c0_exi142_19(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_19),
        .out_c0_exi142_20(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_20),
        .out_c0_exi142_21(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_21),
        .out_c0_exi142_22(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_22),
        .out_c0_exi142_23(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_23),
        .out_c0_exi142_24(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_24),
        .out_c0_exi142_25(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_25),
        .out_c0_exi142_26(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_26),
        .out_c0_exi142_27(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_27),
        .out_c0_exi142_28(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_28),
        .out_c0_exi142_29(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_29),
        .out_c0_exi142_30(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_30),
        .out_c0_exi142_31(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_31),
        .out_c0_exi142_32(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_32),
        .out_c0_exi142_33(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_33),
        .out_c0_exi142_34(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_34),
        .out_c0_exi142_35(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_35),
        .out_c0_exi142_36(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_36),
        .out_c0_exi142_37(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_37),
        .out_c0_exi142_38(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_38),
        .out_c0_exi142_39(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_39),
        .out_c0_exi142_40(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_40),
        .out_c0_exi142_41(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_41),
        .out_c0_exi142_42(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_42),
        .out_c0_exi142_43(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_43),
        .out_c0_exi142_44(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_44),
        .out_c0_exi142_45(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_45),
        .out_c0_exi142_46(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_46),
        .out_c0_exi142_47(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_47),
        .out_c0_exi142_48(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_48),
        .out_c0_exi142_49(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_49),
        .out_c0_exi142_50(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_50),
        .out_c0_exi142_51(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_51),
        .out_c0_exi142_52(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_52),
        .out_c0_exi142_53(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_53),
        .out_c0_exi142_54(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_54),
        .out_c0_exi142_55(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_55),
        .out_c0_exi142_56(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_56),
        .out_c0_exi142_57(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_57),
        .out_c0_exi142_58(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_58),
        .out_c0_exi142_59(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_59),
        .out_c0_exi142_60(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_60),
        .out_c0_exi142_61(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_61),
        .out_c0_exi142_62(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_62),
        .out_c0_exi142_63(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_63),
        .out_c0_exi142_64(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_64),
        .out_c0_exi142_65(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_65),
        .out_c0_exi142_66(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_66),
        .out_c0_exi142_67(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_67),
        .out_c0_exi142_68(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_68),
        .out_c0_exi142_69(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_69),
        .out_c0_exi142_70(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_70),
        .out_c0_exi142_71(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_71),
        .out_c0_exi142_72(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_72),
        .out_c0_exi142_73(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_73),
        .out_c0_exi142_74(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_74),
        .out_c0_exi142_75(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_75),
        .out_c0_exi142_76(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_76),
        .out_c0_exi142_77(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_77),
        .out_c0_exi142_78(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_78),
        .out_c0_exi142_79(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_79),
        .out_c0_exi142_80(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_80),
        .out_c0_exi142_81(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_81),
        .out_c0_exi142_82(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_82),
        .out_c0_exi142_83(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_83),
        .out_c0_exi142_84(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_84),
        .out_c0_exi142_85(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_85),
        .out_c0_exi142_86(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_86),
        .out_c0_exi142_87(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_87),
        .out_c0_exi142_88(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_88),
        .out_c0_exi142_89(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_89),
        .out_c0_exi142_90(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_90),
        .out_c0_exi142_91(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_91),
        .out_c0_exi142_92(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_92),
        .out_c0_exi142_93(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_93),
        .out_c0_exi142_94(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_94),
        .out_c0_exi142_95(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_95),
        .out_c0_exi142_96(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_96),
        .out_c0_exi142_97(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_97),
        .out_c0_exi142_98(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_98),
        .out_c0_exi142_99(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_99),
        .out_c0_exi142_100(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_100),
        .out_c0_exi142_101(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_101),
        .out_c0_exi142_102(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_102),
        .out_c0_exi142_103(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_103),
        .out_c0_exi142_104(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_104),
        .out_c0_exi142_105(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_105),
        .out_c0_exi142_106(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_106),
        .out_c0_exi142_107(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_107),
        .out_c0_exi142_108(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_108),
        .out_c0_exi142_109(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_109),
        .out_c0_exi142_110(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_110),
        .out_c0_exi142_111(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_111),
        .out_c0_exi142_112(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_112),
        .out_c0_exi142_113(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_113),
        .out_c0_exi142_114(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_114),
        .out_c0_exi142_115(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_115),
        .out_c0_exi142_116(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_116),
        .out_c0_exi142_117(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_117),
        .out_c0_exi142_118(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_118),
        .out_c0_exi142_119(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_119),
        .out_c0_exi142_120(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_120),
        .out_c0_exi142_121(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_121),
        .out_c0_exi142_122(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_122),
        .out_c0_exi142_123(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_123),
        .out_c0_exi142_124(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_124),
        .out_c0_exi142_125(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_125),
        .out_c0_exi142_126(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_126),
        .out_c0_exi142_127(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_127),
        .out_c0_exi142_128(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_128),
        .out_c0_exi142_129(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_129),
        .out_c0_exi142_130(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_130),
        .out_c0_exi142_131(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_131),
        .out_c0_exi142_132(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_132),
        .out_c0_exi142_133(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_133),
        .out_c0_exi142_134(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_134),
        .out_c0_exi142_135(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_135),
        .out_c0_exi142_136(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_136),
        .out_c0_exi142_137(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_137),
        .out_c0_exi142_138(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_138),
        .out_c0_exi142_139(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_139),
        .out_c0_exi142_140(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_140),
        .out_c0_exi142_141(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_141),
        .out_c0_exi142_142(i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_c0_exi142_142),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_stall_out = i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_stall_out;

    // sync_out(GPOUT,10)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,12)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_valid_out = i_sfc_logic_s_c0_in_for_cond47_preheader_cnns_c0_enter87510_cnn724_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn729_exiting_valid_out;

    // dupName_0_sync_out_aunroll_x(GPOUT,81)@775
    assign out_c0_exit897_0 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_0;
    assign out_c0_exit897_1 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_1;
    assign out_c0_exit897_2 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_2;
    assign out_c0_exit897_3 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_3;
    assign out_c0_exit897_4 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_4;
    assign out_c0_exit897_5 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_5;
    assign out_c0_exit897_6 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_6;
    assign out_c0_exit897_7 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_7;
    assign out_c0_exit897_8 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_8;
    assign out_c0_exit897_9 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_9;
    assign out_c0_exit897_10 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_10;
    assign out_c0_exit897_11 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_11;
    assign out_c0_exit897_12 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_12;
    assign out_c0_exit897_13 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_13;
    assign out_c0_exit897_14 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_14;
    assign out_c0_exit897_15 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_15;
    assign out_c0_exit897_16 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_16;
    assign out_c0_exit897_17 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_17;
    assign out_c0_exit897_18 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_18;
    assign out_c0_exit897_19 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_19;
    assign out_c0_exit897_20 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_20;
    assign out_c0_exit897_21 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_21;
    assign out_c0_exit897_22 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_22;
    assign out_c0_exit897_23 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_23;
    assign out_c0_exit897_24 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_24;
    assign out_c0_exit897_25 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_25;
    assign out_c0_exit897_26 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_26;
    assign out_c0_exit897_27 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_27;
    assign out_c0_exit897_28 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_28;
    assign out_c0_exit897_29 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_29;
    assign out_c0_exit897_30 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_30;
    assign out_c0_exit897_31 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_31;
    assign out_c0_exit897_32 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_32;
    assign out_c0_exit897_33 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_33;
    assign out_c0_exit897_34 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_34;
    assign out_c0_exit897_35 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_35;
    assign out_c0_exit897_36 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_36;
    assign out_c0_exit897_37 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_37;
    assign out_c0_exit897_38 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_38;
    assign out_c0_exit897_39 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_39;
    assign out_c0_exit897_40 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_40;
    assign out_c0_exit897_41 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_41;
    assign out_c0_exit897_42 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_42;
    assign out_c0_exit897_43 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_43;
    assign out_c0_exit897_44 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_44;
    assign out_c0_exit897_45 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_45;
    assign out_c0_exit897_46 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_46;
    assign out_c0_exit897_47 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_47;
    assign out_c0_exit897_48 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_48;
    assign out_c0_exit897_49 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_49;
    assign out_c0_exit897_50 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_50;
    assign out_c0_exit897_51 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_51;
    assign out_c0_exit897_52 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_52;
    assign out_c0_exit897_53 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_53;
    assign out_c0_exit897_54 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_54;
    assign out_c0_exit897_55 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_55;
    assign out_c0_exit897_56 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_56;
    assign out_c0_exit897_57 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_57;
    assign out_c0_exit897_58 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_58;
    assign out_c0_exit897_59 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_59;
    assign out_c0_exit897_60 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_60;
    assign out_c0_exit897_61 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_61;
    assign out_c0_exit897_62 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_62;
    assign out_c0_exit897_63 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_63;
    assign out_c0_exit897_64 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_64;
    assign out_c0_exit897_65 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_65;
    assign out_c0_exit897_66 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_66;
    assign out_c0_exit897_67 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_67;
    assign out_c0_exit897_68 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_68;
    assign out_c0_exit897_69 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_69;
    assign out_c0_exit897_70 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_70;
    assign out_c0_exit897_71 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_71;
    assign out_c0_exit897_72 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_72;
    assign out_c0_exit897_73 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_73;
    assign out_c0_exit897_74 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_74;
    assign out_c0_exit897_75 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_75;
    assign out_c0_exit897_76 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_76;
    assign out_c0_exit897_77 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_77;
    assign out_c0_exit897_78 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_78;
    assign out_c0_exit897_79 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_79;
    assign out_c0_exit897_80 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_80;
    assign out_c0_exit897_81 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_81;
    assign out_c0_exit897_82 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_82;
    assign out_c0_exit897_83 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_83;
    assign out_c0_exit897_84 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_84;
    assign out_c0_exit897_85 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_85;
    assign out_c0_exit897_86 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_86;
    assign out_c0_exit897_87 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_87;
    assign out_c0_exit897_88 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_88;
    assign out_c0_exit897_89 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_89;
    assign out_c0_exit897_90 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_90;
    assign out_c0_exit897_91 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_91;
    assign out_c0_exit897_92 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_92;
    assign out_c0_exit897_93 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_93;
    assign out_c0_exit897_94 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_94;
    assign out_c0_exit897_95 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_95;
    assign out_c0_exit897_96 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_96;
    assign out_c0_exit897_97 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_97;
    assign out_c0_exit897_98 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_98;
    assign out_c0_exit897_99 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_99;
    assign out_c0_exit897_100 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_100;
    assign out_c0_exit897_101 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_101;
    assign out_c0_exit897_102 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_102;
    assign out_c0_exit897_103 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_103;
    assign out_c0_exit897_104 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_104;
    assign out_c0_exit897_105 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_105;
    assign out_c0_exit897_106 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_106;
    assign out_c0_exit897_107 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_107;
    assign out_c0_exit897_108 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_108;
    assign out_c0_exit897_109 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_109;
    assign out_c0_exit897_110 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_110;
    assign out_c0_exit897_111 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_111;
    assign out_c0_exit897_112 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_112;
    assign out_c0_exit897_113 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_113;
    assign out_c0_exit897_114 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_114;
    assign out_c0_exit897_115 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_115;
    assign out_c0_exit897_116 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_116;
    assign out_c0_exit897_117 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_117;
    assign out_c0_exit897_118 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_118;
    assign out_c0_exit897_119 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_119;
    assign out_c0_exit897_120 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_120;
    assign out_c0_exit897_121 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_121;
    assign out_c0_exit897_122 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_122;
    assign out_c0_exit897_123 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_123;
    assign out_c0_exit897_124 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_124;
    assign out_c0_exit897_125 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_125;
    assign out_c0_exit897_126 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_126;
    assign out_c0_exit897_127 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_127;
    assign out_c0_exit897_128 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_128;
    assign out_c0_exit897_129 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_129;
    assign out_c0_exit897_130 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_130;
    assign out_c0_exit897_131 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_131;
    assign out_c0_exit897_132 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_132;
    assign out_c0_exit897_133 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_133;
    assign out_c0_exit897_134 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_134;
    assign out_c0_exit897_135 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_135;
    assign out_c0_exit897_136 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_136;
    assign out_c0_exit897_137 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_137;
    assign out_c0_exit897_138 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_138;
    assign out_c0_exit897_139 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_139;
    assign out_c0_exit897_140 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_140;
    assign out_c0_exit897_141 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_141;
    assign out_c0_exit897_142 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_data_out_142;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond47_preheader_cnns_c0_exit897_cnn1467_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,82)
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
