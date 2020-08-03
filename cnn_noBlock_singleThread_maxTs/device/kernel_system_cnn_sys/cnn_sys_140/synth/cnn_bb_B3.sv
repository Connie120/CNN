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

// SystemVerilog created from cnn_bb_B3
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B3 (
    input wire [63:0] in_add1789_0,
    input wire [63:0] in_add1789_1,
    input wire [63:0] in_add83_0,
    input wire [63:0] in_add83_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_input,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_93_0,
    input wire [63:0] in_intel_reserved_ffwd_94_0,
    input wire [63:0] in_intel_reserved_ffwd_95_0,
    input wire [63:0] in_output,
    input wire [0:0] in_stall_in_0,
    input wire [63:0] in_too_065_0,
    input wire [63:0] in_too_065_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [63:0] in_weights,
    output wire [63:0] out_add1789,
    output wire [63:0] out_add83,
    output wire [63:0] out_c0_exe1799,
    output wire [63:0] out_intel_reserved_ffwd_20_0,
    output wire [63:0] out_intel_reserved_ffwd_21_0,
    output wire [63:0] out_intel_reserved_ffwd_22_0,
    output wire [63:0] out_intel_reserved_ffwd_23_0,
    output wire [64:0] out_intel_reserved_ffwd_24_0,
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
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_cnn_B3_stall_region_out_add1789;
    wire [63:0] bb_cnn_B3_stall_region_out_add83;
    wire [63:0] bb_cnn_B3_stall_region_out_c0_exe1799;
    wire [63:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_20_0;
    wire [63:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_21_0;
    wire [63:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_22_0;
    wire [63:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_23_0;
    wire [64:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_24_0;
    wire [63:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_25_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_26_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_27_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_28_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_29_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_30_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_31_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_32_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_33_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_34_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_35_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_36_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_37_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_38_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_39_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_40_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_41_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_42_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_43_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_44_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_45_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_46_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_47_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_48_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_49_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_50_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_51_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_52_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_53_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_54_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_55_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_56_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_57_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_58_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_59_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_60_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_61_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_62_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_63_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_64_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_65_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_66_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_67_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_68_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_69_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_70_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_71_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_72_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_73_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_74_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_75_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_76_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_77_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_78_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_79_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_80_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_81_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_82_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_83_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_84_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_85_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_86_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_87_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_88_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_89_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_90_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_91_0;
    wire [0:0] bb_cnn_B3_stall_region_out_intel_reserved_ffwd_92_0;
    wire [0:0] bb_cnn_B3_stall_region_out_stall_out;
    wire [0:0] bb_cnn_B3_stall_region_out_valid_out;
    wire [63:0] cnn_B3_branch_out_add1789;
    wire [63:0] cnn_B3_branch_out_add83;
    wire [63:0] cnn_B3_branch_out_c0_exe1799;
    wire [0:0] cnn_B3_branch_out_stall_out;
    wire [0:0] cnn_B3_branch_out_valid_out_0;
    wire [63:0] cnn_B3_merge_out_add1789;
    wire [63:0] cnn_B3_merge_out_add83;
    wire [0:0] cnn_B3_merge_out_forked;
    wire [0:0] cnn_B3_merge_out_stall_out_0;
    wire [0:0] cnn_B3_merge_out_stall_out_1;
    wire [63:0] cnn_B3_merge_out_too_065;
    wire [0:0] cnn_B3_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // cnn_B3_merge(BLACKBOX,4)
    cnn_B3_merge thecnn_B3_merge (
        .in_add1789_0(in_add1789_0),
        .in_add1789_1(in_add1789_1),
        .in_add83_0(in_add83_0),
        .in_add83_1(in_add83_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_cnn_B3_stall_region_out_stall_out),
        .in_too_065_0(in_too_065_0),
        .in_too_065_1(in_too_065_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add1789(cnn_B3_merge_out_add1789),
        .out_add83(cnn_B3_merge_out_add83),
        .out_forked(cnn_B3_merge_out_forked),
        .out_stall_out_0(cnn_B3_merge_out_stall_out_0),
        .out_stall_out_1(cnn_B3_merge_out_stall_out_1),
        .out_too_065(cnn_B3_merge_out_too_065),
        .out_valid_out(cnn_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_B3_stall_region(BLACKBOX,2)
    cnn_bb_B3_stall_region thebb_cnn_B3_stall_region (
        .in_add1789(cnn_B3_merge_out_add1789),
        .in_add83(cnn_B3_merge_out_add83),
        .in_forked(cnn_B3_merge_out_forked),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_93_0(in_intel_reserved_ffwd_93_0),
        .in_intel_reserved_ffwd_94_0(in_intel_reserved_ffwd_94_0),
        .in_intel_reserved_ffwd_95_0(in_intel_reserved_ffwd_95_0),
        .in_stall_in(cnn_B3_branch_out_stall_out),
        .in_too_065(cnn_B3_merge_out_too_065),
        .in_valid_in(cnn_B3_merge_out_valid_out),
        .out_add1789(bb_cnn_B3_stall_region_out_add1789),
        .out_add83(bb_cnn_B3_stall_region_out_add83),
        .out_c0_exe1799(bb_cnn_B3_stall_region_out_c0_exe1799),
        .out_intel_reserved_ffwd_20_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_50_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_51_0),
        .out_intel_reserved_ffwd_52_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_58_0),
        .out_intel_reserved_ffwd_59_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_60_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_65_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_65_0),
        .out_intel_reserved_ffwd_66_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_66_0),
        .out_intel_reserved_ffwd_67_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_67_0),
        .out_intel_reserved_ffwd_68_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_68_0),
        .out_intel_reserved_ffwd_69_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_69_0),
        .out_intel_reserved_ffwd_70_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_70_0),
        .out_intel_reserved_ffwd_71_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_71_0),
        .out_intel_reserved_ffwd_72_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_72_0),
        .out_intel_reserved_ffwd_73_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_74_0),
        .out_intel_reserved_ffwd_75_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_75_0),
        .out_intel_reserved_ffwd_76_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_76_0),
        .out_intel_reserved_ffwd_77_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_77_0),
        .out_intel_reserved_ffwd_78_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_78_0),
        .out_intel_reserved_ffwd_79_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_79_0),
        .out_intel_reserved_ffwd_80_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_80_0),
        .out_intel_reserved_ffwd_81_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_81_0),
        .out_intel_reserved_ffwd_82_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_82_0),
        .out_intel_reserved_ffwd_83_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_83_0),
        .out_intel_reserved_ffwd_84_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_84_0),
        .out_intel_reserved_ffwd_85_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_85_0),
        .out_intel_reserved_ffwd_86_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_86_0),
        .out_intel_reserved_ffwd_87_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_87_0),
        .out_intel_reserved_ffwd_88_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_88_0),
        .out_intel_reserved_ffwd_89_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_89_0),
        .out_intel_reserved_ffwd_90_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_90_0),
        .out_intel_reserved_ffwd_91_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_91_0),
        .out_intel_reserved_ffwd_92_0(bb_cnn_B3_stall_region_out_intel_reserved_ffwd_92_0),
        .out_stall_out(bb_cnn_B3_stall_region_out_stall_out),
        .out_valid_out(bb_cnn_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_B3_branch(BLACKBOX,3)
    cnn_B3_branch thecnn_B3_branch (
        .in_add1789(bb_cnn_B3_stall_region_out_add1789),
        .in_add83(bb_cnn_B3_stall_region_out_add83),
        .in_c0_exe1799(bb_cnn_B3_stall_region_out_c0_exe1799),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_cnn_B3_stall_region_out_valid_out),
        .out_add1789(cnn_B3_branch_out_add1789),
        .out_add83(cnn_B3_branch_out_add83),
        .out_c0_exe1799(cnn_B3_branch_out_c0_exe1799),
        .out_stall_out(cnn_B3_branch_out_stall_out),
        .out_valid_out_0(cnn_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add1789(GPOUT,25)
    assign out_add1789 = cnn_B3_branch_out_add1789;

    // out_add83(GPOUT,26)
    assign out_add83 = cnn_B3_branch_out_add83;

    // out_c0_exe1799(GPOUT,27)
    assign out_c0_exe1799 = cnn_B3_branch_out_c0_exe1799;

    // out_intel_reserved_ffwd_20_0(GPOUT,28)
    assign out_intel_reserved_ffwd_20_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_20_0;

    // out_intel_reserved_ffwd_21_0(GPOUT,29)
    assign out_intel_reserved_ffwd_21_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_21_0;

    // out_intel_reserved_ffwd_22_0(GPOUT,30)
    assign out_intel_reserved_ffwd_22_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_22_0;

    // out_intel_reserved_ffwd_23_0(GPOUT,31)
    assign out_intel_reserved_ffwd_23_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_23_0;

    // out_intel_reserved_ffwd_24_0(GPOUT,32)
    assign out_intel_reserved_ffwd_24_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_24_0;

    // out_intel_reserved_ffwd_25_0(GPOUT,33)
    assign out_intel_reserved_ffwd_25_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_25_0;

    // out_intel_reserved_ffwd_26_0(GPOUT,34)
    assign out_intel_reserved_ffwd_26_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_26_0;

    // out_intel_reserved_ffwd_27_0(GPOUT,35)
    assign out_intel_reserved_ffwd_27_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_27_0;

    // out_intel_reserved_ffwd_28_0(GPOUT,36)
    assign out_intel_reserved_ffwd_28_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_28_0;

    // out_intel_reserved_ffwd_29_0(GPOUT,37)
    assign out_intel_reserved_ffwd_29_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_29_0;

    // out_intel_reserved_ffwd_30_0(GPOUT,38)
    assign out_intel_reserved_ffwd_30_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_30_0;

    // out_intel_reserved_ffwd_31_0(GPOUT,39)
    assign out_intel_reserved_ffwd_31_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_31_0;

    // out_intel_reserved_ffwd_32_0(GPOUT,40)
    assign out_intel_reserved_ffwd_32_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_32_0;

    // out_intel_reserved_ffwd_33_0(GPOUT,41)
    assign out_intel_reserved_ffwd_33_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_33_0;

    // out_intel_reserved_ffwd_34_0(GPOUT,42)
    assign out_intel_reserved_ffwd_34_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_34_0;

    // out_intel_reserved_ffwd_35_0(GPOUT,43)
    assign out_intel_reserved_ffwd_35_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_35_0;

    // out_intel_reserved_ffwd_36_0(GPOUT,44)
    assign out_intel_reserved_ffwd_36_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_36_0;

    // out_intel_reserved_ffwd_37_0(GPOUT,45)
    assign out_intel_reserved_ffwd_37_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_37_0;

    // out_intel_reserved_ffwd_38_0(GPOUT,46)
    assign out_intel_reserved_ffwd_38_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_38_0;

    // out_intel_reserved_ffwd_39_0(GPOUT,47)
    assign out_intel_reserved_ffwd_39_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_39_0;

    // out_intel_reserved_ffwd_40_0(GPOUT,48)
    assign out_intel_reserved_ffwd_40_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_40_0;

    // out_intel_reserved_ffwd_41_0(GPOUT,49)
    assign out_intel_reserved_ffwd_41_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_41_0;

    // out_intel_reserved_ffwd_42_0(GPOUT,50)
    assign out_intel_reserved_ffwd_42_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_42_0;

    // out_intel_reserved_ffwd_43_0(GPOUT,51)
    assign out_intel_reserved_ffwd_43_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_43_0;

    // out_intel_reserved_ffwd_44_0(GPOUT,52)
    assign out_intel_reserved_ffwd_44_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_44_0;

    // out_intel_reserved_ffwd_45_0(GPOUT,53)
    assign out_intel_reserved_ffwd_45_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_45_0;

    // out_intel_reserved_ffwd_46_0(GPOUT,54)
    assign out_intel_reserved_ffwd_46_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_46_0;

    // out_intel_reserved_ffwd_47_0(GPOUT,55)
    assign out_intel_reserved_ffwd_47_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_47_0;

    // out_intel_reserved_ffwd_48_0(GPOUT,56)
    assign out_intel_reserved_ffwd_48_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_48_0;

    // out_intel_reserved_ffwd_49_0(GPOUT,57)
    assign out_intel_reserved_ffwd_49_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_49_0;

    // out_intel_reserved_ffwd_50_0(GPOUT,58)
    assign out_intel_reserved_ffwd_50_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_50_0;

    // out_intel_reserved_ffwd_51_0(GPOUT,59)
    assign out_intel_reserved_ffwd_51_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_51_0;

    // out_intel_reserved_ffwd_52_0(GPOUT,60)
    assign out_intel_reserved_ffwd_52_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_52_0;

    // out_intel_reserved_ffwd_53_0(GPOUT,61)
    assign out_intel_reserved_ffwd_53_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_53_0;

    // out_intel_reserved_ffwd_54_0(GPOUT,62)
    assign out_intel_reserved_ffwd_54_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_54_0;

    // out_intel_reserved_ffwd_55_0(GPOUT,63)
    assign out_intel_reserved_ffwd_55_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_55_0;

    // out_intel_reserved_ffwd_56_0(GPOUT,64)
    assign out_intel_reserved_ffwd_56_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_56_0;

    // out_intel_reserved_ffwd_57_0(GPOUT,65)
    assign out_intel_reserved_ffwd_57_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_57_0;

    // out_intel_reserved_ffwd_58_0(GPOUT,66)
    assign out_intel_reserved_ffwd_58_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_58_0;

    // out_intel_reserved_ffwd_59_0(GPOUT,67)
    assign out_intel_reserved_ffwd_59_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_59_0;

    // out_intel_reserved_ffwd_60_0(GPOUT,68)
    assign out_intel_reserved_ffwd_60_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_60_0;

    // out_intel_reserved_ffwd_61_0(GPOUT,69)
    assign out_intel_reserved_ffwd_61_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_61_0;

    // out_intel_reserved_ffwd_62_0(GPOUT,70)
    assign out_intel_reserved_ffwd_62_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_62_0;

    // out_intel_reserved_ffwd_63_0(GPOUT,71)
    assign out_intel_reserved_ffwd_63_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_63_0;

    // out_intel_reserved_ffwd_64_0(GPOUT,72)
    assign out_intel_reserved_ffwd_64_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_64_0;

    // out_intel_reserved_ffwd_65_0(GPOUT,73)
    assign out_intel_reserved_ffwd_65_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_65_0;

    // out_intel_reserved_ffwd_66_0(GPOUT,74)
    assign out_intel_reserved_ffwd_66_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_66_0;

    // out_intel_reserved_ffwd_67_0(GPOUT,75)
    assign out_intel_reserved_ffwd_67_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_67_0;

    // out_intel_reserved_ffwd_68_0(GPOUT,76)
    assign out_intel_reserved_ffwd_68_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_68_0;

    // out_intel_reserved_ffwd_69_0(GPOUT,77)
    assign out_intel_reserved_ffwd_69_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_69_0;

    // out_intel_reserved_ffwd_70_0(GPOUT,78)
    assign out_intel_reserved_ffwd_70_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_70_0;

    // out_intel_reserved_ffwd_71_0(GPOUT,79)
    assign out_intel_reserved_ffwd_71_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_71_0;

    // out_intel_reserved_ffwd_72_0(GPOUT,80)
    assign out_intel_reserved_ffwd_72_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_72_0;

    // out_intel_reserved_ffwd_73_0(GPOUT,81)
    assign out_intel_reserved_ffwd_73_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_73_0;

    // out_intel_reserved_ffwd_74_0(GPOUT,82)
    assign out_intel_reserved_ffwd_74_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_74_0;

    // out_intel_reserved_ffwd_75_0(GPOUT,83)
    assign out_intel_reserved_ffwd_75_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_75_0;

    // out_intel_reserved_ffwd_76_0(GPOUT,84)
    assign out_intel_reserved_ffwd_76_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_76_0;

    // out_intel_reserved_ffwd_77_0(GPOUT,85)
    assign out_intel_reserved_ffwd_77_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_77_0;

    // out_intel_reserved_ffwd_78_0(GPOUT,86)
    assign out_intel_reserved_ffwd_78_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_78_0;

    // out_intel_reserved_ffwd_79_0(GPOUT,87)
    assign out_intel_reserved_ffwd_79_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_79_0;

    // out_intel_reserved_ffwd_80_0(GPOUT,88)
    assign out_intel_reserved_ffwd_80_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_80_0;

    // out_intel_reserved_ffwd_81_0(GPOUT,89)
    assign out_intel_reserved_ffwd_81_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_81_0;

    // out_intel_reserved_ffwd_82_0(GPOUT,90)
    assign out_intel_reserved_ffwd_82_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_82_0;

    // out_intel_reserved_ffwd_83_0(GPOUT,91)
    assign out_intel_reserved_ffwd_83_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_83_0;

    // out_intel_reserved_ffwd_84_0(GPOUT,92)
    assign out_intel_reserved_ffwd_84_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_84_0;

    // out_intel_reserved_ffwd_85_0(GPOUT,93)
    assign out_intel_reserved_ffwd_85_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_85_0;

    // out_intel_reserved_ffwd_86_0(GPOUT,94)
    assign out_intel_reserved_ffwd_86_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_86_0;

    // out_intel_reserved_ffwd_87_0(GPOUT,95)
    assign out_intel_reserved_ffwd_87_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_87_0;

    // out_intel_reserved_ffwd_88_0(GPOUT,96)
    assign out_intel_reserved_ffwd_88_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_88_0;

    // out_intel_reserved_ffwd_89_0(GPOUT,97)
    assign out_intel_reserved_ffwd_89_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_89_0;

    // out_intel_reserved_ffwd_90_0(GPOUT,98)
    assign out_intel_reserved_ffwd_90_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_90_0;

    // out_intel_reserved_ffwd_91_0(GPOUT,99)
    assign out_intel_reserved_ffwd_91_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_91_0;

    // out_intel_reserved_ffwd_92_0(GPOUT,100)
    assign out_intel_reserved_ffwd_92_0 = bb_cnn_B3_stall_region_out_intel_reserved_ffwd_92_0;

    // out_stall_out_0(GPOUT,101)
    assign out_stall_out_0 = cnn_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,102)
    assign out_stall_out_1 = cnn_B3_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,103)
    assign out_valid_out_0 = cnn_B3_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,104)
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
