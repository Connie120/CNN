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

// SystemVerilog created from cnn_function_wrapper
// SystemVerilog created on Thu Jun 25 10:37:46 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_function_wrapper (
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_0_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_0_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_0_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_0_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_10_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_10_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_10_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_10_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_11_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_11_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_11_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_11_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_12_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_12_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_12_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_12_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_13_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_13_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_13_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_13_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_14_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_14_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_14_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_14_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_15_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_15_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_15_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_15_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_16_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_16_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_16_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_16_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_17_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_17_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_17_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_17_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_18_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_18_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_18_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_18_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_19_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_19_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_19_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_19_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_1_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_1_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_1_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_1_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_20_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_20_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_20_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_20_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_21_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_21_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_21_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_21_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_22_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_22_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_22_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_22_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_23_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_23_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_23_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_23_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_24_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_24_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_24_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_24_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_25_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_25_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_25_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_25_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_26_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_26_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_26_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_26_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_27_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_27_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_27_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_27_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_28_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_28_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_28_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_28_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_29_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_29_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_29_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_29_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_2_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_2_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_2_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_2_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_30_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_30_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_30_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_30_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_31_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_31_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_31_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_31_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_32_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_32_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_32_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_32_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_33_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_33_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_33_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_33_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_34_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_34_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_34_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_34_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_35_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_35_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_35_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_35_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_36_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_36_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_36_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_36_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_37_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_37_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_37_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_37_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_38_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_38_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_38_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_38_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_39_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_39_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_39_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_39_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_3_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_3_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_3_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_3_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_40_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_40_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_40_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_40_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_41_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_41_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_41_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_41_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_42_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_42_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_42_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_42_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_43_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_43_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_43_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_43_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_44_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_44_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_44_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_44_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_45_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_45_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_45_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_45_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_46_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_46_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_46_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_46_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_47_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_47_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_47_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_47_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_48_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_48_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_48_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_48_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_49_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_49_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_49_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_49_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_4_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_4_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_4_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_4_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_50_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_50_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_50_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_50_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_51_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_51_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_51_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_51_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_52_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_52_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_52_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_52_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_53_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_53_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_53_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_53_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_54_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_54_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_54_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_54_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_55_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_55_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_55_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_55_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_56_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_56_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_56_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_56_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_57_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_57_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_57_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_57_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_58_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_58_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_58_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_58_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_59_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_59_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_59_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_59_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_5_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_5_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_5_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_5_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_60_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_60_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_60_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_60_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_61_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_61_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_61_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_61_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_62_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_62_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_62_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_62_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_63_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_63_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_63_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_63_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_64_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_64_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_64_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_64_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_6_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_6_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_6_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_6_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_7_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_7_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_7_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_7_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_8_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_8_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_8_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_8_writeack,
    input wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_9_readdata,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_9_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_9_waitrequest,
    input wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_9_writeack,
    input wire [511:0] avm_unnamed_cnn175_readdata,
    input wire [0:0] avm_unnamed_cnn175_readdatavalid,
    input wire [0:0] avm_unnamed_cnn175_waitrequest,
    input wire [0:0] avm_unnamed_cnn175_writeack,
    input wire [0:0] clock2x,
    input wire [31:0] global_id_0,
    input wire [31:0] global_id_1,
    input wire [31:0] global_id_2,
    input wire [31:0] global_offset_0,
    input wire [31:0] global_offset_1,
    input wire [31:0] global_offset_2,
    input wire [31:0] global_size_0,
    input wire [31:0] global_size_1,
    input wire [31:0] global_size_2,
    input wire [31:0] group_id_0,
    input wire [31:0] group_id_1,
    input wire [31:0] group_id_2,
    input wire [319:0] kernel_arguments,
    input wire [0:0] kernel_stall_in,
    input wire [0:0] kernel_valid_in,
    input wire [31:0] local_id_0,
    input wire [31:0] local_id_1,
    input wire [31:0] local_id_2,
    input wire [0:0] local_router_hang,
    input wire [31:0] local_size_0,
    input wire [31:0] local_size_1,
    input wire [31:0] local_size_2,
    input wire [31:0] num_groups_0,
    input wire [31:0] num_groups_1,
    input wire [31:0] num_groups_2,
    input wire [63:0] profile_data_in,
    input wire [0:0] profile_enable,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank0_port0_read_burst_count_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank0_port0_read_data_inc_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank0_port0_write_burst_count_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank0_port0_write_data_inc_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank1_port0_read_burst_count_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank1_port0_read_data_inc_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank1_port0_write_burst_count_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank1_port0_write_data_inc_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank2_port0_read_burst_count_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank2_port0_read_data_inc_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank2_port0_write_burst_count_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank2_port0_write_data_inc_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank3_port0_read_burst_count_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank3_port0_read_data_inc_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank3_port0_write_burst_count_en,
    input wire [0:0] profile_extmem_cnn_function_DDR_bank3_port0_write_data_inc_en,
    input wire [0:0] profile_reset_n,
    input wire [0:0] profile_shift,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    input wire [31:0] work_dim,
    input wire [31:0] workgroup_size,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_0_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_0_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_0_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_0_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_0_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_0_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_0_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_10_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_10_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_10_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_10_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_10_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_10_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_10_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_11_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_11_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_11_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_11_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_11_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_11_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_11_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_12_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_12_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_12_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_12_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_12_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_12_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_12_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_13_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_13_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_13_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_13_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_13_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_13_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_13_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_14_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_14_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_14_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_14_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_14_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_14_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_14_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_15_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_15_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_15_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_15_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_15_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_15_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_15_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_16_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_16_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_16_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_16_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_16_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_16_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_16_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_17_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_17_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_17_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_17_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_17_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_17_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_17_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_18_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_18_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_18_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_18_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_18_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_18_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_18_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_19_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_19_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_19_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_19_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_19_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_19_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_19_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_1_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_1_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_1_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_1_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_1_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_1_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_1_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_20_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_20_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_20_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_20_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_20_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_20_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_20_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_21_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_21_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_21_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_21_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_21_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_21_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_21_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_22_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_22_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_22_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_22_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_22_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_22_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_22_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_23_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_23_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_23_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_23_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_23_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_23_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_23_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_24_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_24_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_24_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_24_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_24_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_24_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_24_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_25_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_25_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_25_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_25_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_25_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_25_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_25_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_26_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_26_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_26_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_26_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_26_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_26_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_26_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_27_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_27_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_27_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_27_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_27_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_27_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_27_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_28_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_28_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_28_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_28_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_28_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_28_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_28_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_29_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_29_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_29_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_29_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_29_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_29_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_29_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_2_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_2_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_2_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_2_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_2_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_2_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_2_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_30_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_30_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_30_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_30_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_30_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_30_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_30_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_31_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_31_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_31_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_31_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_31_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_31_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_31_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_32_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_32_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_32_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_32_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_32_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_32_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_32_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_33_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_33_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_33_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_33_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_33_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_33_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_33_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_34_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_34_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_34_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_34_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_34_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_34_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_34_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_35_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_35_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_35_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_35_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_35_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_35_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_35_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_36_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_36_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_36_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_36_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_36_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_36_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_36_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_37_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_37_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_37_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_37_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_37_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_37_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_37_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_38_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_38_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_38_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_38_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_38_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_38_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_38_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_39_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_39_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_39_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_39_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_39_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_39_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_39_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_3_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_3_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_3_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_3_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_3_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_3_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_3_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_40_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_40_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_40_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_40_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_40_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_40_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_40_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_41_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_41_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_41_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_41_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_41_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_41_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_41_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_42_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_42_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_42_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_42_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_42_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_42_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_42_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_43_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_43_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_43_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_43_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_43_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_43_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_43_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_44_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_44_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_44_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_44_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_44_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_44_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_44_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_45_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_45_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_45_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_45_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_45_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_45_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_45_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_46_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_46_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_46_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_46_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_46_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_46_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_46_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_47_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_47_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_47_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_47_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_47_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_47_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_47_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_48_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_48_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_48_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_48_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_48_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_48_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_48_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_49_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_49_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_49_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_49_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_49_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_49_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_49_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_4_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_4_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_4_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_4_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_4_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_4_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_4_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_50_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_50_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_50_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_50_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_50_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_50_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_50_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_51_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_51_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_51_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_51_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_51_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_51_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_51_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_52_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_52_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_52_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_52_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_52_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_52_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_52_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_53_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_53_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_53_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_53_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_53_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_53_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_53_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_54_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_54_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_54_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_54_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_54_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_54_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_54_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_55_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_55_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_55_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_55_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_55_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_55_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_55_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_56_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_56_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_56_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_56_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_56_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_56_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_56_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_57_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_57_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_57_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_57_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_57_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_57_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_57_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_58_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_58_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_58_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_58_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_58_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_58_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_58_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_59_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_59_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_59_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_59_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_59_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_59_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_59_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_5_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_5_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_5_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_5_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_5_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_5_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_5_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_60_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_60_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_60_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_60_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_60_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_60_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_60_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_61_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_61_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_61_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_61_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_61_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_61_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_61_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_62_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_62_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_62_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_62_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_62_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_62_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_62_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_63_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_63_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_63_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_63_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_63_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_63_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_63_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_64_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_64_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_64_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_64_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_64_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_64_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_64_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_6_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_6_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_6_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_6_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_6_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_6_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_6_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_7_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_7_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_7_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_7_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_7_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_7_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_7_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_8_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_8_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_8_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_8_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_8_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_8_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_8_writedata,
    output wire [34:0] avm_memcoalesce_load_cnn_fpgaunique_9_address,
    output wire [4:0] avm_memcoalesce_load_cnn_fpgaunique_9_burstcount,
    output wire [63:0] avm_memcoalesce_load_cnn_fpgaunique_9_byteenable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_9_enable,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_9_read,
    output wire [0:0] avm_memcoalesce_load_cnn_fpgaunique_9_write,
    output wire [511:0] avm_memcoalesce_load_cnn_fpgaunique_9_writedata,
    output wire [34:0] avm_unnamed_cnn175_address,
    output wire [4:0] avm_unnamed_cnn175_burstcount,
    output wire [63:0] avm_unnamed_cnn175_byteenable,
    output wire [0:0] avm_unnamed_cnn175_enable,
    output wire [0:0] avm_unnamed_cnn175_read,
    output wire [0:0] avm_unnamed_cnn175_write,
    output wire [511:0] avm_unnamed_cnn175_writedata,
    output wire [0:0] clock2x_output,
    output wire [0:0] has_a_lsu_active,
    output wire [0:0] has_a_write_pending,
    output wire [0:0] kernel_stall_out,
    output wire [0:0] kernel_valid_out,
    output wire [63:0] profile_data_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] acl_clock2x_dummy_consumer_clock2x;
    wire acl_clock2x_dummy_consumer_clock2x_bitsignaltemp;
    wire [0:0] acl_clock2x_dummy_consumer_myout;
    wire acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    wire [31:0] arg_Tc_select_b;
    wire [31:0] arg_Tm_select_b;
    wire [31:0] arg_Tn_select_b;
    wire [31:0] arg_Tr_select_b;
    wire [63:0] arg_input_select_b;
    wire [63:0] arg_output_select_b;
    wire [63:0] arg_weights_select_b;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_writedata;
    wire [34:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_address;
    wire [4:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_burstcount;
    wire [63:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_byteenable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_enable;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_read;
    wire [0:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_write;
    wire [511:0] cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_writedata;
    wire [0:0] cnn_function_out_o_active_unnamed_cnn175;
    wire [0:0] cnn_function_out_profile_clock;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_extra_unaligned_reqs_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_req_cache_hit_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_total_req_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_cntl;
    wire [31:0] cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid_cntl;
    wire [0:0] cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req_cntl;
    wire [0:0] cnn_function_out_stall_out;
    wire [34:0] cnn_function_out_unnamed_cnn175_avm_address;
    wire [4:0] cnn_function_out_unnamed_cnn175_avm_burstcount;
    wire [63:0] cnn_function_out_unnamed_cnn175_avm_byteenable;
    wire [0:0] cnn_function_out_unnamed_cnn175_avm_enable;
    wire [0:0] cnn_function_out_unnamed_cnn175_avm_read;
    wire [0:0] cnn_function_out_unnamed_cnn175_avm_write;
    wire [511:0] cnn_function_out_unnamed_cnn175_avm_writedata;
    wire [0:0] cnn_function_out_valid_out;
    wire [31:0] increment_by_one_q;
    wire [63:0] ip_dsdk_adapt_cast_b;
    wire [541:0] profile_ctrl_join_q;
    wire [17343:0] profile_incr_join_q;
    wire [63:0] profiler_inst_daisy_in;
    wire [0:0] profiler_inst_enable;
    wire profiler_inst_enable_bitsignaltemp;
    wire [541:0] profiler_inst_incr_cntl;
    wire [17343:0] profiler_inst_incr_val;
    wire [0:0] profiler_inst_profile_shift;
    wire profiler_inst_profile_shift_bitsignaltemp;
    wire [0:0] profiler_inst_resetn;
    wire profiler_inst_resetn_bitsignaltemp;
    wire [63:0] profiler_inst_daisy_out;
    wire [63:0] dupName_0_ip_dsdk_adapt_cast_x_b;
    wire [63:0] dupName_1_ip_dsdk_adapt_cast_x_b;
    wire [31:0] dupName_2_ip_dsdk_adapt_cast_x_b;
    wire [31:0] dupName_3_ip_dsdk_adapt_cast_x_b;
    wire [31:0] dupName_4_ip_dsdk_adapt_cast_x_b;
    wire [31:0] dupName_5_ip_dsdk_adapt_cast_x_b;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // arg_weights_select(BITSELECT,9)
    assign arg_weights_select_b = kernel_arguments[127:64];

    // dupName_0_ip_dsdk_adapt_cast_x(BITSELECT,800)
    assign dupName_0_ip_dsdk_adapt_cast_x_b = arg_weights_select_b[63:0];

    // arg_output_select(BITSELECT,8)
    assign arg_output_select_b = kernel_arguments[191:128];

    // dupName_1_ip_dsdk_adapt_cast_x(BITSELECT,801)
    assign dupName_1_ip_dsdk_adapt_cast_x_b = arg_output_select_b[63:0];

    // arg_input_select(BITSELECT,7)
    assign arg_input_select_b = kernel_arguments[63:0];

    // ip_dsdk_adapt_cast(BITSELECT,328)
    assign ip_dsdk_adapt_cast_b = arg_input_select_b[63:0];

    // arg_Tr_select(BITSELECT,6)
    assign arg_Tr_select_b = kernel_arguments[255:224];

    // dupName_3_ip_dsdk_adapt_cast_x(BITSELECT,803)
    assign dupName_3_ip_dsdk_adapt_cast_x_b = arg_Tr_select_b[31:0];

    // arg_Tn_select(BITSELECT,5)
    assign arg_Tn_select_b = kernel_arguments[319:288];

    // dupName_5_ip_dsdk_adapt_cast_x(BITSELECT,805)
    assign dupName_5_ip_dsdk_adapt_cast_x_b = arg_Tn_select_b[31:0];

    // arg_Tm_select(BITSELECT,4)
    assign arg_Tm_select_b = kernel_arguments[223:192];

    // dupName_2_ip_dsdk_adapt_cast_x(BITSELECT,802)
    assign dupName_2_ip_dsdk_adapt_cast_x_b = arg_Tm_select_b[31:0];

    // arg_Tc_select(BITSELECT,3)
    assign arg_Tc_select_b = kernel_arguments[287:256];

    // dupName_4_ip_dsdk_adapt_cast_x(BITSELECT,804)
    assign dupName_4_ip_dsdk_adapt_cast_x_b = arg_Tc_select_b[31:0];

    // cnn_function(BLACKBOX,10)
    cnn_function thecnn_function (
        .in_arg_Tc(dupName_4_ip_dsdk_adapt_cast_x_b),
        .in_arg_Tm(dupName_2_ip_dsdk_adapt_cast_x_b),
        .in_arg_Tn(dupName_5_ip_dsdk_adapt_cast_x_b),
        .in_arg_Tr(dupName_3_ip_dsdk_adapt_cast_x_b),
        .in_arg_acl_global_size_0(global_size_0),
        .in_arg_acl_global_size_1(global_size_1),
        .in_arg_acl_global_size_2(global_size_2),
        .in_arg_acl_local_size_0(local_size_0),
        .in_arg_acl_local_size_1(local_size_1),
        .in_arg_acl_local_size_2(local_size_2),
        .in_arg_input(ip_dsdk_adapt_cast_b),
        .in_arg_output(dupName_1_ip_dsdk_adapt_cast_x_b),
        .in_arg_weights(dupName_0_ip_dsdk_adapt_cast_x_b),
        .in_memcoalesce_load_cnn_fpgaunique_0_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_0_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_0_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_0_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_0_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_0_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_0_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_0_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_10_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_10_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_10_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_10_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_10_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_10_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_10_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_10_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_11_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_11_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_11_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_11_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_11_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_11_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_11_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_11_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_12_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_12_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_12_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_12_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_12_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_12_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_12_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_12_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_13_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_13_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_13_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_13_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_13_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_13_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_13_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_13_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_14_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_14_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_14_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_14_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_14_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_14_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_14_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_14_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_15_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_15_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_15_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_15_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_15_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_15_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_15_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_15_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_16_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_16_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_16_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_16_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_16_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_16_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_16_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_16_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_17_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_17_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_17_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_17_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_17_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_17_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_17_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_17_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_18_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_18_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_18_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_18_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_18_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_18_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_18_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_18_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_19_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_19_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_19_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_19_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_19_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_19_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_19_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_19_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_1_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_1_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_1_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_1_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_1_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_1_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_1_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_1_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_20_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_20_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_20_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_20_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_20_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_20_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_20_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_20_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_21_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_21_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_21_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_21_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_21_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_21_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_21_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_21_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_22_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_22_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_22_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_22_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_22_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_22_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_22_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_22_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_23_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_23_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_23_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_23_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_23_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_23_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_23_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_23_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_24_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_24_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_24_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_24_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_24_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_24_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_24_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_24_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_25_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_25_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_25_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_25_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_25_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_25_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_25_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_25_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_26_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_26_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_26_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_26_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_26_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_26_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_26_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_26_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_27_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_27_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_27_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_27_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_27_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_27_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_27_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_27_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_28_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_28_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_28_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_28_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_28_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_28_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_28_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_28_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_29_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_29_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_29_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_29_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_29_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_29_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_29_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_29_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_2_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_2_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_2_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_2_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_2_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_2_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_2_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_2_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_30_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_30_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_30_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_30_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_30_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_30_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_30_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_30_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_31_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_31_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_31_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_31_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_31_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_31_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_31_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_31_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_32_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_32_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_32_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_32_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_32_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_32_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_32_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_32_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_33_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_33_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_33_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_33_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_33_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_33_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_33_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_33_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_34_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_34_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_34_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_34_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_34_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_34_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_34_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_34_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_35_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_35_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_35_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_35_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_35_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_35_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_35_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_35_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_36_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_36_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_36_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_36_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_36_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_36_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_36_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_36_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_37_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_37_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_37_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_37_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_37_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_37_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_37_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_37_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_38_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_38_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_38_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_38_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_38_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_38_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_38_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_38_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_39_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_39_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_39_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_39_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_39_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_39_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_39_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_39_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_3_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_3_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_3_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_3_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_3_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_3_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_3_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_3_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_40_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_40_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_40_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_40_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_40_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_40_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_40_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_40_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_41_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_41_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_41_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_41_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_41_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_41_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_41_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_41_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_42_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_42_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_42_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_42_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_42_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_42_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_42_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_42_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_43_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_43_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_43_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_43_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_43_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_43_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_43_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_43_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_44_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_44_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_44_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_44_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_44_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_44_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_44_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_44_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_45_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_45_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_45_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_45_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_45_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_45_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_45_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_45_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_46_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_46_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_46_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_46_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_46_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_46_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_46_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_46_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_47_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_47_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_47_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_47_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_47_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_47_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_47_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_47_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_48_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_48_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_48_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_48_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_48_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_48_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_48_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_48_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_49_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_49_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_49_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_49_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_49_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_49_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_49_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_49_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_4_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_4_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_4_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_4_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_4_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_4_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_4_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_4_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_50_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_50_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_50_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_50_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_50_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_50_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_50_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_50_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_51_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_51_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_51_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_51_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_51_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_51_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_51_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_51_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_52_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_52_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_52_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_52_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_52_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_52_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_52_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_52_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_53_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_53_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_53_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_53_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_53_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_53_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_53_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_53_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_54_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_54_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_54_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_54_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_54_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_54_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_54_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_54_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_55_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_55_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_55_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_55_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_55_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_55_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_55_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_55_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_56_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_56_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_56_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_56_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_56_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_56_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_56_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_56_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_57_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_57_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_57_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_57_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_57_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_57_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_57_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_57_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_58_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_58_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_58_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_58_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_58_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_58_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_58_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_58_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_59_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_59_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_59_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_59_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_59_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_59_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_59_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_59_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_5_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_5_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_5_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_5_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_5_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_5_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_5_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_5_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_60_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_60_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_60_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_60_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_60_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_60_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_60_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_60_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_61_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_61_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_61_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_61_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_61_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_61_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_61_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_61_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_62_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_62_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_62_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_62_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_62_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_62_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_62_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_62_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_63_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_63_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_63_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_63_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_63_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_63_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_63_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_63_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_64_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_64_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_64_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_64_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_64_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_64_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_64_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_64_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_6_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_6_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_6_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_6_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_6_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_6_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_6_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_6_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_7_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_7_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_7_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_7_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_7_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_7_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_7_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_7_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_8_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_8_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_8_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_8_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_8_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_8_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_8_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_8_writeack),
        .in_memcoalesce_load_cnn_fpgaunique_9_avm_readdata(avm_memcoalesce_load_cnn_fpgaunique_9_readdata),
        .in_memcoalesce_load_cnn_fpgaunique_9_avm_readdatavalid(avm_memcoalesce_load_cnn_fpgaunique_9_readdatavalid),
        .in_memcoalesce_load_cnn_fpgaunique_9_avm_waitrequest(avm_memcoalesce_load_cnn_fpgaunique_9_waitrequest),
        .in_memcoalesce_load_cnn_fpgaunique_9_avm_writeack(avm_memcoalesce_load_cnn_fpgaunique_9_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_unnamed_cnn175_avm_readdata(avm_unnamed_cnn175_readdata),
        .in_unnamed_cnn175_avm_readdatavalid(avm_unnamed_cnn175_readdatavalid),
        .in_unnamed_cnn175_avm_waitrequest(avm_unnamed_cnn175_waitrequest),
        .in_unnamed_cnn175_avm_writeack(avm_unnamed_cnn175_writeack),
        .in_valid_in(kernel_valid_in),
        .out_memcoalesce_load_cnn_fpgaunique_0_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_0_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_0_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_0_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_0_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_0_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_0_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_10_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_10_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_10_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_10_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_10_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_10_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_10_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_11_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_11_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_11_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_11_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_11_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_11_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_11_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_12_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_12_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_12_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_12_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_12_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_12_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_12_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_13_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_13_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_13_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_13_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_13_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_13_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_13_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_14_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_14_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_14_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_14_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_14_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_14_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_14_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_15_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_15_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_15_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_15_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_15_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_15_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_15_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_16_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_16_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_16_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_16_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_16_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_16_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_16_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_17_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_17_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_17_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_17_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_17_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_17_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_17_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_18_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_18_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_18_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_18_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_18_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_18_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_18_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_19_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_19_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_19_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_19_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_19_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_19_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_19_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_1_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_1_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_1_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_1_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_1_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_1_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_1_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_20_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_20_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_20_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_20_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_20_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_20_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_20_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_21_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_21_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_21_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_21_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_21_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_21_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_21_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_22_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_22_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_22_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_22_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_22_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_22_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_22_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_23_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_23_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_23_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_23_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_23_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_23_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_23_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_24_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_24_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_24_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_24_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_24_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_24_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_24_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_25_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_25_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_25_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_25_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_25_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_25_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_25_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_26_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_26_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_26_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_26_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_26_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_26_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_26_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_27_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_27_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_27_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_27_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_27_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_27_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_27_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_28_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_28_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_28_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_28_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_28_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_28_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_28_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_29_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_29_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_29_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_29_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_29_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_29_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_29_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_2_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_2_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_2_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_2_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_2_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_2_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_2_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_30_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_30_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_30_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_30_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_30_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_30_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_30_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_31_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_31_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_31_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_31_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_31_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_31_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_31_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_32_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_32_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_32_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_32_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_32_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_32_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_32_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_33_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_33_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_33_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_33_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_33_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_33_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_33_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_34_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_34_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_34_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_34_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_34_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_34_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_34_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_35_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_35_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_35_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_35_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_35_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_35_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_35_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_36_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_36_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_36_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_36_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_36_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_36_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_36_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_37_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_37_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_37_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_37_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_37_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_37_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_37_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_38_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_38_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_38_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_38_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_38_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_38_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_38_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_39_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_39_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_39_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_39_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_39_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_39_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_39_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_3_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_3_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_3_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_3_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_3_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_3_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_3_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_40_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_40_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_40_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_40_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_40_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_40_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_40_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_41_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_41_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_41_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_41_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_41_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_41_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_41_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_42_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_42_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_42_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_42_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_42_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_42_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_42_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_43_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_43_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_43_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_43_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_43_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_43_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_43_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_44_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_44_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_44_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_44_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_44_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_44_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_44_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_45_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_45_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_45_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_45_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_45_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_45_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_45_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_46_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_46_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_46_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_46_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_46_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_46_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_46_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_47_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_47_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_47_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_47_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_47_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_47_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_47_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_48_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_48_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_48_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_48_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_48_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_48_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_48_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_49_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_49_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_49_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_49_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_49_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_49_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_49_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_4_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_4_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_4_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_4_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_4_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_4_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_4_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_50_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_50_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_50_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_50_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_50_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_50_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_50_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_51_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_51_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_51_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_51_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_51_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_51_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_51_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_52_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_52_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_52_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_52_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_52_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_52_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_52_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_53_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_53_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_53_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_53_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_53_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_53_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_53_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_54_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_54_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_54_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_54_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_54_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_54_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_54_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_55_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_55_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_55_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_55_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_55_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_55_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_55_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_56_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_56_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_56_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_56_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_56_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_56_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_56_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_57_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_57_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_57_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_57_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_57_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_57_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_57_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_58_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_58_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_58_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_58_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_58_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_58_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_58_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_59_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_59_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_59_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_59_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_59_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_59_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_59_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_5_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_5_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_5_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_5_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_5_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_5_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_5_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_60_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_60_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_60_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_60_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_60_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_60_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_60_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_61_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_61_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_61_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_61_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_61_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_61_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_61_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_62_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_62_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_62_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_62_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_62_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_62_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_62_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_63_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_63_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_63_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_63_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_63_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_63_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_63_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_64_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_64_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_64_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_64_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_64_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_64_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_64_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_6_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_6_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_6_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_6_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_6_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_6_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_6_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_7_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_7_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_7_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_7_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_7_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_7_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_7_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_8_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_8_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_8_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_8_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_8_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_8_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_8_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_writedata),
        .out_memcoalesce_load_cnn_fpgaunique_9_avm_address(cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_address),
        .out_memcoalesce_load_cnn_fpgaunique_9_avm_burstcount(cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_burstcount),
        .out_memcoalesce_load_cnn_fpgaunique_9_avm_byteenable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_byteenable),
        .out_memcoalesce_load_cnn_fpgaunique_9_avm_enable(cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_enable),
        .out_memcoalesce_load_cnn_fpgaunique_9_avm_read(cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_read),
        .out_memcoalesce_load_cnn_fpgaunique_9_avm_write(cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_write),
        .out_memcoalesce_load_cnn_fpgaunique_9_avm_writedata(cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_writedata),
        .out_o_active_unnamed_cnn175(cnn_function_out_o_active_unnamed_cnn175),
        .out_profile_clock(cnn_function_out_profile_clock),
        .out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_bw_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_bw_incr),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_extra_unaligned_reqs_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_extra_unaligned_reqs_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_req_cache_hit_count_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_req_cache_hit_count_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_total_req_cntl),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_cntl(cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_cntl),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr(cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count_cntl(cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count_cntl),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall_cntl(cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall_cntl),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_cntl(cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_cntl),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr(cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid_cntl(cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid_cntl),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req_cntl(cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req_cntl),
        .out_stall_out(cnn_function_out_stall_out),
        .out_unnamed_cnn175_avm_address(cnn_function_out_unnamed_cnn175_avm_address),
        .out_unnamed_cnn175_avm_burstcount(cnn_function_out_unnamed_cnn175_avm_burstcount),
        .out_unnamed_cnn175_avm_byteenable(cnn_function_out_unnamed_cnn175_avm_byteenable),
        .out_unnamed_cnn175_avm_enable(cnn_function_out_unnamed_cnn175_avm_enable),
        .out_unnamed_cnn175_avm_read(cnn_function_out_unnamed_cnn175_avm_read),
        .out_unnamed_cnn175_avm_write(cnn_function_out_unnamed_cnn175_avm_write),
        .out_unnamed_cnn175_avm_writedata(cnn_function_out_unnamed_cnn175_avm_writedata),
        .out_valid_out(cnn_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memcoalesce_load_cnn_fpgaunique_0_address(GPOUT,329)
    assign avm_memcoalesce_load_cnn_fpgaunique_0_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_0_burstcount(GPOUT,330)
    assign avm_memcoalesce_load_cnn_fpgaunique_0_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_0_byteenable(GPOUT,331)
    assign avm_memcoalesce_load_cnn_fpgaunique_0_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_0_enable(GPOUT,332)
    assign avm_memcoalesce_load_cnn_fpgaunique_0_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_0_read(GPOUT,333)
    assign avm_memcoalesce_load_cnn_fpgaunique_0_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_0_write(GPOUT,334)
    assign avm_memcoalesce_load_cnn_fpgaunique_0_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_0_writedata(GPOUT,335)
    assign avm_memcoalesce_load_cnn_fpgaunique_0_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_0_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_10_address(GPOUT,336)
    assign avm_memcoalesce_load_cnn_fpgaunique_10_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_10_burstcount(GPOUT,337)
    assign avm_memcoalesce_load_cnn_fpgaunique_10_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_10_byteenable(GPOUT,338)
    assign avm_memcoalesce_load_cnn_fpgaunique_10_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_10_enable(GPOUT,339)
    assign avm_memcoalesce_load_cnn_fpgaunique_10_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_10_read(GPOUT,340)
    assign avm_memcoalesce_load_cnn_fpgaunique_10_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_10_write(GPOUT,341)
    assign avm_memcoalesce_load_cnn_fpgaunique_10_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_10_writedata(GPOUT,342)
    assign avm_memcoalesce_load_cnn_fpgaunique_10_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_10_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_11_address(GPOUT,343)
    assign avm_memcoalesce_load_cnn_fpgaunique_11_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_11_burstcount(GPOUT,344)
    assign avm_memcoalesce_load_cnn_fpgaunique_11_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_11_byteenable(GPOUT,345)
    assign avm_memcoalesce_load_cnn_fpgaunique_11_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_11_enable(GPOUT,346)
    assign avm_memcoalesce_load_cnn_fpgaunique_11_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_11_read(GPOUT,347)
    assign avm_memcoalesce_load_cnn_fpgaunique_11_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_11_write(GPOUT,348)
    assign avm_memcoalesce_load_cnn_fpgaunique_11_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_11_writedata(GPOUT,349)
    assign avm_memcoalesce_load_cnn_fpgaunique_11_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_11_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_12_address(GPOUT,350)
    assign avm_memcoalesce_load_cnn_fpgaunique_12_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_12_burstcount(GPOUT,351)
    assign avm_memcoalesce_load_cnn_fpgaunique_12_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_12_byteenable(GPOUT,352)
    assign avm_memcoalesce_load_cnn_fpgaunique_12_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_12_enable(GPOUT,353)
    assign avm_memcoalesce_load_cnn_fpgaunique_12_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_12_read(GPOUT,354)
    assign avm_memcoalesce_load_cnn_fpgaunique_12_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_12_write(GPOUT,355)
    assign avm_memcoalesce_load_cnn_fpgaunique_12_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_12_writedata(GPOUT,356)
    assign avm_memcoalesce_load_cnn_fpgaunique_12_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_12_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_13_address(GPOUT,357)
    assign avm_memcoalesce_load_cnn_fpgaunique_13_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_13_burstcount(GPOUT,358)
    assign avm_memcoalesce_load_cnn_fpgaunique_13_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_13_byteenable(GPOUT,359)
    assign avm_memcoalesce_load_cnn_fpgaunique_13_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_13_enable(GPOUT,360)
    assign avm_memcoalesce_load_cnn_fpgaunique_13_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_13_read(GPOUT,361)
    assign avm_memcoalesce_load_cnn_fpgaunique_13_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_13_write(GPOUT,362)
    assign avm_memcoalesce_load_cnn_fpgaunique_13_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_13_writedata(GPOUT,363)
    assign avm_memcoalesce_load_cnn_fpgaunique_13_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_13_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_14_address(GPOUT,364)
    assign avm_memcoalesce_load_cnn_fpgaunique_14_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_14_burstcount(GPOUT,365)
    assign avm_memcoalesce_load_cnn_fpgaunique_14_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_14_byteenable(GPOUT,366)
    assign avm_memcoalesce_load_cnn_fpgaunique_14_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_14_enable(GPOUT,367)
    assign avm_memcoalesce_load_cnn_fpgaunique_14_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_14_read(GPOUT,368)
    assign avm_memcoalesce_load_cnn_fpgaunique_14_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_14_write(GPOUT,369)
    assign avm_memcoalesce_load_cnn_fpgaunique_14_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_14_writedata(GPOUT,370)
    assign avm_memcoalesce_load_cnn_fpgaunique_14_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_14_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_15_address(GPOUT,371)
    assign avm_memcoalesce_load_cnn_fpgaunique_15_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_15_burstcount(GPOUT,372)
    assign avm_memcoalesce_load_cnn_fpgaunique_15_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_15_byteenable(GPOUT,373)
    assign avm_memcoalesce_load_cnn_fpgaunique_15_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_15_enable(GPOUT,374)
    assign avm_memcoalesce_load_cnn_fpgaunique_15_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_15_read(GPOUT,375)
    assign avm_memcoalesce_load_cnn_fpgaunique_15_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_15_write(GPOUT,376)
    assign avm_memcoalesce_load_cnn_fpgaunique_15_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_15_writedata(GPOUT,377)
    assign avm_memcoalesce_load_cnn_fpgaunique_15_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_15_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_16_address(GPOUT,378)
    assign avm_memcoalesce_load_cnn_fpgaunique_16_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_16_burstcount(GPOUT,379)
    assign avm_memcoalesce_load_cnn_fpgaunique_16_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_16_byteenable(GPOUT,380)
    assign avm_memcoalesce_load_cnn_fpgaunique_16_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_16_enable(GPOUT,381)
    assign avm_memcoalesce_load_cnn_fpgaunique_16_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_16_read(GPOUT,382)
    assign avm_memcoalesce_load_cnn_fpgaunique_16_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_16_write(GPOUT,383)
    assign avm_memcoalesce_load_cnn_fpgaunique_16_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_16_writedata(GPOUT,384)
    assign avm_memcoalesce_load_cnn_fpgaunique_16_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_16_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_17_address(GPOUT,385)
    assign avm_memcoalesce_load_cnn_fpgaunique_17_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_17_burstcount(GPOUT,386)
    assign avm_memcoalesce_load_cnn_fpgaunique_17_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_17_byteenable(GPOUT,387)
    assign avm_memcoalesce_load_cnn_fpgaunique_17_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_17_enable(GPOUT,388)
    assign avm_memcoalesce_load_cnn_fpgaunique_17_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_17_read(GPOUT,389)
    assign avm_memcoalesce_load_cnn_fpgaunique_17_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_17_write(GPOUT,390)
    assign avm_memcoalesce_load_cnn_fpgaunique_17_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_17_writedata(GPOUT,391)
    assign avm_memcoalesce_load_cnn_fpgaunique_17_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_17_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_18_address(GPOUT,392)
    assign avm_memcoalesce_load_cnn_fpgaunique_18_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_18_burstcount(GPOUT,393)
    assign avm_memcoalesce_load_cnn_fpgaunique_18_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_18_byteenable(GPOUT,394)
    assign avm_memcoalesce_load_cnn_fpgaunique_18_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_18_enable(GPOUT,395)
    assign avm_memcoalesce_load_cnn_fpgaunique_18_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_18_read(GPOUT,396)
    assign avm_memcoalesce_load_cnn_fpgaunique_18_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_18_write(GPOUT,397)
    assign avm_memcoalesce_load_cnn_fpgaunique_18_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_18_writedata(GPOUT,398)
    assign avm_memcoalesce_load_cnn_fpgaunique_18_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_18_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_19_address(GPOUT,399)
    assign avm_memcoalesce_load_cnn_fpgaunique_19_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_19_burstcount(GPOUT,400)
    assign avm_memcoalesce_load_cnn_fpgaunique_19_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_19_byteenable(GPOUT,401)
    assign avm_memcoalesce_load_cnn_fpgaunique_19_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_19_enable(GPOUT,402)
    assign avm_memcoalesce_load_cnn_fpgaunique_19_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_19_read(GPOUT,403)
    assign avm_memcoalesce_load_cnn_fpgaunique_19_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_19_write(GPOUT,404)
    assign avm_memcoalesce_load_cnn_fpgaunique_19_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_19_writedata(GPOUT,405)
    assign avm_memcoalesce_load_cnn_fpgaunique_19_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_19_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_1_address(GPOUT,406)
    assign avm_memcoalesce_load_cnn_fpgaunique_1_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_1_burstcount(GPOUT,407)
    assign avm_memcoalesce_load_cnn_fpgaunique_1_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_1_byteenable(GPOUT,408)
    assign avm_memcoalesce_load_cnn_fpgaunique_1_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_1_enable(GPOUT,409)
    assign avm_memcoalesce_load_cnn_fpgaunique_1_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_1_read(GPOUT,410)
    assign avm_memcoalesce_load_cnn_fpgaunique_1_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_1_write(GPOUT,411)
    assign avm_memcoalesce_load_cnn_fpgaunique_1_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_1_writedata(GPOUT,412)
    assign avm_memcoalesce_load_cnn_fpgaunique_1_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_1_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_20_address(GPOUT,413)
    assign avm_memcoalesce_load_cnn_fpgaunique_20_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_20_burstcount(GPOUT,414)
    assign avm_memcoalesce_load_cnn_fpgaunique_20_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_20_byteenable(GPOUT,415)
    assign avm_memcoalesce_load_cnn_fpgaunique_20_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_20_enable(GPOUT,416)
    assign avm_memcoalesce_load_cnn_fpgaunique_20_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_20_read(GPOUT,417)
    assign avm_memcoalesce_load_cnn_fpgaunique_20_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_20_write(GPOUT,418)
    assign avm_memcoalesce_load_cnn_fpgaunique_20_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_20_writedata(GPOUT,419)
    assign avm_memcoalesce_load_cnn_fpgaunique_20_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_20_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_21_address(GPOUT,420)
    assign avm_memcoalesce_load_cnn_fpgaunique_21_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_21_burstcount(GPOUT,421)
    assign avm_memcoalesce_load_cnn_fpgaunique_21_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_21_byteenable(GPOUT,422)
    assign avm_memcoalesce_load_cnn_fpgaunique_21_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_21_enable(GPOUT,423)
    assign avm_memcoalesce_load_cnn_fpgaunique_21_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_21_read(GPOUT,424)
    assign avm_memcoalesce_load_cnn_fpgaunique_21_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_21_write(GPOUT,425)
    assign avm_memcoalesce_load_cnn_fpgaunique_21_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_21_writedata(GPOUT,426)
    assign avm_memcoalesce_load_cnn_fpgaunique_21_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_21_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_22_address(GPOUT,427)
    assign avm_memcoalesce_load_cnn_fpgaunique_22_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_22_burstcount(GPOUT,428)
    assign avm_memcoalesce_load_cnn_fpgaunique_22_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_22_byteenable(GPOUT,429)
    assign avm_memcoalesce_load_cnn_fpgaunique_22_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_22_enable(GPOUT,430)
    assign avm_memcoalesce_load_cnn_fpgaunique_22_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_22_read(GPOUT,431)
    assign avm_memcoalesce_load_cnn_fpgaunique_22_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_22_write(GPOUT,432)
    assign avm_memcoalesce_load_cnn_fpgaunique_22_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_22_writedata(GPOUT,433)
    assign avm_memcoalesce_load_cnn_fpgaunique_22_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_22_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_23_address(GPOUT,434)
    assign avm_memcoalesce_load_cnn_fpgaunique_23_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_23_burstcount(GPOUT,435)
    assign avm_memcoalesce_load_cnn_fpgaunique_23_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_23_byteenable(GPOUT,436)
    assign avm_memcoalesce_load_cnn_fpgaunique_23_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_23_enable(GPOUT,437)
    assign avm_memcoalesce_load_cnn_fpgaunique_23_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_23_read(GPOUT,438)
    assign avm_memcoalesce_load_cnn_fpgaunique_23_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_23_write(GPOUT,439)
    assign avm_memcoalesce_load_cnn_fpgaunique_23_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_23_writedata(GPOUT,440)
    assign avm_memcoalesce_load_cnn_fpgaunique_23_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_23_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_24_address(GPOUT,441)
    assign avm_memcoalesce_load_cnn_fpgaunique_24_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_24_burstcount(GPOUT,442)
    assign avm_memcoalesce_load_cnn_fpgaunique_24_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_24_byteenable(GPOUT,443)
    assign avm_memcoalesce_load_cnn_fpgaunique_24_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_24_enable(GPOUT,444)
    assign avm_memcoalesce_load_cnn_fpgaunique_24_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_24_read(GPOUT,445)
    assign avm_memcoalesce_load_cnn_fpgaunique_24_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_24_write(GPOUT,446)
    assign avm_memcoalesce_load_cnn_fpgaunique_24_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_24_writedata(GPOUT,447)
    assign avm_memcoalesce_load_cnn_fpgaunique_24_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_24_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_25_address(GPOUT,448)
    assign avm_memcoalesce_load_cnn_fpgaunique_25_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_25_burstcount(GPOUT,449)
    assign avm_memcoalesce_load_cnn_fpgaunique_25_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_25_byteenable(GPOUT,450)
    assign avm_memcoalesce_load_cnn_fpgaunique_25_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_25_enable(GPOUT,451)
    assign avm_memcoalesce_load_cnn_fpgaunique_25_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_25_read(GPOUT,452)
    assign avm_memcoalesce_load_cnn_fpgaunique_25_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_25_write(GPOUT,453)
    assign avm_memcoalesce_load_cnn_fpgaunique_25_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_25_writedata(GPOUT,454)
    assign avm_memcoalesce_load_cnn_fpgaunique_25_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_25_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_26_address(GPOUT,455)
    assign avm_memcoalesce_load_cnn_fpgaunique_26_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_26_burstcount(GPOUT,456)
    assign avm_memcoalesce_load_cnn_fpgaunique_26_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_26_byteenable(GPOUT,457)
    assign avm_memcoalesce_load_cnn_fpgaunique_26_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_26_enable(GPOUT,458)
    assign avm_memcoalesce_load_cnn_fpgaunique_26_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_26_read(GPOUT,459)
    assign avm_memcoalesce_load_cnn_fpgaunique_26_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_26_write(GPOUT,460)
    assign avm_memcoalesce_load_cnn_fpgaunique_26_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_26_writedata(GPOUT,461)
    assign avm_memcoalesce_load_cnn_fpgaunique_26_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_26_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_27_address(GPOUT,462)
    assign avm_memcoalesce_load_cnn_fpgaunique_27_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_27_burstcount(GPOUT,463)
    assign avm_memcoalesce_load_cnn_fpgaunique_27_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_27_byteenable(GPOUT,464)
    assign avm_memcoalesce_load_cnn_fpgaunique_27_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_27_enable(GPOUT,465)
    assign avm_memcoalesce_load_cnn_fpgaunique_27_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_27_read(GPOUT,466)
    assign avm_memcoalesce_load_cnn_fpgaunique_27_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_27_write(GPOUT,467)
    assign avm_memcoalesce_load_cnn_fpgaunique_27_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_27_writedata(GPOUT,468)
    assign avm_memcoalesce_load_cnn_fpgaunique_27_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_27_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_28_address(GPOUT,469)
    assign avm_memcoalesce_load_cnn_fpgaunique_28_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_28_burstcount(GPOUT,470)
    assign avm_memcoalesce_load_cnn_fpgaunique_28_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_28_byteenable(GPOUT,471)
    assign avm_memcoalesce_load_cnn_fpgaunique_28_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_28_enable(GPOUT,472)
    assign avm_memcoalesce_load_cnn_fpgaunique_28_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_28_read(GPOUT,473)
    assign avm_memcoalesce_load_cnn_fpgaunique_28_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_28_write(GPOUT,474)
    assign avm_memcoalesce_load_cnn_fpgaunique_28_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_28_writedata(GPOUT,475)
    assign avm_memcoalesce_load_cnn_fpgaunique_28_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_28_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_29_address(GPOUT,476)
    assign avm_memcoalesce_load_cnn_fpgaunique_29_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_29_burstcount(GPOUT,477)
    assign avm_memcoalesce_load_cnn_fpgaunique_29_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_29_byteenable(GPOUT,478)
    assign avm_memcoalesce_load_cnn_fpgaunique_29_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_29_enable(GPOUT,479)
    assign avm_memcoalesce_load_cnn_fpgaunique_29_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_29_read(GPOUT,480)
    assign avm_memcoalesce_load_cnn_fpgaunique_29_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_29_write(GPOUT,481)
    assign avm_memcoalesce_load_cnn_fpgaunique_29_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_29_writedata(GPOUT,482)
    assign avm_memcoalesce_load_cnn_fpgaunique_29_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_29_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_2_address(GPOUT,483)
    assign avm_memcoalesce_load_cnn_fpgaunique_2_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_2_burstcount(GPOUT,484)
    assign avm_memcoalesce_load_cnn_fpgaunique_2_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_2_byteenable(GPOUT,485)
    assign avm_memcoalesce_load_cnn_fpgaunique_2_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_2_enable(GPOUT,486)
    assign avm_memcoalesce_load_cnn_fpgaunique_2_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_2_read(GPOUT,487)
    assign avm_memcoalesce_load_cnn_fpgaunique_2_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_2_write(GPOUT,488)
    assign avm_memcoalesce_load_cnn_fpgaunique_2_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_2_writedata(GPOUT,489)
    assign avm_memcoalesce_load_cnn_fpgaunique_2_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_2_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_30_address(GPOUT,490)
    assign avm_memcoalesce_load_cnn_fpgaunique_30_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_30_burstcount(GPOUT,491)
    assign avm_memcoalesce_load_cnn_fpgaunique_30_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_30_byteenable(GPOUT,492)
    assign avm_memcoalesce_load_cnn_fpgaunique_30_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_30_enable(GPOUT,493)
    assign avm_memcoalesce_load_cnn_fpgaunique_30_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_30_read(GPOUT,494)
    assign avm_memcoalesce_load_cnn_fpgaunique_30_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_30_write(GPOUT,495)
    assign avm_memcoalesce_load_cnn_fpgaunique_30_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_30_writedata(GPOUT,496)
    assign avm_memcoalesce_load_cnn_fpgaunique_30_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_30_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_31_address(GPOUT,497)
    assign avm_memcoalesce_load_cnn_fpgaunique_31_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_31_burstcount(GPOUT,498)
    assign avm_memcoalesce_load_cnn_fpgaunique_31_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_31_byteenable(GPOUT,499)
    assign avm_memcoalesce_load_cnn_fpgaunique_31_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_31_enable(GPOUT,500)
    assign avm_memcoalesce_load_cnn_fpgaunique_31_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_31_read(GPOUT,501)
    assign avm_memcoalesce_load_cnn_fpgaunique_31_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_31_write(GPOUT,502)
    assign avm_memcoalesce_load_cnn_fpgaunique_31_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_31_writedata(GPOUT,503)
    assign avm_memcoalesce_load_cnn_fpgaunique_31_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_31_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_32_address(GPOUT,504)
    assign avm_memcoalesce_load_cnn_fpgaunique_32_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_32_burstcount(GPOUT,505)
    assign avm_memcoalesce_load_cnn_fpgaunique_32_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_32_byteenable(GPOUT,506)
    assign avm_memcoalesce_load_cnn_fpgaunique_32_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_32_enable(GPOUT,507)
    assign avm_memcoalesce_load_cnn_fpgaunique_32_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_32_read(GPOUT,508)
    assign avm_memcoalesce_load_cnn_fpgaunique_32_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_32_write(GPOUT,509)
    assign avm_memcoalesce_load_cnn_fpgaunique_32_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_32_writedata(GPOUT,510)
    assign avm_memcoalesce_load_cnn_fpgaunique_32_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_32_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_33_address(GPOUT,511)
    assign avm_memcoalesce_load_cnn_fpgaunique_33_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_33_burstcount(GPOUT,512)
    assign avm_memcoalesce_load_cnn_fpgaunique_33_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_33_byteenable(GPOUT,513)
    assign avm_memcoalesce_load_cnn_fpgaunique_33_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_33_enable(GPOUT,514)
    assign avm_memcoalesce_load_cnn_fpgaunique_33_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_33_read(GPOUT,515)
    assign avm_memcoalesce_load_cnn_fpgaunique_33_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_33_write(GPOUT,516)
    assign avm_memcoalesce_load_cnn_fpgaunique_33_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_33_writedata(GPOUT,517)
    assign avm_memcoalesce_load_cnn_fpgaunique_33_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_33_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_34_address(GPOUT,518)
    assign avm_memcoalesce_load_cnn_fpgaunique_34_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_34_burstcount(GPOUT,519)
    assign avm_memcoalesce_load_cnn_fpgaunique_34_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_34_byteenable(GPOUT,520)
    assign avm_memcoalesce_load_cnn_fpgaunique_34_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_34_enable(GPOUT,521)
    assign avm_memcoalesce_load_cnn_fpgaunique_34_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_34_read(GPOUT,522)
    assign avm_memcoalesce_load_cnn_fpgaunique_34_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_34_write(GPOUT,523)
    assign avm_memcoalesce_load_cnn_fpgaunique_34_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_34_writedata(GPOUT,524)
    assign avm_memcoalesce_load_cnn_fpgaunique_34_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_34_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_35_address(GPOUT,525)
    assign avm_memcoalesce_load_cnn_fpgaunique_35_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_35_burstcount(GPOUT,526)
    assign avm_memcoalesce_load_cnn_fpgaunique_35_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_35_byteenable(GPOUT,527)
    assign avm_memcoalesce_load_cnn_fpgaunique_35_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_35_enable(GPOUT,528)
    assign avm_memcoalesce_load_cnn_fpgaunique_35_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_35_read(GPOUT,529)
    assign avm_memcoalesce_load_cnn_fpgaunique_35_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_35_write(GPOUT,530)
    assign avm_memcoalesce_load_cnn_fpgaunique_35_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_35_writedata(GPOUT,531)
    assign avm_memcoalesce_load_cnn_fpgaunique_35_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_35_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_36_address(GPOUT,532)
    assign avm_memcoalesce_load_cnn_fpgaunique_36_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_36_burstcount(GPOUT,533)
    assign avm_memcoalesce_load_cnn_fpgaunique_36_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_36_byteenable(GPOUT,534)
    assign avm_memcoalesce_load_cnn_fpgaunique_36_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_36_enable(GPOUT,535)
    assign avm_memcoalesce_load_cnn_fpgaunique_36_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_36_read(GPOUT,536)
    assign avm_memcoalesce_load_cnn_fpgaunique_36_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_36_write(GPOUT,537)
    assign avm_memcoalesce_load_cnn_fpgaunique_36_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_36_writedata(GPOUT,538)
    assign avm_memcoalesce_load_cnn_fpgaunique_36_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_36_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_37_address(GPOUT,539)
    assign avm_memcoalesce_load_cnn_fpgaunique_37_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_37_burstcount(GPOUT,540)
    assign avm_memcoalesce_load_cnn_fpgaunique_37_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_37_byteenable(GPOUT,541)
    assign avm_memcoalesce_load_cnn_fpgaunique_37_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_37_enable(GPOUT,542)
    assign avm_memcoalesce_load_cnn_fpgaunique_37_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_37_read(GPOUT,543)
    assign avm_memcoalesce_load_cnn_fpgaunique_37_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_37_write(GPOUT,544)
    assign avm_memcoalesce_load_cnn_fpgaunique_37_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_37_writedata(GPOUT,545)
    assign avm_memcoalesce_load_cnn_fpgaunique_37_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_37_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_38_address(GPOUT,546)
    assign avm_memcoalesce_load_cnn_fpgaunique_38_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_38_burstcount(GPOUT,547)
    assign avm_memcoalesce_load_cnn_fpgaunique_38_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_38_byteenable(GPOUT,548)
    assign avm_memcoalesce_load_cnn_fpgaunique_38_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_38_enable(GPOUT,549)
    assign avm_memcoalesce_load_cnn_fpgaunique_38_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_38_read(GPOUT,550)
    assign avm_memcoalesce_load_cnn_fpgaunique_38_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_38_write(GPOUT,551)
    assign avm_memcoalesce_load_cnn_fpgaunique_38_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_38_writedata(GPOUT,552)
    assign avm_memcoalesce_load_cnn_fpgaunique_38_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_38_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_39_address(GPOUT,553)
    assign avm_memcoalesce_load_cnn_fpgaunique_39_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_39_burstcount(GPOUT,554)
    assign avm_memcoalesce_load_cnn_fpgaunique_39_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_39_byteenable(GPOUT,555)
    assign avm_memcoalesce_load_cnn_fpgaunique_39_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_39_enable(GPOUT,556)
    assign avm_memcoalesce_load_cnn_fpgaunique_39_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_39_read(GPOUT,557)
    assign avm_memcoalesce_load_cnn_fpgaunique_39_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_39_write(GPOUT,558)
    assign avm_memcoalesce_load_cnn_fpgaunique_39_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_39_writedata(GPOUT,559)
    assign avm_memcoalesce_load_cnn_fpgaunique_39_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_39_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_3_address(GPOUT,560)
    assign avm_memcoalesce_load_cnn_fpgaunique_3_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_3_burstcount(GPOUT,561)
    assign avm_memcoalesce_load_cnn_fpgaunique_3_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_3_byteenable(GPOUT,562)
    assign avm_memcoalesce_load_cnn_fpgaunique_3_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_3_enable(GPOUT,563)
    assign avm_memcoalesce_load_cnn_fpgaunique_3_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_3_read(GPOUT,564)
    assign avm_memcoalesce_load_cnn_fpgaunique_3_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_3_write(GPOUT,565)
    assign avm_memcoalesce_load_cnn_fpgaunique_3_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_3_writedata(GPOUT,566)
    assign avm_memcoalesce_load_cnn_fpgaunique_3_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_3_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_40_address(GPOUT,567)
    assign avm_memcoalesce_load_cnn_fpgaunique_40_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_40_burstcount(GPOUT,568)
    assign avm_memcoalesce_load_cnn_fpgaunique_40_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_40_byteenable(GPOUT,569)
    assign avm_memcoalesce_load_cnn_fpgaunique_40_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_40_enable(GPOUT,570)
    assign avm_memcoalesce_load_cnn_fpgaunique_40_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_40_read(GPOUT,571)
    assign avm_memcoalesce_load_cnn_fpgaunique_40_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_40_write(GPOUT,572)
    assign avm_memcoalesce_load_cnn_fpgaunique_40_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_40_writedata(GPOUT,573)
    assign avm_memcoalesce_load_cnn_fpgaunique_40_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_40_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_41_address(GPOUT,574)
    assign avm_memcoalesce_load_cnn_fpgaunique_41_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_41_burstcount(GPOUT,575)
    assign avm_memcoalesce_load_cnn_fpgaunique_41_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_41_byteenable(GPOUT,576)
    assign avm_memcoalesce_load_cnn_fpgaunique_41_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_41_enable(GPOUT,577)
    assign avm_memcoalesce_load_cnn_fpgaunique_41_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_41_read(GPOUT,578)
    assign avm_memcoalesce_load_cnn_fpgaunique_41_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_41_write(GPOUT,579)
    assign avm_memcoalesce_load_cnn_fpgaunique_41_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_41_writedata(GPOUT,580)
    assign avm_memcoalesce_load_cnn_fpgaunique_41_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_41_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_42_address(GPOUT,581)
    assign avm_memcoalesce_load_cnn_fpgaunique_42_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_42_burstcount(GPOUT,582)
    assign avm_memcoalesce_load_cnn_fpgaunique_42_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_42_byteenable(GPOUT,583)
    assign avm_memcoalesce_load_cnn_fpgaunique_42_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_42_enable(GPOUT,584)
    assign avm_memcoalesce_load_cnn_fpgaunique_42_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_42_read(GPOUT,585)
    assign avm_memcoalesce_load_cnn_fpgaunique_42_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_42_write(GPOUT,586)
    assign avm_memcoalesce_load_cnn_fpgaunique_42_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_42_writedata(GPOUT,587)
    assign avm_memcoalesce_load_cnn_fpgaunique_42_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_42_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_43_address(GPOUT,588)
    assign avm_memcoalesce_load_cnn_fpgaunique_43_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_43_burstcount(GPOUT,589)
    assign avm_memcoalesce_load_cnn_fpgaunique_43_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_43_byteenable(GPOUT,590)
    assign avm_memcoalesce_load_cnn_fpgaunique_43_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_43_enable(GPOUT,591)
    assign avm_memcoalesce_load_cnn_fpgaunique_43_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_43_read(GPOUT,592)
    assign avm_memcoalesce_load_cnn_fpgaunique_43_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_43_write(GPOUT,593)
    assign avm_memcoalesce_load_cnn_fpgaunique_43_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_43_writedata(GPOUT,594)
    assign avm_memcoalesce_load_cnn_fpgaunique_43_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_43_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_44_address(GPOUT,595)
    assign avm_memcoalesce_load_cnn_fpgaunique_44_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_44_burstcount(GPOUT,596)
    assign avm_memcoalesce_load_cnn_fpgaunique_44_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_44_byteenable(GPOUT,597)
    assign avm_memcoalesce_load_cnn_fpgaunique_44_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_44_enable(GPOUT,598)
    assign avm_memcoalesce_load_cnn_fpgaunique_44_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_44_read(GPOUT,599)
    assign avm_memcoalesce_load_cnn_fpgaunique_44_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_44_write(GPOUT,600)
    assign avm_memcoalesce_load_cnn_fpgaunique_44_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_44_writedata(GPOUT,601)
    assign avm_memcoalesce_load_cnn_fpgaunique_44_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_44_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_45_address(GPOUT,602)
    assign avm_memcoalesce_load_cnn_fpgaunique_45_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_45_burstcount(GPOUT,603)
    assign avm_memcoalesce_load_cnn_fpgaunique_45_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_45_byteenable(GPOUT,604)
    assign avm_memcoalesce_load_cnn_fpgaunique_45_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_45_enable(GPOUT,605)
    assign avm_memcoalesce_load_cnn_fpgaunique_45_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_45_read(GPOUT,606)
    assign avm_memcoalesce_load_cnn_fpgaunique_45_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_45_write(GPOUT,607)
    assign avm_memcoalesce_load_cnn_fpgaunique_45_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_45_writedata(GPOUT,608)
    assign avm_memcoalesce_load_cnn_fpgaunique_45_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_45_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_46_address(GPOUT,609)
    assign avm_memcoalesce_load_cnn_fpgaunique_46_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_46_burstcount(GPOUT,610)
    assign avm_memcoalesce_load_cnn_fpgaunique_46_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_46_byteenable(GPOUT,611)
    assign avm_memcoalesce_load_cnn_fpgaunique_46_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_46_enable(GPOUT,612)
    assign avm_memcoalesce_load_cnn_fpgaunique_46_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_46_read(GPOUT,613)
    assign avm_memcoalesce_load_cnn_fpgaunique_46_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_46_write(GPOUT,614)
    assign avm_memcoalesce_load_cnn_fpgaunique_46_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_46_writedata(GPOUT,615)
    assign avm_memcoalesce_load_cnn_fpgaunique_46_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_46_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_47_address(GPOUT,616)
    assign avm_memcoalesce_load_cnn_fpgaunique_47_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_47_burstcount(GPOUT,617)
    assign avm_memcoalesce_load_cnn_fpgaunique_47_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_47_byteenable(GPOUT,618)
    assign avm_memcoalesce_load_cnn_fpgaunique_47_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_47_enable(GPOUT,619)
    assign avm_memcoalesce_load_cnn_fpgaunique_47_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_47_read(GPOUT,620)
    assign avm_memcoalesce_load_cnn_fpgaunique_47_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_47_write(GPOUT,621)
    assign avm_memcoalesce_load_cnn_fpgaunique_47_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_47_writedata(GPOUT,622)
    assign avm_memcoalesce_load_cnn_fpgaunique_47_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_47_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_48_address(GPOUT,623)
    assign avm_memcoalesce_load_cnn_fpgaunique_48_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_48_burstcount(GPOUT,624)
    assign avm_memcoalesce_load_cnn_fpgaunique_48_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_48_byteenable(GPOUT,625)
    assign avm_memcoalesce_load_cnn_fpgaunique_48_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_48_enable(GPOUT,626)
    assign avm_memcoalesce_load_cnn_fpgaunique_48_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_48_read(GPOUT,627)
    assign avm_memcoalesce_load_cnn_fpgaunique_48_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_48_write(GPOUT,628)
    assign avm_memcoalesce_load_cnn_fpgaunique_48_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_48_writedata(GPOUT,629)
    assign avm_memcoalesce_load_cnn_fpgaunique_48_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_48_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_49_address(GPOUT,630)
    assign avm_memcoalesce_load_cnn_fpgaunique_49_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_49_burstcount(GPOUT,631)
    assign avm_memcoalesce_load_cnn_fpgaunique_49_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_49_byteenable(GPOUT,632)
    assign avm_memcoalesce_load_cnn_fpgaunique_49_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_49_enable(GPOUT,633)
    assign avm_memcoalesce_load_cnn_fpgaunique_49_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_49_read(GPOUT,634)
    assign avm_memcoalesce_load_cnn_fpgaunique_49_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_49_write(GPOUT,635)
    assign avm_memcoalesce_load_cnn_fpgaunique_49_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_49_writedata(GPOUT,636)
    assign avm_memcoalesce_load_cnn_fpgaunique_49_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_49_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_4_address(GPOUT,637)
    assign avm_memcoalesce_load_cnn_fpgaunique_4_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_4_burstcount(GPOUT,638)
    assign avm_memcoalesce_load_cnn_fpgaunique_4_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_4_byteenable(GPOUT,639)
    assign avm_memcoalesce_load_cnn_fpgaunique_4_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_4_enable(GPOUT,640)
    assign avm_memcoalesce_load_cnn_fpgaunique_4_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_4_read(GPOUT,641)
    assign avm_memcoalesce_load_cnn_fpgaunique_4_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_4_write(GPOUT,642)
    assign avm_memcoalesce_load_cnn_fpgaunique_4_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_4_writedata(GPOUT,643)
    assign avm_memcoalesce_load_cnn_fpgaunique_4_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_4_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_50_address(GPOUT,644)
    assign avm_memcoalesce_load_cnn_fpgaunique_50_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_50_burstcount(GPOUT,645)
    assign avm_memcoalesce_load_cnn_fpgaunique_50_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_50_byteenable(GPOUT,646)
    assign avm_memcoalesce_load_cnn_fpgaunique_50_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_50_enable(GPOUT,647)
    assign avm_memcoalesce_load_cnn_fpgaunique_50_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_50_read(GPOUT,648)
    assign avm_memcoalesce_load_cnn_fpgaunique_50_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_50_write(GPOUT,649)
    assign avm_memcoalesce_load_cnn_fpgaunique_50_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_50_writedata(GPOUT,650)
    assign avm_memcoalesce_load_cnn_fpgaunique_50_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_50_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_51_address(GPOUT,651)
    assign avm_memcoalesce_load_cnn_fpgaunique_51_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_51_burstcount(GPOUT,652)
    assign avm_memcoalesce_load_cnn_fpgaunique_51_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_51_byteenable(GPOUT,653)
    assign avm_memcoalesce_load_cnn_fpgaunique_51_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_51_enable(GPOUT,654)
    assign avm_memcoalesce_load_cnn_fpgaunique_51_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_51_read(GPOUT,655)
    assign avm_memcoalesce_load_cnn_fpgaunique_51_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_51_write(GPOUT,656)
    assign avm_memcoalesce_load_cnn_fpgaunique_51_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_51_writedata(GPOUT,657)
    assign avm_memcoalesce_load_cnn_fpgaunique_51_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_51_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_52_address(GPOUT,658)
    assign avm_memcoalesce_load_cnn_fpgaunique_52_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_52_burstcount(GPOUT,659)
    assign avm_memcoalesce_load_cnn_fpgaunique_52_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_52_byteenable(GPOUT,660)
    assign avm_memcoalesce_load_cnn_fpgaunique_52_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_52_enable(GPOUT,661)
    assign avm_memcoalesce_load_cnn_fpgaunique_52_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_52_read(GPOUT,662)
    assign avm_memcoalesce_load_cnn_fpgaunique_52_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_52_write(GPOUT,663)
    assign avm_memcoalesce_load_cnn_fpgaunique_52_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_52_writedata(GPOUT,664)
    assign avm_memcoalesce_load_cnn_fpgaunique_52_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_52_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_53_address(GPOUT,665)
    assign avm_memcoalesce_load_cnn_fpgaunique_53_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_53_burstcount(GPOUT,666)
    assign avm_memcoalesce_load_cnn_fpgaunique_53_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_53_byteenable(GPOUT,667)
    assign avm_memcoalesce_load_cnn_fpgaunique_53_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_53_enable(GPOUT,668)
    assign avm_memcoalesce_load_cnn_fpgaunique_53_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_53_read(GPOUT,669)
    assign avm_memcoalesce_load_cnn_fpgaunique_53_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_53_write(GPOUT,670)
    assign avm_memcoalesce_load_cnn_fpgaunique_53_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_53_writedata(GPOUT,671)
    assign avm_memcoalesce_load_cnn_fpgaunique_53_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_53_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_54_address(GPOUT,672)
    assign avm_memcoalesce_load_cnn_fpgaunique_54_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_54_burstcount(GPOUT,673)
    assign avm_memcoalesce_load_cnn_fpgaunique_54_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_54_byteenable(GPOUT,674)
    assign avm_memcoalesce_load_cnn_fpgaunique_54_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_54_enable(GPOUT,675)
    assign avm_memcoalesce_load_cnn_fpgaunique_54_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_54_read(GPOUT,676)
    assign avm_memcoalesce_load_cnn_fpgaunique_54_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_54_write(GPOUT,677)
    assign avm_memcoalesce_load_cnn_fpgaunique_54_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_54_writedata(GPOUT,678)
    assign avm_memcoalesce_load_cnn_fpgaunique_54_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_54_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_55_address(GPOUT,679)
    assign avm_memcoalesce_load_cnn_fpgaunique_55_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_55_burstcount(GPOUT,680)
    assign avm_memcoalesce_load_cnn_fpgaunique_55_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_55_byteenable(GPOUT,681)
    assign avm_memcoalesce_load_cnn_fpgaunique_55_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_55_enable(GPOUT,682)
    assign avm_memcoalesce_load_cnn_fpgaunique_55_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_55_read(GPOUT,683)
    assign avm_memcoalesce_load_cnn_fpgaunique_55_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_55_write(GPOUT,684)
    assign avm_memcoalesce_load_cnn_fpgaunique_55_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_55_writedata(GPOUT,685)
    assign avm_memcoalesce_load_cnn_fpgaunique_55_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_55_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_56_address(GPOUT,686)
    assign avm_memcoalesce_load_cnn_fpgaunique_56_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_56_burstcount(GPOUT,687)
    assign avm_memcoalesce_load_cnn_fpgaunique_56_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_56_byteenable(GPOUT,688)
    assign avm_memcoalesce_load_cnn_fpgaunique_56_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_56_enable(GPOUT,689)
    assign avm_memcoalesce_load_cnn_fpgaunique_56_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_56_read(GPOUT,690)
    assign avm_memcoalesce_load_cnn_fpgaunique_56_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_56_write(GPOUT,691)
    assign avm_memcoalesce_load_cnn_fpgaunique_56_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_56_writedata(GPOUT,692)
    assign avm_memcoalesce_load_cnn_fpgaunique_56_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_56_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_57_address(GPOUT,693)
    assign avm_memcoalesce_load_cnn_fpgaunique_57_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_57_burstcount(GPOUT,694)
    assign avm_memcoalesce_load_cnn_fpgaunique_57_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_57_byteenable(GPOUT,695)
    assign avm_memcoalesce_load_cnn_fpgaunique_57_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_57_enable(GPOUT,696)
    assign avm_memcoalesce_load_cnn_fpgaunique_57_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_57_read(GPOUT,697)
    assign avm_memcoalesce_load_cnn_fpgaunique_57_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_57_write(GPOUT,698)
    assign avm_memcoalesce_load_cnn_fpgaunique_57_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_57_writedata(GPOUT,699)
    assign avm_memcoalesce_load_cnn_fpgaunique_57_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_57_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_58_address(GPOUT,700)
    assign avm_memcoalesce_load_cnn_fpgaunique_58_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_58_burstcount(GPOUT,701)
    assign avm_memcoalesce_load_cnn_fpgaunique_58_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_58_byteenable(GPOUT,702)
    assign avm_memcoalesce_load_cnn_fpgaunique_58_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_58_enable(GPOUT,703)
    assign avm_memcoalesce_load_cnn_fpgaunique_58_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_58_read(GPOUT,704)
    assign avm_memcoalesce_load_cnn_fpgaunique_58_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_58_write(GPOUT,705)
    assign avm_memcoalesce_load_cnn_fpgaunique_58_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_58_writedata(GPOUT,706)
    assign avm_memcoalesce_load_cnn_fpgaunique_58_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_58_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_59_address(GPOUT,707)
    assign avm_memcoalesce_load_cnn_fpgaunique_59_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_59_burstcount(GPOUT,708)
    assign avm_memcoalesce_load_cnn_fpgaunique_59_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_59_byteenable(GPOUT,709)
    assign avm_memcoalesce_load_cnn_fpgaunique_59_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_59_enable(GPOUT,710)
    assign avm_memcoalesce_load_cnn_fpgaunique_59_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_59_read(GPOUT,711)
    assign avm_memcoalesce_load_cnn_fpgaunique_59_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_59_write(GPOUT,712)
    assign avm_memcoalesce_load_cnn_fpgaunique_59_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_59_writedata(GPOUT,713)
    assign avm_memcoalesce_load_cnn_fpgaunique_59_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_59_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_5_address(GPOUT,714)
    assign avm_memcoalesce_load_cnn_fpgaunique_5_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_5_burstcount(GPOUT,715)
    assign avm_memcoalesce_load_cnn_fpgaunique_5_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_5_byteenable(GPOUT,716)
    assign avm_memcoalesce_load_cnn_fpgaunique_5_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_5_enable(GPOUT,717)
    assign avm_memcoalesce_load_cnn_fpgaunique_5_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_5_read(GPOUT,718)
    assign avm_memcoalesce_load_cnn_fpgaunique_5_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_5_write(GPOUT,719)
    assign avm_memcoalesce_load_cnn_fpgaunique_5_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_5_writedata(GPOUT,720)
    assign avm_memcoalesce_load_cnn_fpgaunique_5_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_5_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_60_address(GPOUT,721)
    assign avm_memcoalesce_load_cnn_fpgaunique_60_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_60_burstcount(GPOUT,722)
    assign avm_memcoalesce_load_cnn_fpgaunique_60_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_60_byteenable(GPOUT,723)
    assign avm_memcoalesce_load_cnn_fpgaunique_60_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_60_enable(GPOUT,724)
    assign avm_memcoalesce_load_cnn_fpgaunique_60_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_60_read(GPOUT,725)
    assign avm_memcoalesce_load_cnn_fpgaunique_60_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_60_write(GPOUT,726)
    assign avm_memcoalesce_load_cnn_fpgaunique_60_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_60_writedata(GPOUT,727)
    assign avm_memcoalesce_load_cnn_fpgaunique_60_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_60_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_61_address(GPOUT,728)
    assign avm_memcoalesce_load_cnn_fpgaunique_61_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_61_burstcount(GPOUT,729)
    assign avm_memcoalesce_load_cnn_fpgaunique_61_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_61_byteenable(GPOUT,730)
    assign avm_memcoalesce_load_cnn_fpgaunique_61_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_61_enable(GPOUT,731)
    assign avm_memcoalesce_load_cnn_fpgaunique_61_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_61_read(GPOUT,732)
    assign avm_memcoalesce_load_cnn_fpgaunique_61_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_61_write(GPOUT,733)
    assign avm_memcoalesce_load_cnn_fpgaunique_61_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_61_writedata(GPOUT,734)
    assign avm_memcoalesce_load_cnn_fpgaunique_61_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_61_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_62_address(GPOUT,735)
    assign avm_memcoalesce_load_cnn_fpgaunique_62_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_62_burstcount(GPOUT,736)
    assign avm_memcoalesce_load_cnn_fpgaunique_62_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_62_byteenable(GPOUT,737)
    assign avm_memcoalesce_load_cnn_fpgaunique_62_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_62_enable(GPOUT,738)
    assign avm_memcoalesce_load_cnn_fpgaunique_62_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_62_read(GPOUT,739)
    assign avm_memcoalesce_load_cnn_fpgaunique_62_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_62_write(GPOUT,740)
    assign avm_memcoalesce_load_cnn_fpgaunique_62_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_62_writedata(GPOUT,741)
    assign avm_memcoalesce_load_cnn_fpgaunique_62_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_62_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_63_address(GPOUT,742)
    assign avm_memcoalesce_load_cnn_fpgaunique_63_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_63_burstcount(GPOUT,743)
    assign avm_memcoalesce_load_cnn_fpgaunique_63_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_63_byteenable(GPOUT,744)
    assign avm_memcoalesce_load_cnn_fpgaunique_63_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_63_enable(GPOUT,745)
    assign avm_memcoalesce_load_cnn_fpgaunique_63_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_63_read(GPOUT,746)
    assign avm_memcoalesce_load_cnn_fpgaunique_63_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_63_write(GPOUT,747)
    assign avm_memcoalesce_load_cnn_fpgaunique_63_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_63_writedata(GPOUT,748)
    assign avm_memcoalesce_load_cnn_fpgaunique_63_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_63_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_64_address(GPOUT,749)
    assign avm_memcoalesce_load_cnn_fpgaunique_64_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_64_burstcount(GPOUT,750)
    assign avm_memcoalesce_load_cnn_fpgaunique_64_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_64_byteenable(GPOUT,751)
    assign avm_memcoalesce_load_cnn_fpgaunique_64_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_64_enable(GPOUT,752)
    assign avm_memcoalesce_load_cnn_fpgaunique_64_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_64_read(GPOUT,753)
    assign avm_memcoalesce_load_cnn_fpgaunique_64_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_64_write(GPOUT,754)
    assign avm_memcoalesce_load_cnn_fpgaunique_64_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_64_writedata(GPOUT,755)
    assign avm_memcoalesce_load_cnn_fpgaunique_64_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_64_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_6_address(GPOUT,756)
    assign avm_memcoalesce_load_cnn_fpgaunique_6_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_6_burstcount(GPOUT,757)
    assign avm_memcoalesce_load_cnn_fpgaunique_6_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_6_byteenable(GPOUT,758)
    assign avm_memcoalesce_load_cnn_fpgaunique_6_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_6_enable(GPOUT,759)
    assign avm_memcoalesce_load_cnn_fpgaunique_6_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_6_read(GPOUT,760)
    assign avm_memcoalesce_load_cnn_fpgaunique_6_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_6_write(GPOUT,761)
    assign avm_memcoalesce_load_cnn_fpgaunique_6_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_6_writedata(GPOUT,762)
    assign avm_memcoalesce_load_cnn_fpgaunique_6_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_6_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_7_address(GPOUT,763)
    assign avm_memcoalesce_load_cnn_fpgaunique_7_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_7_burstcount(GPOUT,764)
    assign avm_memcoalesce_load_cnn_fpgaunique_7_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_7_byteenable(GPOUT,765)
    assign avm_memcoalesce_load_cnn_fpgaunique_7_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_7_enable(GPOUT,766)
    assign avm_memcoalesce_load_cnn_fpgaunique_7_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_7_read(GPOUT,767)
    assign avm_memcoalesce_load_cnn_fpgaunique_7_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_7_write(GPOUT,768)
    assign avm_memcoalesce_load_cnn_fpgaunique_7_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_7_writedata(GPOUT,769)
    assign avm_memcoalesce_load_cnn_fpgaunique_7_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_7_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_8_address(GPOUT,770)
    assign avm_memcoalesce_load_cnn_fpgaunique_8_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_8_burstcount(GPOUT,771)
    assign avm_memcoalesce_load_cnn_fpgaunique_8_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_8_byteenable(GPOUT,772)
    assign avm_memcoalesce_load_cnn_fpgaunique_8_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_8_enable(GPOUT,773)
    assign avm_memcoalesce_load_cnn_fpgaunique_8_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_8_read(GPOUT,774)
    assign avm_memcoalesce_load_cnn_fpgaunique_8_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_8_write(GPOUT,775)
    assign avm_memcoalesce_load_cnn_fpgaunique_8_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_8_writedata(GPOUT,776)
    assign avm_memcoalesce_load_cnn_fpgaunique_8_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_8_avm_writedata;

    // avm_memcoalesce_load_cnn_fpgaunique_9_address(GPOUT,777)
    assign avm_memcoalesce_load_cnn_fpgaunique_9_address = cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_address;

    // avm_memcoalesce_load_cnn_fpgaunique_9_burstcount(GPOUT,778)
    assign avm_memcoalesce_load_cnn_fpgaunique_9_burstcount = cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_burstcount;

    // avm_memcoalesce_load_cnn_fpgaunique_9_byteenable(GPOUT,779)
    assign avm_memcoalesce_load_cnn_fpgaunique_9_byteenable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_byteenable;

    // avm_memcoalesce_load_cnn_fpgaunique_9_enable(GPOUT,780)
    assign avm_memcoalesce_load_cnn_fpgaunique_9_enable = cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_enable;

    // avm_memcoalesce_load_cnn_fpgaunique_9_read(GPOUT,781)
    assign avm_memcoalesce_load_cnn_fpgaunique_9_read = cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_read;

    // avm_memcoalesce_load_cnn_fpgaunique_9_write(GPOUT,782)
    assign avm_memcoalesce_load_cnn_fpgaunique_9_write = cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_write;

    // avm_memcoalesce_load_cnn_fpgaunique_9_writedata(GPOUT,783)
    assign avm_memcoalesce_load_cnn_fpgaunique_9_writedata = cnn_function_out_memcoalesce_load_cnn_fpgaunique_9_avm_writedata;

    // avm_unnamed_cnn175_address(GPOUT,784)
    assign avm_unnamed_cnn175_address = cnn_function_out_unnamed_cnn175_avm_address;

    // avm_unnamed_cnn175_burstcount(GPOUT,785)
    assign avm_unnamed_cnn175_burstcount = cnn_function_out_unnamed_cnn175_avm_burstcount;

    // avm_unnamed_cnn175_byteenable(GPOUT,786)
    assign avm_unnamed_cnn175_byteenable = cnn_function_out_unnamed_cnn175_avm_byteenable;

    // avm_unnamed_cnn175_enable(GPOUT,787)
    assign avm_unnamed_cnn175_enable = cnn_function_out_unnamed_cnn175_avm_enable;

    // avm_unnamed_cnn175_read(GPOUT,788)
    assign avm_unnamed_cnn175_read = cnn_function_out_unnamed_cnn175_avm_read;

    // avm_unnamed_cnn175_write(GPOUT,789)
    assign avm_unnamed_cnn175_write = cnn_function_out_unnamed_cnn175_avm_write;

    // avm_unnamed_cnn175_writedata(GPOUT,790)
    assign avm_unnamed_cnn175_writedata = cnn_function_out_unnamed_cnn175_avm_writedata;

    // acl_clock2x_dummy_consumer(EXTIFACE,2)
    assign acl_clock2x_dummy_consumer_clock2x = clock2x;
    assign acl_clock2x_dummy_consumer_clock2x_bitsignaltemp = acl_clock2x_dummy_consumer_clock2x[0];
    assign acl_clock2x_dummy_consumer_myout[0] = acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    acl_clock2x_holder theacl_clock2x_dummy_consumer (
        .clock2x(acl_clock2x_dummy_consumer_clock2x_bitsignaltemp),
        .myout(acl_clock2x_dummy_consumer_myout_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // clock2x_output(GPOUT,791)
    assign clock2x_output = acl_clock2x_dummy_consumer_myout;

    // has_a_lsu_active(GPOUT,792)
    assign has_a_lsu_active = cnn_function_out_o_active_unnamed_cnn175;

    // has_a_write_pending(GPOUT,793)
    assign has_a_write_pending = cnn_function_out_o_active_unnamed_cnn175;

    // kernel_stall_out(GPOUT,794)
    assign kernel_stall_out = cnn_function_out_stall_out;

    // kernel_valid_out(GPOUT,795)
    assign kernel_valid_out = cnn_function_out_valid_out;

    // increment_by_one(CONSTANT,12)
    assign increment_by_one_q = 32'b00000000000000000000000000000001;

    // profile_incr_join(BITJOIN,798)
    assign profile_incr_join_q = {increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_bw_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_bw_incr, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_burstcount_total_incr, increment_by_one_q, increment_by_one_q, increment_by_one_q, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_bw_incr};

    // profile_ctrl_join(BITJOIN,797)
    assign profile_ctrl_join_q = {profile_extmem_cnn_function_DDR_bank3_port0_write_burst_count_en, profile_extmem_cnn_function_DDR_bank3_port0_write_data_inc_en, profile_extmem_cnn_function_DDR_bank3_port0_read_burst_count_en, profile_extmem_cnn_function_DDR_bank3_port0_read_data_inc_en, profile_extmem_cnn_function_DDR_bank2_port0_write_burst_count_en, profile_extmem_cnn_function_DDR_bank2_port0_write_data_inc_en, profile_extmem_cnn_function_DDR_bank2_port0_read_burst_count_en, profile_extmem_cnn_function_DDR_bank2_port0_read_data_inc_en, profile_extmem_cnn_function_DDR_bank1_port0_write_burst_count_en, profile_extmem_cnn_function_DDR_bank1_port0_write_data_inc_en, profile_extmem_cnn_function_DDR_bank1_port0_read_burst_count_en, profile_extmem_cnn_function_DDR_bank1_port0_read_data_inc_en, profile_extmem_cnn_function_DDR_bank0_port0_write_burst_count_en, profile_extmem_cnn_function_DDR_bank0_port0_write_data_inc_en, profile_extmem_cnn_function_DDR_bank0_port0_read_burst_count_en, profile_extmem_cnn_function_DDR_bank0_port0_read_data_inc_en, cnn_function_out_profile_clock, cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_64s_p1s_memcoalesce_struct_cnn_fpgaunique_64s_memcoalesce_load_cnn_fpgaunique_64_cnn1662_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_63s_p1s_memcoalesce_struct_cnn_fpgaunique_63s_memcoalesce_load_cnn_fpgaunique_63_cnn1659_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_62s_p1s_memcoalesce_struct_cnn_fpgaunique_62s_memcoalesce_load_cnn_fpgaunique_62_cnn1656_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_61s_p1s_memcoalesce_struct_cnn_fpgaunique_61s_memcoalesce_load_cnn_fpgaunique_61_cnn1653_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_60s_p1s_memcoalesce_struct_cnn_fpgaunique_60s_memcoalesce_load_cnn_fpgaunique_60_cnn1650_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_59s_p1s_memcoalesce_struct_cnn_fpgaunique_59s_memcoalesce_load_cnn_fpgaunique_59_cnn1647_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_58s_p1s_memcoalesce_struct_cnn_fpgaunique_58s_memcoalesce_load_cnn_fpgaunique_58_cnn1644_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_57s_p1s_memcoalesce_struct_cnn_fpgaunique_57s_memcoalesce_load_cnn_fpgaunique_57_cnn1641_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_56s_p1s_memcoalesce_struct_cnn_fpgaunique_56s_memcoalesce_load_cnn_fpgaunique_56_cnn1638_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_55s_p1s_memcoalesce_struct_cnn_fpgaunique_55s_memcoalesce_load_cnn_fpgaunique_55_cnn1635_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_54s_p1s_memcoalesce_struct_cnn_fpgaunique_54s_memcoalesce_load_cnn_fpgaunique_54_cnn1632_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_53s_p1s_memcoalesce_struct_cnn_fpgaunique_53s_memcoalesce_load_cnn_fpgaunique_53_cnn1629_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_52s_p1s_memcoalesce_struct_cnn_fpgaunique_52s_memcoalesce_load_cnn_fpgaunique_52_cnn1626_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_51s_p1s_memcoalesce_struct_cnn_fpgaunique_51s_memcoalesce_load_cnn_fpgaunique_51_cnn1623_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_50s_p1s_memcoalesce_struct_cnn_fpgaunique_50s_memcoalesce_load_cnn_fpgaunique_50_cnn1620_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_49s_p1s_memcoalesce_struct_cnn_fpgaunique_49s_memcoalesce_load_cnn_fpgaunique_49_cnn1617_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_48s_p1s_memcoalesce_struct_cnn_fpgaunique_48s_memcoalesce_load_cnn_fpgaunique_48_cnn1614_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_47s_p1s_memcoalesce_struct_cnn_fpgaunique_47s_memcoalesce_load_cnn_fpgaunique_47_cnn1611_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_46s_p1s_memcoalesce_struct_cnn_fpgaunique_46s_memcoalesce_load_cnn_fpgaunique_46_cnn1608_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_45s_p1s_memcoalesce_struct_cnn_fpgaunique_45s_memcoalesce_load_cnn_fpgaunique_45_cnn1605_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_44s_p1s_memcoalesce_struct_cnn_fpgaunique_44s_memcoalesce_load_cnn_fpgaunique_44_cnn1602_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_43s_p1s_memcoalesce_struct_cnn_fpgaunique_43s_memcoalesce_load_cnn_fpgaunique_43_cnn1599_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_42s_p1s_memcoalesce_struct_cnn_fpgaunique_42s_memcoalesce_load_cnn_fpgaunique_42_cnn1596_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_41s_p1s_memcoalesce_struct_cnn_fpgaunique_41s_memcoalesce_load_cnn_fpgaunique_41_cnn1593_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_40s_p1s_memcoalesce_struct_cnn_fpgaunique_40s_memcoalesce_load_cnn_fpgaunique_40_cnn1590_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_39s_p1s_memcoalesce_struct_cnn_fpgaunique_39s_memcoalesce_load_cnn_fpgaunique_39_cnn1587_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_38s_p1s_memcoalesce_struct_cnn_fpgaunique_38s_memcoalesce_load_cnn_fpgaunique_38_cnn1584_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_37s_p1s_memcoalesce_struct_cnn_fpgaunique_37s_memcoalesce_load_cnn_fpgaunique_37_cnn1581_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_36s_p1s_memcoalesce_struct_cnn_fpgaunique_36s_memcoalesce_load_cnn_fpgaunique_36_cnn1578_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_35s_p1s_memcoalesce_struct_cnn_fpgaunique_35s_memcoalesce_load_cnn_fpgaunique_35_cnn1575_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_34s_p1s_memcoalesce_struct_cnn_fpgaunique_34s_memcoalesce_load_cnn_fpgaunique_34_cnn1572_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_33s_p1s_memcoalesce_struct_cnn_fpgaunique_33s_memcoalesce_load_cnn_fpgaunique_33_cnn1569_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_32s_p1s_memcoalesce_struct_cnn_fpgaunique_32s_memcoalesce_load_cnn_fpgaunique_32_cnn1566_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_31s_p1s_memcoalesce_struct_cnn_fpgaunique_31s_memcoalesce_load_cnn_fpgaunique_31_cnn1563_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_30s_p1s_memcoalesce_struct_cnn_fpgaunique_30s_memcoalesce_load_cnn_fpgaunique_30_cnn1560_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_29s_p1s_memcoalesce_struct_cnn_fpgaunique_29s_memcoalesce_load_cnn_fpgaunique_29_cnn1557_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_28s_p1s_memcoalesce_struct_cnn_fpgaunique_28s_memcoalesce_load_cnn_fpgaunique_28_cnn1554_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_27s_p1s_memcoalesce_struct_cnn_fpgaunique_27s_memcoalesce_load_cnn_fpgaunique_27_cnn1551_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_26s_p1s_memcoalesce_struct_cnn_fpgaunique_26s_memcoalesce_load_cnn_fpgaunique_26_cnn1548_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_25s_p1s_memcoalesce_struct_cnn_fpgaunique_25s_memcoalesce_load_cnn_fpgaunique_25_cnn1545_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_24s_p1s_memcoalesce_struct_cnn_fpgaunique_24s_memcoalesce_load_cnn_fpgaunique_24_cnn1542_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_23s_p1s_memcoalesce_struct_cnn_fpgaunique_23s_memcoalesce_load_cnn_fpgaunique_23_cnn1539_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_22s_p1s_memcoalesce_struct_cnn_fpgaunique_22s_memcoalesce_load_cnn_fpgaunique_22_cnn1536_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_21s_p1s_memcoalesce_struct_cnn_fpgaunique_21s_memcoalesce_load_cnn_fpgaunique_21_cnn1533_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_20s_p1s_memcoalesce_struct_cnn_fpgaunique_20s_memcoalesce_load_cnn_fpgaunique_20_cnn1530_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_19s_p1s_memcoalesce_struct_cnn_fpgaunique_19s_memcoalesce_load_cnn_fpgaunique_19_cnn1527_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_18s_p1s_memcoalesce_struct_cnn_fpgaunique_18s_memcoalesce_load_cnn_fpgaunique_18_cnn1524_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_17s_p1s_memcoalesce_struct_cnn_fpgaunique_17s_memcoalesce_load_cnn_fpgaunique_17_cnn1521_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_16s_p1s_memcoalesce_struct_cnn_fpgaunique_16s_memcoalesce_load_cnn_fpgaunique_16_cnn1518_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_15s_p1s_memcoalesce_struct_cnn_fpgaunique_15s_memcoalesce_load_cnn_fpgaunique_15_cnn1515_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_14s_p1s_memcoalesce_struct_cnn_fpgaunique_14s_memcoalesce_load_cnn_fpgaunique_14_cnn1512_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_13s_p1s_memcoalesce_struct_cnn_fpgaunique_13s_memcoalesce_load_cnn_fpgaunique_13_cnn1509_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_12s_p1s_memcoalesce_struct_cnn_fpgaunique_12s_memcoalesce_load_cnn_fpgaunique_12_cnn1506_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_11s_p1s_memcoalesce_struct_cnn_fpgaunique_11s_memcoalesce_load_cnn_fpgaunique_11_cnn1503_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_10s_p1s_memcoalesce_struct_cnn_fpgaunique_10s_memcoalesce_load_cnn_fpgaunique_10_cnn1500_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_9s_p1s_memcoalesce_struct_cnn_fpgaunique_9s_memcoalesce_load_cnn_fpgaunique_9_cnn1497_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_8s_p1s_memcoalesce_struct_cnn_fpgaunique_8s_memcoalesce_load_cnn_fpgaunique_8_cnn1494_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_7s_p1s_memcoalesce_struct_cnn_fpgaunique_7s_memcoalesce_load_cnn_fpgaunique_7_cnn1491_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_6s_p1s_memcoalesce_struct_cnn_fpgaunique_6s_memcoalesce_load_cnn_fpgaunique_6_cnn1488_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_5s_p1s_memcoalesce_struct_cnn_fpgaunique_5s_memcoalesce_load_cnn_fpgaunique_5_cnn1485_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_4s_p1s_memcoalesce_struct_cnn_fpgaunique_4s_memcoalesce_load_cnn_fpgaunique_4_cnn1482_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_3s_p1s_memcoalesce_struct_cnn_fpgaunique_3s_memcoalesce_load_cnn_fpgaunique_3_cnn1479_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_2s_p1s_memcoalesce_struct_cnn_fpgaunique_2s_memcoalesce_load_cnn_fpgaunique_2_cnn1476_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_extra_unaligned_reqs_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_nonaligned_cached_s_memcoalesce_struct_cnn_fpgaunique_1s_p1s_memcoalesce_struct_cnn_fpgaunique_1s_memcoalesce_load_cnn_fpgaunique_1_cnn1473_profile_bw_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_stall_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_req_cache_hit_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_burstcount_total_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_avm_readwrite_count_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_total_req_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_total_ivalid_cntl, cnn_function_out_profile_i_llvm_fpga_load_burst_coalesced_cached_s_memcoalesce_struct_cnn_fpgaunique_0s_p1s_memcoalesce_struct_cnn_fpgaunique_0s_memcoalesce_load_cnn_fpgaunique_0_cnn1470_profile_bw_cntl};

    // profiler_inst(EXTIFACE,799)
    assign profiler_inst_daisy_in = profile_data_in;
    assign profiler_inst_enable = profile_enable;
    assign profiler_inst_incr_cntl = profile_ctrl_join_q;
    assign profiler_inst_incr_val = profile_incr_join_q;
    assign profiler_inst_profile_shift = profile_shift;
    assign profiler_inst_resetn = profile_reset_n;
    assign profiler_inst_enable_bitsignaltemp = profiler_inst_enable[0];
    assign profiler_inst_profile_shift_bitsignaltemp = profiler_inst_profile_shift[0];
    assign profiler_inst_resetn_bitsignaltemp = profiler_inst_resetn[0];
    acl_profiler #(
        .ASYNC_RESET(0),
        .COUNTER_WIDTH(64),
        .DAISY_WIDTH(64),
        .ENABLE_TESSELLATION(0),
        .INCREMENT_WIDTH(32),
        .NUM_COUNTERS(542),
        .SYNCHRONIZE_RESET(0),
        .TESSELLATION_SECTION_SIZE(16)
    ) theprofiler_inst (
        .daisy_in(profile_data_in),
        .enable(profiler_inst_enable_bitsignaltemp),
        .incr_cntl(profile_ctrl_join_q),
        .incr_val(profile_incr_join_q),
        .profile_shift(profiler_inst_profile_shift_bitsignaltemp),
        .resetn(profiler_inst_resetn_bitsignaltemp),
        .daisy_out(profiler_inst_daisy_out),
        .clock(clock)
    );

    // profile_data_out(GPOUT,796)
    assign profile_data_out = profiler_inst_daisy_out;

    // rst_sync(RESETSYNC,806)
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
