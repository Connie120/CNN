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

// SystemVerilog created from cnn_i_sfc_logic_s_c0_in_for_cond7_preheader_s_c0_enter794_cnn191
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_logic_s_c0_in_for_cond7_preheader_s_c0_enter794_cnn191 (
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    output wire [63:0] out_intel_reserved_ffwd_20_0,
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
    output wire [0:0] out_c0_exi1797_0,
    output wire [63:0] out_c0_exi1797_1,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cnn8,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_128_q;
    wire [63:0] c_i64_129_q;
    wire [63:0] c_i64_1gr_q;
    wire [64:0] c_i65_1gr_q;
    wire [64:0] i_add31_cnn220_a;
    wire [64:0] i_add31_cnn220_b;
    logic [64:0] i_add31_cnn220_o;
    wire [64:0] i_add31_cnn220_q;
    wire [65:0] i_cmp32_cnn221_a;
    wire [65:0] i_cmp32_cnn221_b;
    logic [65:0] i_cmp32_cnn221_o;
    wire [0:0] i_cmp32_cnn221_c;
    wire [65:0] i_cmp4057_cnn223_a;
    wire [65:0] i_cmp4057_cnn223_b;
    logic [65:0] i_cmp4057_cnn223_o;
    wire [0:0] i_cmp4057_cnn223_c;
    wire [0:0] i_fpgaindvars_iv1671_replace_phi_cnn204_s;
    reg [63:0] i_fpgaindvars_iv1671_replace_phi_cnn204_q;
    wire [0:0] i_fpgaindvars_iv1673_replace_phi_cnn208_s;
    reg [63:0] i_fpgaindvars_iv1673_replace_phi_cnn208_q;
    wire [0:0] i_fpgaindvars_iv1676_replace_phi_cnn197_s;
    reg [63:0] i_fpgaindvars_iv1676_replace_phi_cnn197_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn30_cnn224_out_dest_data_out_19_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_conv9827_cnn217_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167254_cnn201_out_dest_data_out_93_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167456_cnn198_out_dest_data_out_94_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167757_cnn194_out_dest_data_out_95_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_unnamed_cnn29_cnn205_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn100_cnn436_out_intel_reserved_ffwd_90_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn101_cnn439_out_intel_reserved_ffwd_91_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn102_cnn442_out_intel_reserved_ffwd_92_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn36_cnn244_out_intel_reserved_ffwd_26_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn37_cnn247_out_intel_reserved_ffwd_27_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn38_cnn250_out_intel_reserved_ffwd_28_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn39_cnn253_out_intel_reserved_ffwd_29_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn40_cnn256_out_intel_reserved_ffwd_30_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn41_cnn259_out_intel_reserved_ffwd_31_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn42_cnn262_out_intel_reserved_ffwd_32_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn43_cnn265_out_intel_reserved_ffwd_33_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn44_cnn268_out_intel_reserved_ffwd_34_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn45_cnn271_out_intel_reserved_ffwd_35_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn46_cnn274_out_intel_reserved_ffwd_36_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn47_cnn277_out_intel_reserved_ffwd_37_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn48_cnn280_out_intel_reserved_ffwd_38_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn49_cnn283_out_intel_reserved_ffwd_39_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn50_cnn286_out_intel_reserved_ffwd_40_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn51_cnn289_out_intel_reserved_ffwd_41_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn52_cnn292_out_intel_reserved_ffwd_42_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn53_cnn295_out_intel_reserved_ffwd_43_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn54_cnn298_out_intel_reserved_ffwd_44_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn55_cnn301_out_intel_reserved_ffwd_45_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn56_cnn304_out_intel_reserved_ffwd_46_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn57_cnn307_out_intel_reserved_ffwd_47_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn58_cnn310_out_intel_reserved_ffwd_48_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn59_cnn313_out_intel_reserved_ffwd_49_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn60_cnn316_out_intel_reserved_ffwd_50_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn61_cnn319_out_intel_reserved_ffwd_51_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn62_cnn322_out_intel_reserved_ffwd_52_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn63_cnn325_out_intel_reserved_ffwd_53_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn64_cnn328_out_intel_reserved_ffwd_54_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn65_cnn331_out_intel_reserved_ffwd_55_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn66_cnn334_out_intel_reserved_ffwd_56_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn67_cnn337_out_intel_reserved_ffwd_57_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn68_cnn340_out_intel_reserved_ffwd_58_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn69_cnn343_out_intel_reserved_ffwd_59_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn70_cnn346_out_intel_reserved_ffwd_60_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn71_cnn349_out_intel_reserved_ffwd_61_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn72_cnn352_out_intel_reserved_ffwd_62_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn73_cnn355_out_intel_reserved_ffwd_63_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn74_cnn358_out_intel_reserved_ffwd_64_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn75_cnn361_out_intel_reserved_ffwd_65_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn76_cnn364_out_intel_reserved_ffwd_66_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn77_cnn367_out_intel_reserved_ffwd_67_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn78_cnn370_out_intel_reserved_ffwd_68_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn79_cnn373_out_intel_reserved_ffwd_69_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn376_out_intel_reserved_ffwd_70_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn81_cnn379_out_intel_reserved_ffwd_71_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn82_cnn382_out_intel_reserved_ffwd_72_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn83_cnn385_out_intel_reserved_ffwd_73_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn84_cnn388_out_intel_reserved_ffwd_74_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn85_cnn391_out_intel_reserved_ffwd_75_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn86_cnn394_out_intel_reserved_ffwd_76_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn87_cnn397_out_intel_reserved_ffwd_77_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn88_cnn400_out_intel_reserved_ffwd_78_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn89_cnn403_out_intel_reserved_ffwd_79_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn90_cnn406_out_intel_reserved_ffwd_80_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn91_cnn409_out_intel_reserved_ffwd_81_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn92_cnn412_out_intel_reserved_ffwd_82_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn93_cnn415_out_intel_reserved_ffwd_83_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn94_cnn418_out_intel_reserved_ffwd_84_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn95_cnn421_out_intel_reserved_ffwd_85_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn96_cnn424_out_intel_reserved_ffwd_86_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn97_cnn427_out_intel_reserved_ffwd_87_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn98_cnn430_out_intel_reserved_ffwd_88_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn99_cnn433_out_intel_reserved_ffwd_89_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn31_cnn229_out_intel_reserved_ffwd_20_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn32_cnn232_out_intel_reserved_ffwd_21_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn33_cnn235_out_intel_reserved_ffwd_23_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn35_cnn241_out_intel_reserved_ffwd_25_0;
    wire [64:0] i_llvm_fpga_ffwd_source_i65_unnamed_cnn34_cnn238_out_intel_reserved_ffwd_24_0;
    wire [0:0] i_spec_select50_cnn222_s;
    reg [63:0] i_spec_select50_cnn222_q;
    wire [55:0] i_spec_select50_cnn222_vt_const_63_q;
    wire [63:0] i_spec_select50_cnn222_vt_join_q;
    wire [7:0] i_spec_select50_cnn222_vt_select_7_b;
    wire [0:0] i_umax1675_cnn213_s;
    reg [63:0] i_umax1675_cnn213_q;
    wire [0:0] i_umax_cnn210_s;
    reg [63:0] i_umax_cnn210_q;
    wire [55:0] i_umax_cnn210_vt_const_63_q;
    wire [63:0] i_umax_cnn210_vt_join_q;
    wire [7:0] i_umax_cnn210_vt_select_7_b;
    wire [65:0] i_unnamed_cnn209_a;
    wire [65:0] i_unnamed_cnn209_b;
    logic [65:0] i_unnamed_cnn209_o;
    wire [0:0] i_unnamed_cnn209_c;
    wire [64:0] i_unnamed_cnn211_a;
    wire [64:0] i_unnamed_cnn211_b;
    logic [64:0] i_unnamed_cnn211_o;
    wire [64:0] i_unnamed_cnn211_q;
    wire [63:0] i_unnamed_cnn211_vt_join_q;
    wire [7:0] i_unnamed_cnn211_vt_select_7_b;
    wire [65:0] i_unnamed_cnn212_a;
    wire [65:0] i_unnamed_cnn212_b;
    logic [65:0] i_unnamed_cnn212_o;
    wire [0:0] i_unnamed_cnn212_c;
    wire [64:0] i_unnamed_cnn214_a;
    wire [64:0] i_unnamed_cnn214_b;
    logic [64:0] i_unnamed_cnn214_o;
    wire [64:0] i_unnamed_cnn214_q;
    wire [64:0] i_unnamed_cnn215_vt_join_q;
    wire [63:0] i_unnamed_cnn215_vt_select_63_b;
    wire [65:0] i_unnamed_cnn216_a;
    wire [65:0] i_unnamed_cnn216_b;
    logic [65:0] i_unnamed_cnn216_o;
    wire [65:0] i_unnamed_cnn216_q;
    wire [0:0] i_unnamed_cnn227_q;
    wire [0:0] i_unnamed_cnn228_q;
    wire [63:0] bgTrunc_i_add31_cnn220_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_cnn211_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_cnn214_sel_x_b;
    wire [64:0] bgTrunc_i_unnamed_cnn216_sel_x_b;
    wire [63:0] dupName_0_c_i64_1gr_x_q;
    wire [64:0] i_unnamed_cnn215_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg6_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg8_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg15_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg18_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg21_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg24_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg25_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg26_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg27_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg28_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg29_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg30_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg31_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg32_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg33_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg34_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg35_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg36_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg37_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg38_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg39_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg40_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg41_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg42_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg43_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg44_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg45_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg46_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg47_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg48_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg49_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg50_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg51_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg52_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg53_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg54_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg55_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg56_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg57_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg58_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg59_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg60_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg61_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg62_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg63_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg64_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg65_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg66_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg67_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg68_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg69_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg70_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg71_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg72_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg73_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg74_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg75_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg76_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg77_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg78_q;
    reg [0:0] redist0_sync_in_aunroll_x_in_c0_eni2793_1_1_q;
    reg [0:0] redist1_sync_in_aunroll_x_in_c0_eni2793_1_4_q;
    reg [0:0] redist1_sync_in_aunroll_x_in_c0_eni2793_1_4_delay_0;
    reg [0:0] redist1_sync_in_aunroll_x_in_c0_eni2793_1_4_delay_1;
    reg [0:0] redist2_sync_in_aunroll_x_in_c0_eni2793_1_6_q;
    reg [0:0] redist2_sync_in_aunroll_x_in_c0_eni2793_1_6_delay_0;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_q;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_delay_0;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_delay_1;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni2793_2_7_q;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni2793_2_7_delay_0;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni2793_2_7_delay_1;
    reg [0:0] redist5_sync_in_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist5_sync_in_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist5_sync_in_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist6_sync_in_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist6_sync_in_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist7_sync_in_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist8_sync_in_aunroll_x_in_i_valid_7_q;
    reg [63:0] redist9_bgTrunc_i_add31_cnn220_sel_x_b_1_q;
    reg [63:0] redist10_bgTrunc_i_add31_cnn220_sel_x_b_2_q;
    reg [63:0] redist11_bgTrunc_i_add31_cnn220_sel_x_b_4_q;
    reg [63:0] redist11_bgTrunc_i_add31_cnn220_sel_x_b_4_delay_0;
    reg [63:0] redist12_i_unnamed_cnn215_vt_select_63_b_1_q;
    reg [7:0] redist13_i_unnamed_cnn211_vt_select_7_b_1_q;
    reg [63:0] redist14_i_unnamed_cnn211_vt_join_q_1_q;
    reg [7:0] redist15_i_umax_cnn210_vt_select_7_b_1_q;
    reg [7:0] redist16_i_spec_select50_cnn222_vt_select_7_b_1_q;
    reg [63:0] redist17_i_fpgaindvars_iv1673_replace_phi_cnn208_q_1_q;
    reg [63:0] redist18_i_fpgaindvars_iv1673_replace_phi_cnn208_q_2_q;
    reg [63:0] redist19_i_fpgaindvars_iv1671_replace_phi_cnn204_q_2_q;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_inputreg0_q;


    // redist5_sync_in_aunroll_x_in_i_valid_3(DELAY,372)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_sync_in_aunroll_x_in_i_valid_3_delay_0 <= '0;
        end
        else
        begin
            redist5_sync_in_aunroll_x_in_i_valid_3_delay_0 <= in_i_valid;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_in_aunroll_x_in_i_valid_3_delay_1 <= redist5_sync_in_aunroll_x_in_i_valid_3_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_sync_in_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist5_sync_in_aunroll_x_in_i_valid_3_q <= redist5_sync_in_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // redist6_sync_in_aunroll_x_in_i_valid_5(DELAY,373)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_in_aunroll_x_in_i_valid_5_delay_0 <= redist5_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist6_sync_in_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist6_sync_in_aunroll_x_in_i_valid_5_q <= redist6_sync_in_aunroll_x_in_i_valid_5_delay_0;
        end
    end

    // redist7_sync_in_aunroll_x_in_i_valid_6(DELAY,374)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_in_aunroll_x_in_i_valid_6_q <= redist6_sync_in_aunroll_x_in_i_valid_5_q;
        end
    end

    // valid_fanout_reg7(REG,290)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= redist7_sync_in_aunroll_x_in_i_valid_6_q;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // c_i64_1gr(CONSTANT,10)
    assign c_i64_1gr_q = 64'b1111111111111111111111111111111111111111111111111111111111111111;

    // valid_fanout_reg1(REG,284)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= redist6_sync_in_aunroll_x_in_i_valid_5_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167757_cnn194(BLACKBOX,22)@7
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167757_195 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167757_cnn194 (
        .in_intel_reserved_ffwd_95_0(in_intel_reserved_ffwd_95_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_95_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167757_cnn194_out_dest_data_out_95_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_in_aunroll_x_in_c0_eni2793_1_1(DELAY,367)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_in_aunroll_x_in_c0_eni2793_1_1_q <= in_c0_eni2793_1;
        end
    end

    // redist1_sync_in_aunroll_x_in_c0_eni2793_1_4(DELAY,368)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_in_aunroll_x_in_c0_eni2793_1_4_delay_0 <= redist0_sync_in_aunroll_x_in_c0_eni2793_1_1_q;
            redist1_sync_in_aunroll_x_in_c0_eni2793_1_4_delay_1 <= redist1_sync_in_aunroll_x_in_c0_eni2793_1_4_delay_0;
            redist1_sync_in_aunroll_x_in_c0_eni2793_1_4_q <= redist1_sync_in_aunroll_x_in_c0_eni2793_1_4_delay_1;
        end
    end

    // redist2_sync_in_aunroll_x_in_c0_eni2793_1_6(DELAY,369)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_in_aunroll_x_in_c0_eni2793_1_6_delay_0 <= redist1_sync_in_aunroll_x_in_c0_eni2793_1_4_q;
            redist2_sync_in_aunroll_x_in_c0_eni2793_1_6_q <= redist2_sync_in_aunroll_x_in_c0_eni2793_1_6_delay_0;
        end
    end

    // i_fpgaindvars_iv1676_replace_phi_cnn197(MUX,17)@7 + 1
    assign i_fpgaindvars_iv1676_replace_phi_cnn197_s = redist2_sync_in_aunroll_x_in_c0_eni2793_1_6_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_fpgaindvars_iv1676_replace_phi_cnn197_s)
                1'b0 : i_fpgaindvars_iv1676_replace_phi_cnn197_q <= i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167757_cnn194_out_dest_data_out_95_0;
                1'b1 : i_fpgaindvars_iv1676_replace_phi_cnn197_q <= c_i64_1gr_q;
                default : i_fpgaindvars_iv1676_replace_phi_cnn197_q <= 64'b0;
            endcase
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn31_cnn229(BLACKBOX,91)@8
    // out out_intel_reserved_ffwd_20_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_31_cnn230 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn31_cnn229 (
        .in_enable_in(VCC_q),
        .in_src_data_in_20_0(i_fpgaindvars_iv1676_replace_phi_cnn197_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn31_cnn229_out_intel_reserved_ffwd_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,120)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn31_cnn229_out_intel_reserved_ffwd_20_0;

    // valid_fanout_reg8(REG,291)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= redist6_sync_in_aunroll_x_in_i_valid_5_q;
        end
    end

    // dupName_0_c_i64_1gr_x(CONSTANT,127)
    assign dupName_0_c_i64_1gr_x_q = 64'b0000000000000000000000000000000000000000000000000000000000000001;

    // valid_fanout_reg3(REG,286)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= redist5_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167254_cnn201(BLACKBOX,20)@5
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167254_202 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167254_cnn201 (
        .in_intel_reserved_ffwd_93_0(in_intel_reserved_ffwd_93_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_93_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167254_cnn201_out_dest_data_out_93_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv1671_replace_phi_cnn204(MUX,15)@5 + 1
    assign i_fpgaindvars_iv1671_replace_phi_cnn204_s = redist1_sync_in_aunroll_x_in_c0_eni2793_1_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_fpgaindvars_iv1671_replace_phi_cnn204_s)
                1'b0 : i_fpgaindvars_iv1671_replace_phi_cnn204_q <= i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167254_cnn201_out_dest_data_out_93_0;
                1'b1 : i_fpgaindvars_iv1671_replace_phi_cnn204_q <= dupName_0_c_i64_1gr_x_q;
                default : i_fpgaindvars_iv1671_replace_phi_cnn204_q <= 64'b0;
            endcase
        end
    end

    // redist19_i_fpgaindvars_iv1671_replace_phi_cnn204_q_2(DELAY,386)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_fpgaindvars_iv1671_replace_phi_cnn204_q_2_q <= i_fpgaindvars_iv1671_replace_phi_cnn204_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn32_cnn232(BLACKBOX,92)@7
    // out out_intel_reserved_ffwd_21_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_32_cnn233 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn32_cnn232 (
        .in_enable_in(VCC_q),
        .in_src_data_in_21_0(redist19_i_fpgaindvars_iv1671_replace_phi_cnn204_q_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn32_cnn232_out_intel_reserved_ffwd_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,129)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn32_cnn232_out_intel_reserved_ffwd_21_0;

    // valid_fanout_reg9(REG,292)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= in_i_valid;
        end
    end

    // valid_fanout_reg4(REG,287)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_unnamed_cnn29_cnn205(BLACKBOX,23)@2
    cnn_i_llvm_fpga_ffwd_dest_i64_unnamed_29_cnn206 thei_llvm_fpga_ffwd_dest_i64_unnamed_cnn29_cnn205 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i64_unnamed_cnn29_cnn205_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,285)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167456_cnn198(BLACKBOX,21)@2
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167456_199 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167456_cnn198 (
        .in_intel_reserved_ffwd_94_0(in_intel_reserved_ffwd_94_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_94_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167456_cnn198_out_dest_data_out_94_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv1673_replace_phi_cnn208(MUX,16)@2
    assign i_fpgaindvars_iv1673_replace_phi_cnn208_s = redist0_sync_in_aunroll_x_in_c0_eni2793_1_1_q;
    always @(i_fpgaindvars_iv1673_replace_phi_cnn208_s or i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167456_cnn198_out_dest_data_out_94_0 or i_llvm_fpga_ffwd_dest_i64_unnamed_cnn29_cnn205_out_dest_data_out_3_0)
    begin
        unique case (i_fpgaindvars_iv1673_replace_phi_cnn208_s)
            1'b0 : i_fpgaindvars_iv1673_replace_phi_cnn208_q = i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next167456_cnn198_out_dest_data_out_94_0;
            1'b1 : i_fpgaindvars_iv1673_replace_phi_cnn208_q = i_llvm_fpga_ffwd_dest_i64_unnamed_cnn29_cnn205_out_dest_data_out_3_0;
            default : i_fpgaindvars_iv1673_replace_phi_cnn208_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn33_cnn235(BLACKBOX,93)@2
    // out out_intel_reserved_ffwd_23_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_33_cnn236 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn33_cnn235 (
        .in_enable_in(VCC_q),
        .in_src_data_in_23_0(i_fpgaindvars_iv1673_replace_phi_cnn208_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_23_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn33_cnn235_out_intel_reserved_ffwd_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,132)
    assign out_intel_reserved_ffwd_23_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn33_cnn235_out_intel_reserved_ffwd_23_0;

    // redist8_sync_in_aunroll_x_in_i_valid_7(DELAY,375)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist8_sync_in_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist8_sync_in_aunroll_x_in_i_valid_7_q <= redist7_sync_in_aunroll_x_in_i_valid_6_q;
        end
    end

    // valid_fanout_reg10(REG,293)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // c_i65_1gr(CONSTANT,11)
    assign c_i65_1gr_q = 65'b11111111111111111111111111111111111111111111111111111111111111111;

    // i_spec_select50_cnn222_vt_const_63(CONSTANT,97)
    assign i_spec_select50_cnn222_vt_const_63_q = 56'b00000000000000000000000000000000000000000000000000000000;

    // i_umax_cnn210_vt_const_63(CONSTANT,102)
    assign i_umax_cnn210_vt_const_63_q = 56'b11111111111111111111111111111111111111111111111111111111;

    // redist17_i_fpgaindvars_iv1673_replace_phi_cnn208_q_1(DELAY,384)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_fpgaindvars_iv1673_replace_phi_cnn208_q_1_q <= i_fpgaindvars_iv1673_replace_phi_cnn208_q;
        end
    end

    // redist18_i_fpgaindvars_iv1673_replace_phi_cnn208_q_2(DELAY,385)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_fpgaindvars_iv1673_replace_phi_cnn208_q_2_q <= redist17_i_fpgaindvars_iv1673_replace_phi_cnn208_q_1_q;
        end
    end

    // c_i64_129(CONSTANT,9)
    assign c_i64_129_q = 64'b1111111111111111111111111111111111111111111111111111111101111111;

    // i_unnamed_cnn209(COMPARE,105)@3 + 1
    assign i_unnamed_cnn209_a = {2'b00, c_i64_129_q};
    assign i_unnamed_cnn209_b = {2'b00, redist17_i_fpgaindvars_iv1673_replace_phi_cnn208_q_1_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_unnamed_cnn209_o <= $unsigned(i_unnamed_cnn209_a) - $unsigned(i_unnamed_cnn209_b);
        end
    end
    assign i_unnamed_cnn209_c[0] = i_unnamed_cnn209_o[65];

    // i_umax_cnn210(MUX,101)@4
    assign i_umax_cnn210_s = i_unnamed_cnn209_c;
    always @(i_umax_cnn210_s or c_i64_129_q or redist18_i_fpgaindvars_iv1673_replace_phi_cnn208_q_2_q)
    begin
        unique case (i_umax_cnn210_s)
            1'b0 : i_umax_cnn210_q = c_i64_129_q;
            1'b1 : i_umax_cnn210_q = redist18_i_fpgaindvars_iv1673_replace_phi_cnn208_q_2_q;
            default : i_umax_cnn210_q = 64'b0;
        endcase
    end

    // i_umax_cnn210_vt_select_7(BITSELECT,104)@4
    assign i_umax_cnn210_vt_select_7_b = i_umax_cnn210_q[7:0];

    // redist15_i_umax_cnn210_vt_select_7_b_1(DELAY,382)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_umax_cnn210_vt_select_7_b_1_q <= i_umax_cnn210_vt_select_7_b;
        end
    end

    // i_umax_cnn210_vt_join(BITJOIN,103)@5
    assign i_umax_cnn210_vt_join_q = {i_umax_cnn210_vt_const_63_q, redist15_i_umax_cnn210_vt_select_7_b_1_q};

    // i_unnamed_cnn211(SUB,106)@5
    assign i_unnamed_cnn211_a = {1'b0, c_i64_1gr_q};
    assign i_unnamed_cnn211_b = {1'b0, i_umax_cnn210_vt_join_q};
    assign i_unnamed_cnn211_o = $unsigned(i_unnamed_cnn211_a) - $unsigned(i_unnamed_cnn211_b);
    assign i_unnamed_cnn211_q = i_unnamed_cnn211_o[64:0];

    // bgTrunc_i_unnamed_cnn211_sel_x(BITSELECT,123)@5
    assign bgTrunc_i_unnamed_cnn211_sel_x_b = i_unnamed_cnn211_q[63:0];

    // i_unnamed_cnn211_vt_select_7(BITSELECT,109)@5
    assign i_unnamed_cnn211_vt_select_7_b = bgTrunc_i_unnamed_cnn211_sel_x_b[7:0];

    // redist13_i_unnamed_cnn211_vt_select_7_b_1(DELAY,380)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_unnamed_cnn211_vt_select_7_b_1_q <= i_unnamed_cnn211_vt_select_7_b;
        end
    end

    // i_unnamed_cnn211_vt_join(BITJOIN,108)@6
    assign i_unnamed_cnn211_vt_join_q = {i_spec_select50_cnn222_vt_const_63_q, redist13_i_unnamed_cnn211_vt_select_7_b_1_q};

    // redist14_i_unnamed_cnn211_vt_join_q_1(DELAY,381)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_unnamed_cnn211_vt_join_q_1_q <= i_unnamed_cnn211_vt_join_q;
        end
    end

    // i_unnamed_cnn212(COMPARE,110)@6 + 1
    assign i_unnamed_cnn212_a = {2'b00, i_unnamed_cnn211_vt_join_q};
    assign i_unnamed_cnn212_b = {2'b00, i_fpgaindvars_iv1671_replace_phi_cnn204_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_unnamed_cnn212_o <= $unsigned(i_unnamed_cnn212_a) - $unsigned(i_unnamed_cnn212_b);
        end
    end
    assign i_unnamed_cnn212_c[0] = i_unnamed_cnn212_o[65];

    // i_umax1675_cnn213(MUX,100)@7 + 1
    assign i_umax1675_cnn213_s = i_unnamed_cnn212_c;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_umax1675_cnn213_s)
                1'b0 : i_umax1675_cnn213_q <= redist14_i_unnamed_cnn211_vt_join_q_1_q;
                1'b1 : i_umax1675_cnn213_q <= redist19_i_fpgaindvars_iv1671_replace_phi_cnn204_q_2_q;
                default : i_umax1675_cnn213_q <= 64'b0;
            endcase
        end
    end

    // i_unnamed_cnn214(ADD,111)@8
    assign i_unnamed_cnn214_a = {1'b0, i_umax1675_cnn213_q};
    assign i_unnamed_cnn214_b = {1'b0, i_fpgaindvars_iv1676_replace_phi_cnn197_q};
    assign i_unnamed_cnn214_o = $unsigned(i_unnamed_cnn214_a) + $unsigned(i_unnamed_cnn214_b);
    assign i_unnamed_cnn214_q = i_unnamed_cnn214_o[64:0];

    // bgTrunc_i_unnamed_cnn214_sel_x(BITSELECT,124)@8
    assign bgTrunc_i_unnamed_cnn214_sel_x_b = i_unnamed_cnn214_q[63:0];

    // i_unnamed_cnn215_sel_x(BITSELECT,280)@8
    assign i_unnamed_cnn215_sel_x_b = {1'b0, bgTrunc_i_unnamed_cnn214_sel_x_b[63:0]};

    // i_unnamed_cnn215_vt_select_63(BITSELECT,115)@8
    assign i_unnamed_cnn215_vt_select_63_b = i_unnamed_cnn215_sel_x_b[63:0];

    // redist12_i_unnamed_cnn215_vt_select_63_b_1(DELAY,379)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_unnamed_cnn215_vt_select_63_b_1_q <= i_unnamed_cnn215_vt_select_63_b;
        end
    end

    // i_unnamed_cnn215_vt_join(BITJOIN,114)@9
    assign i_unnamed_cnn215_vt_join_q = {GND_q, redist12_i_unnamed_cnn215_vt_select_63_b_1_q};

    // i_unnamed_cnn216(ADD,116)@9
    assign i_unnamed_cnn216_a = {1'b0, i_unnamed_cnn215_vt_join_q};
    assign i_unnamed_cnn216_b = {1'b0, c_i65_1gr_q};
    assign i_unnamed_cnn216_o = $unsigned(i_unnamed_cnn216_a) + $unsigned(i_unnamed_cnn216_b);
    assign i_unnamed_cnn216_q = i_unnamed_cnn216_o[65:0];

    // bgTrunc_i_unnamed_cnn216_sel_x(BITSELECT,125)@9
    assign bgTrunc_i_unnamed_cnn216_sel_x_b = i_unnamed_cnn216_q[64:0];

    // i_llvm_fpga_ffwd_source_i65_unnamed_cnn34_cnn238(BLACKBOX,95)@9
    // out out_intel_reserved_ffwd_24_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i65_unnamed_34_cnn239 thei_llvm_fpga_ffwd_source_i65_unnamed_cnn34_cnn238 (
        .in_enable_in(VCC_q),
        .in_src_data_in_24_0(bgTrunc_i_unnamed_cnn216_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_24_0(i_llvm_fpga_ffwd_source_i65_unnamed_cnn34_cnn238_out_intel_reserved_ffwd_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,135)
    assign out_intel_reserved_ffwd_24_0 = i_llvm_fpga_ffwd_source_i65_unnamed_cnn34_cnn238_out_intel_reserved_ffwd_24_0;

    // valid_fanout_reg11(REG,294)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= redist5_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // valid_fanout_reg5(REG,288)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= redist5_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_conv9827_cnn217(BLACKBOX,19)@5
    cnn_i_llvm_fpga_ffwd_dest_i64_conv9827_218 thei_llvm_fpga_ffwd_dest_i64_conv9827_cnn217 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i64_conv9827_cnn217_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_inputreg0(DELAY,387)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_inputreg0_q <= in_c0_eni2793_2;
        end
    end

    // redist3_sync_in_aunroll_x_in_c0_eni2793_2_4(DELAY,370)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_delay_0 <= redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_inputreg0_q;
            redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_delay_1 <= redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_delay_0;
            redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_q <= redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_delay_1;
        end
    end

    // i_add31_cnn220(ADD,12)@5
    assign i_add31_cnn220_a = {1'b0, redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_q};
    assign i_add31_cnn220_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_conv9827_cnn217_out_dest_data_out_1_0};
    assign i_add31_cnn220_o = $unsigned(i_add31_cnn220_a) + $unsigned(i_add31_cnn220_b);
    assign i_add31_cnn220_q = i_add31_cnn220_o[64:0];

    // bgTrunc_i_add31_cnn220_sel_x(BITSELECT,122)@5
    assign bgTrunc_i_add31_cnn220_sel_x_b = i_add31_cnn220_q[63:0];

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn35_cnn241(BLACKBOX,94)@5
    // out out_intel_reserved_ffwd_25_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_35_cnn242 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn35_cnn241 (
        .in_enable_in(VCC_q),
        .in_src_data_in_25_0(bgTrunc_i_add31_cnn220_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_25_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn35_cnn241_out_intel_reserved_ffwd_25_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,138)
    assign out_intel_reserved_ffwd_25_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn35_cnn241_out_intel_reserved_ffwd_25_0;

    // valid_fanout_reg12(REG,295)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // redist9_bgTrunc_i_add31_cnn220_sel_x_b_1(DELAY,376)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_bgTrunc_i_add31_cnn220_sel_x_b_1_q <= bgTrunc_i_add31_cnn220_sel_x_b;
        end
    end

    // redist10_bgTrunc_i_add31_cnn220_sel_x_b_2(DELAY,377)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_bgTrunc_i_add31_cnn220_sel_x_b_2_q <= redist9_bgTrunc_i_add31_cnn220_sel_x_b_1_q;
        end
    end

    // c_i64_128(CONSTANT,8)
    assign c_i64_128_q = 64'b0000000000000000000000000000000000000000000000000000000010000000;

    // i_cmp32_cnn221(COMPARE,13)@6 + 1
    assign i_cmp32_cnn221_a = {2'b00, redist9_bgTrunc_i_add31_cnn220_sel_x_b_1_q};
    assign i_cmp32_cnn221_b = {2'b00, c_i64_128_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_cmp32_cnn221_o <= $unsigned(i_cmp32_cnn221_a) - $unsigned(i_cmp32_cnn221_b);
        end
    end
    assign i_cmp32_cnn221_c[0] = i_cmp32_cnn221_o[65];

    // i_spec_select50_cnn222(MUX,96)@7
    assign i_spec_select50_cnn222_s = i_cmp32_cnn221_c;
    always @(i_spec_select50_cnn222_s or c_i64_128_q or redist10_bgTrunc_i_add31_cnn220_sel_x_b_2_q)
    begin
        unique case (i_spec_select50_cnn222_s)
            1'b0 : i_spec_select50_cnn222_q = c_i64_128_q;
            1'b1 : i_spec_select50_cnn222_q = redist10_bgTrunc_i_add31_cnn220_sel_x_b_2_q;
            default : i_spec_select50_cnn222_q = 64'b0;
        endcase
    end

    // i_spec_select50_cnn222_vt_select_7(BITSELECT,99)@7
    assign i_spec_select50_cnn222_vt_select_7_b = i_spec_select50_cnn222_q[7:0];

    // redist16_i_spec_select50_cnn222_vt_select_7_b_1(DELAY,383)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_spec_select50_cnn222_vt_select_7_b_1_q <= i_spec_select50_cnn222_vt_select_7_b;
        end
    end

    // i_spec_select50_cnn222_vt_join(BITJOIN,98)@8
    assign i_spec_select50_cnn222_vt_join_q = {i_spec_select50_cnn222_vt_const_63_q, redist16_i_spec_select50_cnn222_vt_select_7_b_1_q};

    // redist4_sync_in_aunroll_x_in_c0_eni2793_2_7(DELAY,371)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_in_aunroll_x_in_c0_eni2793_2_7_delay_0 <= redist3_sync_in_aunroll_x_in_c0_eni2793_2_4_q;
            redist4_sync_in_aunroll_x_in_c0_eni2793_2_7_delay_1 <= redist4_sync_in_aunroll_x_in_c0_eni2793_2_7_delay_0;
            redist4_sync_in_aunroll_x_in_c0_eni2793_2_7_q <= redist4_sync_in_aunroll_x_in_c0_eni2793_2_7_delay_1;
        end
    end

    // i_cmp4057_cnn223(COMPARE,14)@8 + 1
    assign i_cmp4057_cnn223_a = {2'b00, redist4_sync_in_aunroll_x_in_c0_eni2793_2_7_q};
    assign i_cmp4057_cnn223_b = {2'b00, i_spec_select50_cnn222_vt_join_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_cmp4057_cnn223_o <= $unsigned(i_cmp4057_cnn223_a) - $unsigned(i_cmp4057_cnn223_b);
        end
    end
    assign i_cmp4057_cnn223_c[0] = i_cmp4057_cnn223_o[65];

    // valid_fanout_reg6(REG,289)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn30_cnn224(BLACKBOX,18)@9
    cnn_i_llvm_fpga_ffwd_dest_i1_unnamed_30_cnn225 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn30_cnn224 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn30_cnn224_out_dest_data_out_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_cnn227(LOGICAL,117)@9
    assign i_unnamed_cnn227_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn30_cnn224_out_dest_data_out_19_0 & i_cmp4057_cnn223_c;

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn36_cnn244(BLACKBOX,27)@9
    // out out_intel_reserved_ffwd_26_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_36_cnn245 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn36_cnn244 (
        .in_enable_in(VCC_q),
        .in_src_data_in_26_0(i_unnamed_cnn227_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_26_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn36_cnn244_out_intel_reserved_ffwd_26_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,141)
    assign out_intel_reserved_ffwd_26_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn36_cnn244_out_intel_reserved_ffwd_26_0;

    // valid_fanout_reg13(REG,296)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_unnamed_cnn228(LOGICAL,118)@9
    assign i_unnamed_cnn228_q = i_unnamed_cnn227_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn37_cnn247(BLACKBOX,28)@9
    // out out_intel_reserved_ffwd_27_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_37_cnn248 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn37_cnn247 (
        .in_enable_in(VCC_q),
        .in_src_data_in_27_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_intel_reserved_ffwd_27_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn37_cnn247_out_intel_reserved_ffwd_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,143)
    assign out_intel_reserved_ffwd_27_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn37_cnn247_out_intel_reserved_ffwd_27_0;

    // valid_fanout_reg14(REG,297)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn38_cnn250(BLACKBOX,29)@9
    // out out_intel_reserved_ffwd_28_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_38_cnn251 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn38_cnn250 (
        .in_enable_in(VCC_q),
        .in_src_data_in_28_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_intel_reserved_ffwd_28_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn38_cnn250_out_intel_reserved_ffwd_28_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,145)
    assign out_intel_reserved_ffwd_28_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn38_cnn250_out_intel_reserved_ffwd_28_0;

    // valid_fanout_reg15(REG,298)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg15_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn39_cnn253(BLACKBOX,30)@9
    // out out_intel_reserved_ffwd_29_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_39_cnn254 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn39_cnn253 (
        .in_enable_in(VCC_q),
        .in_src_data_in_29_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_intel_reserved_ffwd_29_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn39_cnn253_out_intel_reserved_ffwd_29_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,147)
    assign out_intel_reserved_ffwd_29_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn39_cnn253_out_intel_reserved_ffwd_29_0;

    // valid_fanout_reg16(REG,299)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn40_cnn256(BLACKBOX,31)@9
    // out out_intel_reserved_ffwd_30_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_40_cnn257 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn40_cnn256 (
        .in_enable_in(VCC_q),
        .in_src_data_in_30_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_intel_reserved_ffwd_30_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn40_cnn256_out_intel_reserved_ffwd_30_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,149)
    assign out_intel_reserved_ffwd_30_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn40_cnn256_out_intel_reserved_ffwd_30_0;

    // valid_fanout_reg17(REG,300)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn41_cnn259(BLACKBOX,32)@9
    // out out_intel_reserved_ffwd_31_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_41_cnn260 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn41_cnn259 (
        .in_enable_in(VCC_q),
        .in_src_data_in_31_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_intel_reserved_ffwd_31_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn41_cnn259_out_intel_reserved_ffwd_31_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,151)
    assign out_intel_reserved_ffwd_31_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn41_cnn259_out_intel_reserved_ffwd_31_0;

    // valid_fanout_reg18(REG,301)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg18_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn42_cnn262(BLACKBOX,33)@9
    // out out_intel_reserved_ffwd_32_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_42_cnn263 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn42_cnn262 (
        .in_enable_in(VCC_q),
        .in_src_data_in_32_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_intel_reserved_ffwd_32_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn42_cnn262_out_intel_reserved_ffwd_32_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,153)
    assign out_intel_reserved_ffwd_32_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn42_cnn262_out_intel_reserved_ffwd_32_0;

    // valid_fanout_reg19(REG,302)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn43_cnn265(BLACKBOX,34)@9
    // out out_intel_reserved_ffwd_33_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_43_cnn266 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn43_cnn265 (
        .in_enable_in(VCC_q),
        .in_src_data_in_33_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_intel_reserved_ffwd_33_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn43_cnn265_out_intel_reserved_ffwd_33_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,155)
    assign out_intel_reserved_ffwd_33_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn43_cnn265_out_intel_reserved_ffwd_33_0;

    // valid_fanout_reg20(REG,303)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn44_cnn268(BLACKBOX,35)@9
    // out out_intel_reserved_ffwd_34_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_44_cnn269 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn44_cnn268 (
        .in_enable_in(VCC_q),
        .in_src_data_in_34_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_intel_reserved_ffwd_34_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn44_cnn268_out_intel_reserved_ffwd_34_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,157)
    assign out_intel_reserved_ffwd_34_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn44_cnn268_out_intel_reserved_ffwd_34_0;

    // valid_fanout_reg21(REG,304)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg21_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn45_cnn271(BLACKBOX,36)@9
    // out out_intel_reserved_ffwd_35_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_45_cnn272 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn45_cnn271 (
        .in_enable_in(VCC_q),
        .in_src_data_in_35_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_intel_reserved_ffwd_35_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn45_cnn271_out_intel_reserved_ffwd_35_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,159)
    assign out_intel_reserved_ffwd_35_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn45_cnn271_out_intel_reserved_ffwd_35_0;

    // valid_fanout_reg22(REG,305)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn46_cnn274(BLACKBOX,37)@9
    // out out_intel_reserved_ffwd_36_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_46_cnn275 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn46_cnn274 (
        .in_enable_in(VCC_q),
        .in_src_data_in_36_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_intel_reserved_ffwd_36_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn46_cnn274_out_intel_reserved_ffwd_36_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,161)
    assign out_intel_reserved_ffwd_36_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn46_cnn274_out_intel_reserved_ffwd_36_0;

    // valid_fanout_reg23(REG,306)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn47_cnn277(BLACKBOX,38)@9
    // out out_intel_reserved_ffwd_37_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_47_cnn278 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn47_cnn277 (
        .in_enable_in(VCC_q),
        .in_src_data_in_37_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_intel_reserved_ffwd_37_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn47_cnn277_out_intel_reserved_ffwd_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_15_regfree_osync_x(GPOUT,163)
    assign out_intel_reserved_ffwd_37_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn47_cnn277_out_intel_reserved_ffwd_37_0;

    // valid_fanout_reg24(REG,307)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg24_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn48_cnn280(BLACKBOX,39)@9
    // out out_intel_reserved_ffwd_38_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_48_cnn281 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn48_cnn280 (
        .in_enable_in(VCC_q),
        .in_src_data_in_38_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_intel_reserved_ffwd_38_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn48_cnn280_out_intel_reserved_ffwd_38_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_16_regfree_osync_x(GPOUT,165)
    assign out_intel_reserved_ffwd_38_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn48_cnn280_out_intel_reserved_ffwd_38_0;

    // valid_fanout_reg25(REG,308)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg25_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn49_cnn283(BLACKBOX,40)@9
    // out out_intel_reserved_ffwd_39_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_49_cnn284 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn49_cnn283 (
        .in_enable_in(VCC_q),
        .in_src_data_in_39_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_intel_reserved_ffwd_39_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn49_cnn283_out_intel_reserved_ffwd_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_17_regfree_osync_x(GPOUT,167)
    assign out_intel_reserved_ffwd_39_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn49_cnn283_out_intel_reserved_ffwd_39_0;

    // valid_fanout_reg26(REG,309)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg26_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn50_cnn286(BLACKBOX,41)@9
    // out out_intel_reserved_ffwd_40_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_50_cnn287 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn50_cnn286 (
        .in_enable_in(VCC_q),
        .in_src_data_in_40_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_intel_reserved_ffwd_40_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn50_cnn286_out_intel_reserved_ffwd_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_18_regfree_osync_x(GPOUT,169)
    assign out_intel_reserved_ffwd_40_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn50_cnn286_out_intel_reserved_ffwd_40_0;

    // valid_fanout_reg27(REG,310)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg27_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn51_cnn289(BLACKBOX,42)@9
    // out out_intel_reserved_ffwd_41_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_51_cnn290 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn51_cnn289 (
        .in_enable_in(VCC_q),
        .in_src_data_in_41_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_intel_reserved_ffwd_41_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn51_cnn289_out_intel_reserved_ffwd_41_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_19_regfree_osync_x(GPOUT,171)
    assign out_intel_reserved_ffwd_41_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn51_cnn289_out_intel_reserved_ffwd_41_0;

    // valid_fanout_reg28(REG,311)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg28_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn52_cnn292(BLACKBOX,43)@9
    // out out_intel_reserved_ffwd_42_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_52_cnn293 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn52_cnn292 (
        .in_enable_in(VCC_q),
        .in_src_data_in_42_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_intel_reserved_ffwd_42_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn52_cnn292_out_intel_reserved_ffwd_42_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_20_regfree_osync_x(GPOUT,173)
    assign out_intel_reserved_ffwd_42_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn52_cnn292_out_intel_reserved_ffwd_42_0;

    // valid_fanout_reg29(REG,312)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg29_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn53_cnn295(BLACKBOX,44)@9
    // out out_intel_reserved_ffwd_43_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_53_cnn296 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn53_cnn295 (
        .in_enable_in(VCC_q),
        .in_src_data_in_43_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_intel_reserved_ffwd_43_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn53_cnn295_out_intel_reserved_ffwd_43_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_21_regfree_osync_x(GPOUT,175)
    assign out_intel_reserved_ffwd_43_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn53_cnn295_out_intel_reserved_ffwd_43_0;

    // valid_fanout_reg30(REG,313)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg30_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn54_cnn298(BLACKBOX,45)@9
    // out out_intel_reserved_ffwd_44_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_54_cnn299 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn54_cnn298 (
        .in_enable_in(VCC_q),
        .in_src_data_in_44_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_intel_reserved_ffwd_44_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn54_cnn298_out_intel_reserved_ffwd_44_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_22_regfree_osync_x(GPOUT,177)
    assign out_intel_reserved_ffwd_44_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn54_cnn298_out_intel_reserved_ffwd_44_0;

    // valid_fanout_reg31(REG,314)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg31_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn55_cnn301(BLACKBOX,46)@9
    // out out_intel_reserved_ffwd_45_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_55_cnn302 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn55_cnn301 (
        .in_enable_in(VCC_q),
        .in_src_data_in_45_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_intel_reserved_ffwd_45_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn55_cnn301_out_intel_reserved_ffwd_45_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_23_regfree_osync_x(GPOUT,179)
    assign out_intel_reserved_ffwd_45_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn55_cnn301_out_intel_reserved_ffwd_45_0;

    // valid_fanout_reg32(REG,315)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg32_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn56_cnn304(BLACKBOX,47)@9
    // out out_intel_reserved_ffwd_46_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_56_cnn305 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn56_cnn304 (
        .in_enable_in(VCC_q),
        .in_src_data_in_46_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_intel_reserved_ffwd_46_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn56_cnn304_out_intel_reserved_ffwd_46_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_24_regfree_osync_x(GPOUT,181)
    assign out_intel_reserved_ffwd_46_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn56_cnn304_out_intel_reserved_ffwd_46_0;

    // valid_fanout_reg33(REG,316)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg33_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn57_cnn307(BLACKBOX,48)@9
    // out out_intel_reserved_ffwd_47_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_57_cnn308 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn57_cnn307 (
        .in_enable_in(VCC_q),
        .in_src_data_in_47_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_intel_reserved_ffwd_47_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn57_cnn307_out_intel_reserved_ffwd_47_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_25_regfree_osync_x(GPOUT,183)
    assign out_intel_reserved_ffwd_47_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn57_cnn307_out_intel_reserved_ffwd_47_0;

    // valid_fanout_reg34(REG,317)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg34_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn58_cnn310(BLACKBOX,49)@9
    // out out_intel_reserved_ffwd_48_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_58_cnn311 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn58_cnn310 (
        .in_enable_in(VCC_q),
        .in_src_data_in_48_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_intel_reserved_ffwd_48_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn58_cnn310_out_intel_reserved_ffwd_48_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_26_regfree_osync_x(GPOUT,185)
    assign out_intel_reserved_ffwd_48_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn58_cnn310_out_intel_reserved_ffwd_48_0;

    // valid_fanout_reg35(REG,318)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg35_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn59_cnn313(BLACKBOX,50)@9
    // out out_intel_reserved_ffwd_49_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_59_cnn314 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn59_cnn313 (
        .in_enable_in(VCC_q),
        .in_src_data_in_49_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_intel_reserved_ffwd_49_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn59_cnn313_out_intel_reserved_ffwd_49_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_27_regfree_osync_x(GPOUT,187)
    assign out_intel_reserved_ffwd_49_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn59_cnn313_out_intel_reserved_ffwd_49_0;

    // valid_fanout_reg36(REG,319)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg36_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn60_cnn316(BLACKBOX,51)@9
    // out out_intel_reserved_ffwd_50_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_60_cnn317 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn60_cnn316 (
        .in_enable_in(VCC_q),
        .in_src_data_in_50_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_intel_reserved_ffwd_50_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn60_cnn316_out_intel_reserved_ffwd_50_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_28_regfree_osync_x(GPOUT,189)
    assign out_intel_reserved_ffwd_50_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn60_cnn316_out_intel_reserved_ffwd_50_0;

    // valid_fanout_reg37(REG,320)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg37_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn61_cnn319(BLACKBOX,52)@9
    // out out_intel_reserved_ffwd_51_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_61_cnn320 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn61_cnn319 (
        .in_enable_in(VCC_q),
        .in_src_data_in_51_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_intel_reserved_ffwd_51_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn61_cnn319_out_intel_reserved_ffwd_51_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_29_regfree_osync_x(GPOUT,191)
    assign out_intel_reserved_ffwd_51_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn61_cnn319_out_intel_reserved_ffwd_51_0;

    // valid_fanout_reg38(REG,321)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg38_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn62_cnn322(BLACKBOX,53)@9
    // out out_intel_reserved_ffwd_52_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_62_cnn323 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn62_cnn322 (
        .in_enable_in(VCC_q),
        .in_src_data_in_52_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_intel_reserved_ffwd_52_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn62_cnn322_out_intel_reserved_ffwd_52_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_30_regfree_osync_x(GPOUT,193)
    assign out_intel_reserved_ffwd_52_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn62_cnn322_out_intel_reserved_ffwd_52_0;

    // valid_fanout_reg39(REG,322)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg39_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn63_cnn325(BLACKBOX,54)@9
    // out out_intel_reserved_ffwd_53_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_63_cnn326 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn63_cnn325 (
        .in_enable_in(VCC_q),
        .in_src_data_in_53_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_intel_reserved_ffwd_53_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn63_cnn325_out_intel_reserved_ffwd_53_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_31_regfree_osync_x(GPOUT,195)
    assign out_intel_reserved_ffwd_53_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn63_cnn325_out_intel_reserved_ffwd_53_0;

    // valid_fanout_reg40(REG,323)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg40_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn64_cnn328(BLACKBOX,55)@9
    // out out_intel_reserved_ffwd_54_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_64_cnn329 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn64_cnn328 (
        .in_enable_in(VCC_q),
        .in_src_data_in_54_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_intel_reserved_ffwd_54_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn64_cnn328_out_intel_reserved_ffwd_54_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_32_regfree_osync_x(GPOUT,197)
    assign out_intel_reserved_ffwd_54_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn64_cnn328_out_intel_reserved_ffwd_54_0;

    // valid_fanout_reg41(REG,324)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg41_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn65_cnn331(BLACKBOX,56)@9
    // out out_intel_reserved_ffwd_55_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_65_cnn332 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn65_cnn331 (
        .in_enable_in(VCC_q),
        .in_src_data_in_55_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_intel_reserved_ffwd_55_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn65_cnn331_out_intel_reserved_ffwd_55_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_33_regfree_osync_x(GPOUT,199)
    assign out_intel_reserved_ffwd_55_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn65_cnn331_out_intel_reserved_ffwd_55_0;

    // valid_fanout_reg42(REG,325)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg42_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn66_cnn334(BLACKBOX,57)@9
    // out out_intel_reserved_ffwd_56_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_66_cnn335 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn66_cnn334 (
        .in_enable_in(VCC_q),
        .in_src_data_in_56_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_intel_reserved_ffwd_56_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn66_cnn334_out_intel_reserved_ffwd_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_34_regfree_osync_x(GPOUT,201)
    assign out_intel_reserved_ffwd_56_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn66_cnn334_out_intel_reserved_ffwd_56_0;

    // valid_fanout_reg43(REG,326)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg43_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn67_cnn337(BLACKBOX,58)@9
    // out out_intel_reserved_ffwd_57_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_67_cnn338 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn67_cnn337 (
        .in_enable_in(VCC_q),
        .in_src_data_in_57_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_intel_reserved_ffwd_57_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn67_cnn337_out_intel_reserved_ffwd_57_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_35_regfree_osync_x(GPOUT,203)
    assign out_intel_reserved_ffwd_57_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn67_cnn337_out_intel_reserved_ffwd_57_0;

    // valid_fanout_reg44(REG,327)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg44_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn68_cnn340(BLACKBOX,59)@9
    // out out_intel_reserved_ffwd_58_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_68_cnn341 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn68_cnn340 (
        .in_enable_in(VCC_q),
        .in_src_data_in_58_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_intel_reserved_ffwd_58_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn68_cnn340_out_intel_reserved_ffwd_58_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_36_regfree_osync_x(GPOUT,205)
    assign out_intel_reserved_ffwd_58_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn68_cnn340_out_intel_reserved_ffwd_58_0;

    // valid_fanout_reg45(REG,328)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg45_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn69_cnn343(BLACKBOX,60)@9
    // out out_intel_reserved_ffwd_59_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_69_cnn344 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn69_cnn343 (
        .in_enable_in(VCC_q),
        .in_src_data_in_59_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_intel_reserved_ffwd_59_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn69_cnn343_out_intel_reserved_ffwd_59_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_37_regfree_osync_x(GPOUT,207)
    assign out_intel_reserved_ffwd_59_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn69_cnn343_out_intel_reserved_ffwd_59_0;

    // valid_fanout_reg46(REG,329)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg46_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn70_cnn346(BLACKBOX,61)@9
    // out out_intel_reserved_ffwd_60_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_70_cnn347 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn70_cnn346 (
        .in_enable_in(VCC_q),
        .in_src_data_in_60_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_intel_reserved_ffwd_60_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn70_cnn346_out_intel_reserved_ffwd_60_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_38_regfree_osync_x(GPOUT,209)
    assign out_intel_reserved_ffwd_60_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn70_cnn346_out_intel_reserved_ffwd_60_0;

    // valid_fanout_reg47(REG,330)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg47_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn71_cnn349(BLACKBOX,62)@9
    // out out_intel_reserved_ffwd_61_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_71_cnn350 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn71_cnn349 (
        .in_enable_in(VCC_q),
        .in_src_data_in_61_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_intel_reserved_ffwd_61_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn71_cnn349_out_intel_reserved_ffwd_61_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_39_regfree_osync_x(GPOUT,211)
    assign out_intel_reserved_ffwd_61_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn71_cnn349_out_intel_reserved_ffwd_61_0;

    // valid_fanout_reg48(REG,331)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg48_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn72_cnn352(BLACKBOX,63)@9
    // out out_intel_reserved_ffwd_62_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_72_cnn353 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn72_cnn352 (
        .in_enable_in(VCC_q),
        .in_src_data_in_62_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_intel_reserved_ffwd_62_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn72_cnn352_out_intel_reserved_ffwd_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_40_regfree_osync_x(GPOUT,213)
    assign out_intel_reserved_ffwd_62_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn72_cnn352_out_intel_reserved_ffwd_62_0;

    // valid_fanout_reg49(REG,332)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg49_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn73_cnn355(BLACKBOX,64)@9
    // out out_intel_reserved_ffwd_63_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_73_cnn356 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn73_cnn355 (
        .in_enable_in(VCC_q),
        .in_src_data_in_63_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_intel_reserved_ffwd_63_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn73_cnn355_out_intel_reserved_ffwd_63_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_41_regfree_osync_x(GPOUT,215)
    assign out_intel_reserved_ffwd_63_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn73_cnn355_out_intel_reserved_ffwd_63_0;

    // valid_fanout_reg50(REG,333)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg50_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn74_cnn358(BLACKBOX,65)@9
    // out out_intel_reserved_ffwd_64_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_74_cnn359 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn74_cnn358 (
        .in_enable_in(VCC_q),
        .in_src_data_in_64_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_intel_reserved_ffwd_64_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn74_cnn358_out_intel_reserved_ffwd_64_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_42_regfree_osync_x(GPOUT,217)
    assign out_intel_reserved_ffwd_64_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn74_cnn358_out_intel_reserved_ffwd_64_0;

    // valid_fanout_reg51(REG,334)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg51_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn75_cnn361(BLACKBOX,66)@9
    // out out_intel_reserved_ffwd_65_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_75_cnn362 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn75_cnn361 (
        .in_enable_in(VCC_q),
        .in_src_data_in_65_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_intel_reserved_ffwd_65_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn75_cnn361_out_intel_reserved_ffwd_65_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_43_regfree_osync_x(GPOUT,219)
    assign out_intel_reserved_ffwd_65_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn75_cnn361_out_intel_reserved_ffwd_65_0;

    // valid_fanout_reg52(REG,335)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg52_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn76_cnn364(BLACKBOX,67)@9
    // out out_intel_reserved_ffwd_66_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_76_cnn365 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn76_cnn364 (
        .in_enable_in(VCC_q),
        .in_src_data_in_66_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_intel_reserved_ffwd_66_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn76_cnn364_out_intel_reserved_ffwd_66_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_44_regfree_osync_x(GPOUT,221)
    assign out_intel_reserved_ffwd_66_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn76_cnn364_out_intel_reserved_ffwd_66_0;

    // valid_fanout_reg53(REG,336)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg53_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn77_cnn367(BLACKBOX,68)@9
    // out out_intel_reserved_ffwd_67_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_77_cnn368 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn77_cnn367 (
        .in_enable_in(VCC_q),
        .in_src_data_in_67_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_intel_reserved_ffwd_67_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn77_cnn367_out_intel_reserved_ffwd_67_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_45_regfree_osync_x(GPOUT,223)
    assign out_intel_reserved_ffwd_67_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn77_cnn367_out_intel_reserved_ffwd_67_0;

    // valid_fanout_reg54(REG,337)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg54_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn78_cnn370(BLACKBOX,69)@9
    // out out_intel_reserved_ffwd_68_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_78_cnn371 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn78_cnn370 (
        .in_enable_in(VCC_q),
        .in_src_data_in_68_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_intel_reserved_ffwd_68_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn78_cnn370_out_intel_reserved_ffwd_68_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_46_regfree_osync_x(GPOUT,225)
    assign out_intel_reserved_ffwd_68_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn78_cnn370_out_intel_reserved_ffwd_68_0;

    // valid_fanout_reg55(REG,338)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg55_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn79_cnn373(BLACKBOX,70)@9
    // out out_intel_reserved_ffwd_69_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_79_cnn374 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn79_cnn373 (
        .in_enable_in(VCC_q),
        .in_src_data_in_69_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_intel_reserved_ffwd_69_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn79_cnn373_out_intel_reserved_ffwd_69_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_47_regfree_osync_x(GPOUT,227)
    assign out_intel_reserved_ffwd_69_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn79_cnn373_out_intel_reserved_ffwd_69_0;

    // valid_fanout_reg56(REG,339)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg56_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn376(BLACKBOX,71)@9
    // out out_intel_reserved_ffwd_70_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_80_cnn377 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn376 (
        .in_enable_in(VCC_q),
        .in_src_data_in_70_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg56_q),
        .out_intel_reserved_ffwd_70_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn376_out_intel_reserved_ffwd_70_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_48_regfree_osync_x(GPOUT,229)
    assign out_intel_reserved_ffwd_70_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn80_cnn376_out_intel_reserved_ffwd_70_0;

    // valid_fanout_reg57(REG,340)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg57_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn81_cnn379(BLACKBOX,72)@9
    // out out_intel_reserved_ffwd_71_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_81_cnn380 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn81_cnn379 (
        .in_enable_in(VCC_q),
        .in_src_data_in_71_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg57_q),
        .out_intel_reserved_ffwd_71_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn81_cnn379_out_intel_reserved_ffwd_71_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_49_regfree_osync_x(GPOUT,231)
    assign out_intel_reserved_ffwd_71_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn81_cnn379_out_intel_reserved_ffwd_71_0;

    // valid_fanout_reg58(REG,341)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg58_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn82_cnn382(BLACKBOX,73)@9
    // out out_intel_reserved_ffwd_72_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_82_cnn383 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn82_cnn382 (
        .in_enable_in(VCC_q),
        .in_src_data_in_72_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg58_q),
        .out_intel_reserved_ffwd_72_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn82_cnn382_out_intel_reserved_ffwd_72_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_50_regfree_osync_x(GPOUT,233)
    assign out_intel_reserved_ffwd_72_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn82_cnn382_out_intel_reserved_ffwd_72_0;

    // valid_fanout_reg59(REG,342)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg59_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn83_cnn385(BLACKBOX,74)@9
    // out out_intel_reserved_ffwd_73_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_83_cnn386 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn83_cnn385 (
        .in_enable_in(VCC_q),
        .in_src_data_in_73_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg59_q),
        .out_intel_reserved_ffwd_73_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn83_cnn385_out_intel_reserved_ffwd_73_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_51_regfree_osync_x(GPOUT,235)
    assign out_intel_reserved_ffwd_73_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn83_cnn385_out_intel_reserved_ffwd_73_0;

    // valid_fanout_reg60(REG,343)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg60_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn84_cnn388(BLACKBOX,75)@9
    // out out_intel_reserved_ffwd_74_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_84_cnn389 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn84_cnn388 (
        .in_enable_in(VCC_q),
        .in_src_data_in_74_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg60_q),
        .out_intel_reserved_ffwd_74_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn84_cnn388_out_intel_reserved_ffwd_74_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_52_regfree_osync_x(GPOUT,237)
    assign out_intel_reserved_ffwd_74_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn84_cnn388_out_intel_reserved_ffwd_74_0;

    // valid_fanout_reg61(REG,344)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg61_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn85_cnn391(BLACKBOX,76)@9
    // out out_intel_reserved_ffwd_75_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_85_cnn392 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn85_cnn391 (
        .in_enable_in(VCC_q),
        .in_src_data_in_75_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg61_q),
        .out_intel_reserved_ffwd_75_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn85_cnn391_out_intel_reserved_ffwd_75_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_53_regfree_osync_x(GPOUT,239)
    assign out_intel_reserved_ffwd_75_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn85_cnn391_out_intel_reserved_ffwd_75_0;

    // valid_fanout_reg62(REG,345)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg62_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn86_cnn394(BLACKBOX,77)@9
    // out out_intel_reserved_ffwd_76_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_86_cnn395 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn86_cnn394 (
        .in_enable_in(VCC_q),
        .in_src_data_in_76_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg62_q),
        .out_intel_reserved_ffwd_76_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn86_cnn394_out_intel_reserved_ffwd_76_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_54_regfree_osync_x(GPOUT,241)
    assign out_intel_reserved_ffwd_76_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn86_cnn394_out_intel_reserved_ffwd_76_0;

    // valid_fanout_reg63(REG,346)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg63_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn87_cnn397(BLACKBOX,78)@9
    // out out_intel_reserved_ffwd_77_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_87_cnn398 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn87_cnn397 (
        .in_enable_in(VCC_q),
        .in_src_data_in_77_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg63_q),
        .out_intel_reserved_ffwd_77_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn87_cnn397_out_intel_reserved_ffwd_77_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_55_regfree_osync_x(GPOUT,243)
    assign out_intel_reserved_ffwd_77_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn87_cnn397_out_intel_reserved_ffwd_77_0;

    // valid_fanout_reg64(REG,347)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg64_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn88_cnn400(BLACKBOX,79)@9
    // out out_intel_reserved_ffwd_78_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_88_cnn401 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn88_cnn400 (
        .in_enable_in(VCC_q),
        .in_src_data_in_78_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg64_q),
        .out_intel_reserved_ffwd_78_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn88_cnn400_out_intel_reserved_ffwd_78_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_56_regfree_osync_x(GPOUT,245)
    assign out_intel_reserved_ffwd_78_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn88_cnn400_out_intel_reserved_ffwd_78_0;

    // valid_fanout_reg65(REG,348)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg65_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn89_cnn403(BLACKBOX,80)@9
    // out out_intel_reserved_ffwd_79_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_89_cnn404 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn89_cnn403 (
        .in_enable_in(VCC_q),
        .in_src_data_in_79_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg65_q),
        .out_intel_reserved_ffwd_79_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn89_cnn403_out_intel_reserved_ffwd_79_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_57_regfree_osync_x(GPOUT,247)
    assign out_intel_reserved_ffwd_79_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn89_cnn403_out_intel_reserved_ffwd_79_0;

    // valid_fanout_reg66(REG,349)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg66_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn90_cnn406(BLACKBOX,81)@9
    // out out_intel_reserved_ffwd_80_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_90_cnn407 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn90_cnn406 (
        .in_enable_in(VCC_q),
        .in_src_data_in_80_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg66_q),
        .out_intel_reserved_ffwd_80_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn90_cnn406_out_intel_reserved_ffwd_80_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_58_regfree_osync_x(GPOUT,249)
    assign out_intel_reserved_ffwd_80_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn90_cnn406_out_intel_reserved_ffwd_80_0;

    // valid_fanout_reg67(REG,350)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg67_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn91_cnn409(BLACKBOX,82)@9
    // out out_intel_reserved_ffwd_81_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_91_cnn410 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn91_cnn409 (
        .in_enable_in(VCC_q),
        .in_src_data_in_81_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg67_q),
        .out_intel_reserved_ffwd_81_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn91_cnn409_out_intel_reserved_ffwd_81_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_59_regfree_osync_x(GPOUT,251)
    assign out_intel_reserved_ffwd_81_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn91_cnn409_out_intel_reserved_ffwd_81_0;

    // valid_fanout_reg68(REG,351)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg68_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn92_cnn412(BLACKBOX,83)@9
    // out out_intel_reserved_ffwd_82_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_92_cnn413 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn92_cnn412 (
        .in_enable_in(VCC_q),
        .in_src_data_in_82_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg68_q),
        .out_intel_reserved_ffwd_82_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn92_cnn412_out_intel_reserved_ffwd_82_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_60_regfree_osync_x(GPOUT,253)
    assign out_intel_reserved_ffwd_82_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn92_cnn412_out_intel_reserved_ffwd_82_0;

    // valid_fanout_reg69(REG,352)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg69_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn93_cnn415(BLACKBOX,84)@9
    // out out_intel_reserved_ffwd_83_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_93_cnn416 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn93_cnn415 (
        .in_enable_in(VCC_q),
        .in_src_data_in_83_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg69_q),
        .out_intel_reserved_ffwd_83_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn93_cnn415_out_intel_reserved_ffwd_83_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_61_regfree_osync_x(GPOUT,255)
    assign out_intel_reserved_ffwd_83_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn93_cnn415_out_intel_reserved_ffwd_83_0;

    // valid_fanout_reg70(REG,353)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg70_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn94_cnn418(BLACKBOX,85)@9
    // out out_intel_reserved_ffwd_84_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_94_cnn419 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn94_cnn418 (
        .in_enable_in(VCC_q),
        .in_src_data_in_84_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg70_q),
        .out_intel_reserved_ffwd_84_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn94_cnn418_out_intel_reserved_ffwd_84_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_62_regfree_osync_x(GPOUT,257)
    assign out_intel_reserved_ffwd_84_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn94_cnn418_out_intel_reserved_ffwd_84_0;

    // valid_fanout_reg71(REG,354)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg71_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn95_cnn421(BLACKBOX,86)@9
    // out out_intel_reserved_ffwd_85_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_95_cnn422 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn95_cnn421 (
        .in_enable_in(VCC_q),
        .in_src_data_in_85_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg71_q),
        .out_intel_reserved_ffwd_85_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn95_cnn421_out_intel_reserved_ffwd_85_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_63_regfree_osync_x(GPOUT,259)
    assign out_intel_reserved_ffwd_85_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn95_cnn421_out_intel_reserved_ffwd_85_0;

    // valid_fanout_reg72(REG,355)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg72_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn96_cnn424(BLACKBOX,87)@9
    // out out_intel_reserved_ffwd_86_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_96_cnn425 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn96_cnn424 (
        .in_enable_in(VCC_q),
        .in_src_data_in_86_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg72_q),
        .out_intel_reserved_ffwd_86_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn96_cnn424_out_intel_reserved_ffwd_86_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_64_regfree_osync_x(GPOUT,261)
    assign out_intel_reserved_ffwd_86_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn96_cnn424_out_intel_reserved_ffwd_86_0;

    // valid_fanout_reg73(REG,356)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg73_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn97_cnn427(BLACKBOX,88)@9
    // out out_intel_reserved_ffwd_87_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_97_cnn428 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn97_cnn427 (
        .in_enable_in(VCC_q),
        .in_src_data_in_87_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg73_q),
        .out_intel_reserved_ffwd_87_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn97_cnn427_out_intel_reserved_ffwd_87_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_65_regfree_osync_x(GPOUT,263)
    assign out_intel_reserved_ffwd_87_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn97_cnn427_out_intel_reserved_ffwd_87_0;

    // valid_fanout_reg74(REG,357)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg74_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn98_cnn430(BLACKBOX,89)@9
    // out out_intel_reserved_ffwd_88_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_98_cnn431 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn98_cnn430 (
        .in_enable_in(VCC_q),
        .in_src_data_in_88_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg74_q),
        .out_intel_reserved_ffwd_88_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn98_cnn430_out_intel_reserved_ffwd_88_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_66_regfree_osync_x(GPOUT,265)
    assign out_intel_reserved_ffwd_88_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn98_cnn430_out_intel_reserved_ffwd_88_0;

    // valid_fanout_reg75(REG,358)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg75_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn99_cnn433(BLACKBOX,90)@9
    // out out_intel_reserved_ffwd_89_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_99_cnn434 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn99_cnn433 (
        .in_enable_in(VCC_q),
        .in_src_data_in_89_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg75_q),
        .out_intel_reserved_ffwd_89_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn99_cnn433_out_intel_reserved_ffwd_89_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_67_regfree_osync_x(GPOUT,267)
    assign out_intel_reserved_ffwd_89_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn99_cnn433_out_intel_reserved_ffwd_89_0;

    // valid_fanout_reg76(REG,359)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg76_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn100_cnn436(BLACKBOX,24)@9
    // out out_intel_reserved_ffwd_90_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_100_cnn437 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn100_cnn436 (
        .in_enable_in(VCC_q),
        .in_src_data_in_90_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg76_q),
        .out_intel_reserved_ffwd_90_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn100_cnn436_out_intel_reserved_ffwd_90_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_68_regfree_osync_x(GPOUT,269)
    assign out_intel_reserved_ffwd_90_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn100_cnn436_out_intel_reserved_ffwd_90_0;

    // valid_fanout_reg77(REG,360)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg77_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn101_cnn439(BLACKBOX,25)@9
    // out out_intel_reserved_ffwd_91_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_101_cnn440 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn101_cnn439 (
        .in_enable_in(VCC_q),
        .in_src_data_in_91_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg77_q),
        .out_intel_reserved_ffwd_91_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn101_cnn439_out_intel_reserved_ffwd_91_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_69_regfree_osync_x(GPOUT,271)
    assign out_intel_reserved_ffwd_91_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn101_cnn439_out_intel_reserved_ffwd_91_0;

    // valid_fanout_reg78(REG,361)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg78_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn102_cnn442(BLACKBOX,26)@9
    // out out_intel_reserved_ffwd_92_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_102_cnn443 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn102_cnn442 (
        .in_enable_in(VCC_q),
        .in_src_data_in_92_0(i_unnamed_cnn228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg78_q),
        .out_intel_reserved_ffwd_92_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn102_cnn442_out_intel_reserved_ffwd_92_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_70_regfree_osync_x(GPOUT,273)
    assign out_intel_reserved_ffwd_92_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn102_cnn442_out_intel_reserved_ffwd_92_0;

    // valid_fanout_reg0(REG,283)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist8_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // redist11_bgTrunc_i_add31_cnn220_sel_x_b_4(DELAY,378)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_bgTrunc_i_add31_cnn220_sel_x_b_4_delay_0 <= redist10_bgTrunc_i_add31_cnn220_sel_x_b_2_q;
            redist11_bgTrunc_i_add31_cnn220_sel_x_b_4_q <= redist11_bgTrunc_i_add31_cnn220_sel_x_b_4_delay_0;
        end
    end

    // sync_out_aunroll_x(GPOUT,282)@9
    assign out_c0_exi1797_0 = GND_q;
    assign out_c0_exi1797_1 = redist11_bgTrunc_i_add31_cnn220_sel_x_b_4_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cnn8 = GND_q;

endmodule
