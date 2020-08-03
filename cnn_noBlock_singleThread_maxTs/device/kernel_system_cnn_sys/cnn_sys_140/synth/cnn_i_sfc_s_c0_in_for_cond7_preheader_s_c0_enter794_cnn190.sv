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

// SystemVerilog created from cnn_i_sfc_s_c0_in_for_cond7_preheader_s_c0_enter794_cnn190
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_s_c0_in_for_cond7_preheader_s_c0_enter794_cnn190 (
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    output wire [63:0] out_intel_reserved_ffwd_20_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_21_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_23_0,
    input wire [63:0] in_intel_reserved_ffwd_93_0,
    output wire [64:0] out_intel_reserved_ffwd_24_0,
    input wire [63:0] in_intel_reserved_ffwd_94_0,
    output wire [63:0] out_intel_reserved_ffwd_25_0,
    input wire [63:0] in_intel_reserved_ffwd_95_0,
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
    input wire [0:0] in_c0_eni2793_0,
    input wire [0:0] in_c0_eni2793_1,
    input wire [63:0] in_c0_eni2793_2,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit798_0,
    output wire [63:0] out_c0_exit798_1,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x_out_data_out_0;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x_out_data_out_1;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_21_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [64:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_24_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_25_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_26_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_27_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_28_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_29_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_30_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_31_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_32_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_33_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_34_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_36_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_37_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_38_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_39_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_40_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_41_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_42_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_43_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_44_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_45_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_46_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_47_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_48_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_49_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_50_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_51_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_52_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_53_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_54_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_55_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_56_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_57_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_58_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_59_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_60_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_61_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_62_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_63_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_64_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_65_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_66_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_67_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_68_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_69_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_70_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_71_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_72_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_73_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_74_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_75_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_76_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_77_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_78_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_79_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_80_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_81_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_82_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_83_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_84_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_85_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_86_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_87_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_88_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_89_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_90_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_91_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_92_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_c0_exi1797_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_c0_exi1797_1;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x(BLACKBOX,85)@20000000
    // out out_valid_out@20000006
    // out out_data_out_0@20000006
    // out out_data_out_1@20000006
    cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_coA000000Z_s_c0_exit798_cnn447 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_o_valid),
        .in_data_in_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_c0_exi1797_0),
        .in_data_in_1(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_c0_exi1797_1),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x_out_valid_out),
        .out_data_out_0(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x_out_data_out_0),
        .out_data_out_1(i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x_out_data_out_1),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x(BLACKBOX,86)@1
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
    // out out_o_valid@9
    // out out_unnamed_cnn8@9
    // out out_c0_exi1797_0@9
    // out out_c0_exi1797_1@9
    cnn_i_sfc_logic_s_c0_in_for_cond7_preheader_s_c0_enter794_cnn191 thei_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_93_0(in_intel_reserved_ffwd_93_0),
        .in_intel_reserved_ffwd_94_0(in_intel_reserved_ffwd_94_0),
        .in_intel_reserved_ffwd_95_0(in_intel_reserved_ffwd_95_0),
        .in_c0_eni2793_0(in_c0_eni2793_0),
        .in_c0_eni2793_1(in_c0_eni2793_1),
        .in_c0_eni2793_2(in_c0_eni2793_2),
        .out_intel_reserved_ffwd_20_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_23_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_50_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_51_0),
        .out_intel_reserved_ffwd_52_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_58_0),
        .out_intel_reserved_ffwd_59_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_60_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_65_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_65_0),
        .out_intel_reserved_ffwd_66_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_66_0),
        .out_intel_reserved_ffwd_67_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_67_0),
        .out_intel_reserved_ffwd_68_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_68_0),
        .out_intel_reserved_ffwd_69_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_69_0),
        .out_intel_reserved_ffwd_70_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_70_0),
        .out_intel_reserved_ffwd_71_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_71_0),
        .out_intel_reserved_ffwd_72_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_72_0),
        .out_intel_reserved_ffwd_73_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_74_0),
        .out_intel_reserved_ffwd_75_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_75_0),
        .out_intel_reserved_ffwd_76_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_76_0),
        .out_intel_reserved_ffwd_77_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_77_0),
        .out_intel_reserved_ffwd_78_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_78_0),
        .out_intel_reserved_ffwd_79_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_79_0),
        .out_intel_reserved_ffwd_80_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_80_0),
        .out_intel_reserved_ffwd_81_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_81_0),
        .out_intel_reserved_ffwd_82_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_82_0),
        .out_intel_reserved_ffwd_83_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_83_0),
        .out_intel_reserved_ffwd_84_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_84_0),
        .out_intel_reserved_ffwd_85_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_85_0),
        .out_intel_reserved_ffwd_86_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_86_0),
        .out_intel_reserved_ffwd_87_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_87_0),
        .out_intel_reserved_ffwd_88_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_88_0),
        .out_intel_reserved_ffwd_89_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_89_0),
        .out_intel_reserved_ffwd_90_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_90_0),
        .out_intel_reserved_ffwd_91_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_91_0),
        .out_intel_reserved_ffwd_92_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_92_0),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_o_valid),
        .out_unnamed_cnn8(),
        .out_c0_exi1797_0(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_c0_exi1797_0),
        .out_c0_exi1797_1(i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_c0_exi1797_1),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // regfree_osync(GPOUT,6)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_20_0;

    // sync_out(GPOUT,8)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_21_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_21_0;

    // dupName_1_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_23_0;

    // dupName_2_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_24_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_24_0;

    // dupName_3_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_25_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_25_0;

    // dupName_4_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_26_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_26_0;

    // dupName_5_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_27_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_27_0;

    // dupName_6_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_28_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_28_0;

    // dupName_7_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_29_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_29_0;

    // dupName_8_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_30_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_30_0;

    // dupName_9_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_31_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_31_0;

    // dupName_10_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_32_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_32_0;

    // dupName_11_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_33_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_33_0;

    // dupName_12_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_34_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_34_0;

    // dupName_13_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_35_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_35_0;

    // dupName_14_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_36_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_36_0;

    // dupName_15_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_37_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_37_0;

    // dupName_16_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_38_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_38_0;

    // dupName_17_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_39_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_39_0;

    // dupName_18_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_40_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_40_0;

    // dupName_19_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_41_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_41_0;

    // dupName_20_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_42_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_42_0;

    // dupName_21_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_43_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_43_0;

    // dupName_22_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_44_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_44_0;

    // dupName_23_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_45_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_45_0;

    // dupName_24_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_46_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_46_0;

    // dupName_25_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_47_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_47_0;

    // dupName_26_regfree_osync_x(GPOUT,40)
    assign out_intel_reserved_ffwd_48_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_48_0;

    // dupName_27_regfree_osync_x(GPOUT,41)
    assign out_intel_reserved_ffwd_49_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_49_0;

    // dupName_28_regfree_osync_x(GPOUT,42)
    assign out_intel_reserved_ffwd_50_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_50_0;

    // dupName_29_regfree_osync_x(GPOUT,43)
    assign out_intel_reserved_ffwd_51_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_51_0;

    // dupName_30_regfree_osync_x(GPOUT,44)
    assign out_intel_reserved_ffwd_52_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_52_0;

    // dupName_31_regfree_osync_x(GPOUT,45)
    assign out_intel_reserved_ffwd_53_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_53_0;

    // dupName_32_regfree_osync_x(GPOUT,46)
    assign out_intel_reserved_ffwd_54_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_54_0;

    // dupName_33_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_55_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_55_0;

    // dupName_34_regfree_osync_x(GPOUT,48)
    assign out_intel_reserved_ffwd_56_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_56_0;

    // dupName_35_regfree_osync_x(GPOUT,49)
    assign out_intel_reserved_ffwd_57_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_57_0;

    // dupName_36_regfree_osync_x(GPOUT,50)
    assign out_intel_reserved_ffwd_58_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_58_0;

    // dupName_37_regfree_osync_x(GPOUT,51)
    assign out_intel_reserved_ffwd_59_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_59_0;

    // dupName_38_regfree_osync_x(GPOUT,52)
    assign out_intel_reserved_ffwd_60_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_60_0;

    // dupName_39_regfree_osync_x(GPOUT,53)
    assign out_intel_reserved_ffwd_61_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_61_0;

    // dupName_40_regfree_osync_x(GPOUT,54)
    assign out_intel_reserved_ffwd_62_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_62_0;

    // dupName_41_regfree_osync_x(GPOUT,55)
    assign out_intel_reserved_ffwd_63_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_63_0;

    // dupName_42_regfree_osync_x(GPOUT,56)
    assign out_intel_reserved_ffwd_64_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_64_0;

    // dupName_43_regfree_osync_x(GPOUT,57)
    assign out_intel_reserved_ffwd_65_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_65_0;

    // dupName_44_regfree_osync_x(GPOUT,58)
    assign out_intel_reserved_ffwd_66_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_66_0;

    // dupName_45_regfree_osync_x(GPOUT,59)
    assign out_intel_reserved_ffwd_67_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_67_0;

    // dupName_46_regfree_osync_x(GPOUT,60)
    assign out_intel_reserved_ffwd_68_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_68_0;

    // dupName_47_regfree_osync_x(GPOUT,61)
    assign out_intel_reserved_ffwd_69_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_69_0;

    // dupName_48_regfree_osync_x(GPOUT,62)
    assign out_intel_reserved_ffwd_70_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_70_0;

    // dupName_49_regfree_osync_x(GPOUT,63)
    assign out_intel_reserved_ffwd_71_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_71_0;

    // dupName_50_regfree_osync_x(GPOUT,64)
    assign out_intel_reserved_ffwd_72_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_72_0;

    // dupName_51_regfree_osync_x(GPOUT,65)
    assign out_intel_reserved_ffwd_73_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_73_0;

    // dupName_52_regfree_osync_x(GPOUT,66)
    assign out_intel_reserved_ffwd_74_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_74_0;

    // dupName_53_regfree_osync_x(GPOUT,67)
    assign out_intel_reserved_ffwd_75_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_75_0;

    // dupName_54_regfree_osync_x(GPOUT,68)
    assign out_intel_reserved_ffwd_76_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_76_0;

    // dupName_55_regfree_osync_x(GPOUT,69)
    assign out_intel_reserved_ffwd_77_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_77_0;

    // dupName_56_regfree_osync_x(GPOUT,70)
    assign out_intel_reserved_ffwd_78_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_78_0;

    // dupName_57_regfree_osync_x(GPOUT,71)
    assign out_intel_reserved_ffwd_79_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_79_0;

    // dupName_58_regfree_osync_x(GPOUT,72)
    assign out_intel_reserved_ffwd_80_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_80_0;

    // dupName_59_regfree_osync_x(GPOUT,73)
    assign out_intel_reserved_ffwd_81_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_81_0;

    // dupName_60_regfree_osync_x(GPOUT,74)
    assign out_intel_reserved_ffwd_82_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_82_0;

    // dupName_61_regfree_osync_x(GPOUT,75)
    assign out_intel_reserved_ffwd_83_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_83_0;

    // dupName_62_regfree_osync_x(GPOUT,76)
    assign out_intel_reserved_ffwd_84_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_84_0;

    // dupName_63_regfree_osync_x(GPOUT,77)
    assign out_intel_reserved_ffwd_85_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_85_0;

    // dupName_64_regfree_osync_x(GPOUT,78)
    assign out_intel_reserved_ffwd_86_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_86_0;

    // dupName_65_regfree_osync_x(GPOUT,79)
    assign out_intel_reserved_ffwd_87_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_87_0;

    // dupName_66_regfree_osync_x(GPOUT,80)
    assign out_intel_reserved_ffwd_88_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_88_0;

    // dupName_67_regfree_osync_x(GPOUT,81)
    assign out_intel_reserved_ffwd_89_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_89_0;

    // dupName_68_regfree_osync_x(GPOUT,82)
    assign out_intel_reserved_ffwd_90_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_90_0;

    // dupName_69_regfree_osync_x(GPOUT,83)
    assign out_intel_reserved_ffwd_91_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_91_0;

    // dupName_70_regfree_osync_x(GPOUT,84)
    assign out_intel_reserved_ffwd_92_0 = i_sfc_logic_s_c0_in_for_cond7_preheader_cnns_c0_enter794_cnn191_aunroll_x_out_intel_reserved_ffwd_92_0;

    // dupName_0_sync_out_aunroll_x(GPOUT,88)@15
    assign out_c0_exit798_0 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x_out_data_out_0;
    assign out_c0_exit798_1 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x_out_data_out_1;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond7_preheader_cnns_c0_exit798_cnn446_aunroll_x_out_valid_out;

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
