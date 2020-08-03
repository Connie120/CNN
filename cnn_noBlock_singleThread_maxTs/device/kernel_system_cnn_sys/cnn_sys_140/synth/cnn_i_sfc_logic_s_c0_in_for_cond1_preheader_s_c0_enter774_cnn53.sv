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

// SystemVerilog created from cnn_i_sfc_logic_s_c0_in_for_cond1_preheader_s_c0_enter774_cnn53
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_logic_s_c0_in_for_cond1_preheader_s_c0_enter774_cnn53 (
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    output wire [64:0] out_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_100_0,
    output wire [0:0] out_intel_reserved_ffwd_11_0,
    input wire [63:0] in_intel_reserved_ffwd_101_0,
    output wire [0:0] out_intel_reserved_ffwd_12_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    input wire [63:0] in_intel_reserved_ffwd_99_0,
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_9_0,
    input wire [0:0] in_c0_eni2_0,
    input wire [0:0] in_c0_eni2_1,
    input wire [63:0] in_c0_eni2_2,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exi1_0,
    output wire [63:0] out_c0_exi1_1,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cnn8,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_16_q;
    wire [63:0] c_i64_17_q;
    wire [63:0] c_i64_1gr_q;
    wire [64:0] c_i65_1gr_q;
    wire [64:0] i_add_cnn82_a;
    wire [64:0] i_add_cnn82_b;
    logic [64:0] i_add_cnn82_o;
    wire [64:0] i_add_cnn82_q;
    wire [65:0] i_cmp1262_cnn85_a;
    wire [65:0] i_cmp1262_cnn85_b;
    logic [65:0] i_cmp1262_cnn85_o;
    wire [0:0] i_cmp1262_cnn85_c;
    wire [65:0] i_cmp8_cnn83_a;
    wire [65:0] i_cmp8_cnn83_b;
    logic [65:0] i_cmp8_cnn83_o;
    wire [0:0] i_cmp8_cnn83_c;
    wire [0:0] i_fpgaindvars_iv1692_replace_phi_cnn66_s;
    reg [63:0] i_fpgaindvars_iv1692_replace_phi_cnn66_q;
    wire [0:0] i_fpgaindvars_iv1694_replace_phi_cnn70_s;
    reg [63:0] i_fpgaindvars_iv1694_replace_phi_cnn70_q;
    wire [0:0] i_fpgaindvars_iv1698_replace_phi_cnn59_s;
    reg [63:0] i_fpgaindvars_iv1698_replace_phi_cnn59_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_conv23_cnn79_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169362_cnn63_out_dest_data_out_99_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169564_cnn60_out_dest_data_out_100_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169965_cnn56_out_dest_data_out_101_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_unnamed_cnn11_cnn67_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn16_cnn98_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn17_cnn101_out_intel_reserved_ffwd_12_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn12_cnn86_out_intel_reserved_ffwd_6_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn13_cnn89_out_intel_reserved_ffwd_7_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn14_cnn92_out_intel_reserved_ffwd_9_0;
    wire [64:0] i_llvm_fpga_ffwd_source_i65_unnamed_cnn15_cnn95_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_spec_select_cnn84_s;
    reg [63:0] i_spec_select_cnn84_q;
    wire [58:0] i_spec_select_cnn84_vt_const_63_q;
    wire [63:0] i_spec_select_cnn84_vt_join_q;
    wire [4:0] i_spec_select_cnn84_vt_select_4_b;
    wire [0:0] i_umax1696_cnn72_s;
    reg [63:0] i_umax1696_cnn72_q;
    wire [58:0] i_umax1696_cnn72_vt_const_63_q;
    wire [63:0] i_umax1696_cnn72_vt_join_q;
    wire [4:0] i_umax1696_cnn72_vt_select_4_b;
    wire [0:0] i_umax1697_cnn75_s;
    reg [63:0] i_umax1697_cnn75_q;
    wire [65:0] i_unnamed_cnn71_a;
    wire [65:0] i_unnamed_cnn71_b;
    logic [65:0] i_unnamed_cnn71_o;
    wire [0:0] i_unnamed_cnn71_c;
    wire [64:0] i_unnamed_cnn73_a;
    wire [64:0] i_unnamed_cnn73_b;
    logic [64:0] i_unnamed_cnn73_o;
    wire [64:0] i_unnamed_cnn73_q;
    wire [63:0] i_unnamed_cnn73_vt_join_q;
    wire [4:0] i_unnamed_cnn73_vt_select_4_b;
    wire [65:0] i_unnamed_cnn74_a;
    wire [65:0] i_unnamed_cnn74_b;
    logic [65:0] i_unnamed_cnn74_o;
    wire [0:0] i_unnamed_cnn74_c;
    wire [64:0] i_unnamed_cnn76_a;
    wire [64:0] i_unnamed_cnn76_b;
    logic [64:0] i_unnamed_cnn76_o;
    wire [64:0] i_unnamed_cnn76_q;
    wire [64:0] i_unnamed_cnn77_vt_join_q;
    wire [63:0] i_unnamed_cnn77_vt_select_63_b;
    wire [65:0] i_unnamed_cnn78_a;
    wire [65:0] i_unnamed_cnn78_b;
    logic [65:0] i_unnamed_cnn78_o;
    wire [65:0] i_unnamed_cnn78_q;
    wire [63:0] bgTrunc_i_add_cnn82_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_cnn73_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_cnn76_sel_x_b;
    wire [64:0] bgTrunc_i_unnamed_cnn78_sel_x_b;
    wire [63:0] dupName_0_c_i64_1gr_x_q;
    wire [64:0] i_unnamed_cnn77_sel_x_b;
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
    reg [0:0] redist0_sync_in_aunroll_x_in_c0_eni2_1_1_q;
    reg [0:0] redist1_sync_in_aunroll_x_in_c0_eni2_1_4_q;
    reg [0:0] redist1_sync_in_aunroll_x_in_c0_eni2_1_4_delay_0;
    reg [0:0] redist1_sync_in_aunroll_x_in_c0_eni2_1_4_delay_1;
    reg [0:0] redist2_sync_in_aunroll_x_in_c0_eni2_1_6_q;
    reg [0:0] redist2_sync_in_aunroll_x_in_c0_eni2_1_6_delay_0;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni2_2_5_q;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni2_2_5_delay_0;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni2_2_5_delay_1;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni2_2_8_q;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni2_2_8_delay_0;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni2_2_8_delay_1;
    reg [0:0] redist5_sync_in_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist5_sync_in_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist6_sync_in_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist7_sync_in_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist8_sync_in_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist9_sync_in_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist9_sync_in_aunroll_x_in_i_valid_7_delay_0;
    reg [63:0] redist10_bgTrunc_i_unnamed_cnn76_sel_x_b_1_q;
    reg [63:0] redist11_bgTrunc_i_add_cnn82_sel_x_b_1_q;
    reg [63:0] redist12_bgTrunc_i_add_cnn82_sel_x_b_2_q;
    reg [63:0] redist13_bgTrunc_i_add_cnn82_sel_x_b_3_q;
    reg [4:0] redist14_i_unnamed_cnn73_vt_select_4_b_1_q;
    reg [63:0] redist15_i_unnamed_cnn73_vt_join_q_1_q;
    reg [4:0] redist16_i_umax1696_cnn72_vt_select_4_b_1_q;
    reg [4:0] redist17_i_spec_select_cnn84_vt_select_4_b_1_q;
    reg [63:0] redist18_i_fpgaindvars_iv1698_replace_phi_cnn59_q_1_q;
    reg [63:0] redist19_i_fpgaindvars_iv1694_replace_phi_cnn70_q_2_q;
    reg [63:0] redist20_i_fpgaindvars_iv1692_replace_phi_cnn66_q_1_q;
    reg [63:0] redist21_i_fpgaindvars_iv1692_replace_phi_cnn66_q_2_q;
    reg [0:0] redist22_i_cmp8_cnn83_c_1_q;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni2_2_5_inputreg0_q;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni2_2_5_outputreg0_q;


    // redist5_sync_in_aunroll_x_in_i_valid_2(DELAY,102)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist5_sync_in_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist5_sync_in_aunroll_x_in_i_valid_2_delay_0 <= in_i_valid;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_sync_in_aunroll_x_in_i_valid_2_q <= redist5_sync_in_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist6_sync_in_aunroll_x_in_i_valid_3(DELAY,103)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist6_sync_in_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist6_sync_in_aunroll_x_in_i_valid_3_q <= redist5_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // redist7_sync_in_aunroll_x_in_i_valid_4(DELAY,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_sync_in_aunroll_x_in_i_valid_4_q <= redist6_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // redist8_sync_in_aunroll_x_in_i_valid_5(DELAY,105)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist8_sync_in_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist8_sync_in_aunroll_x_in_i_valid_5_q <= redist7_sync_in_aunroll_x_in_i_valid_4_q;
        end
    end

    // redist9_sync_in_aunroll_x_in_i_valid_7(DELAY,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_in_aunroll_x_in_i_valid_7_delay_0 <= redist8_sync_in_aunroll_x_in_i_valid_5_q;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist9_sync_in_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist9_sync_in_aunroll_x_in_i_valid_7_q <= redist9_sync_in_aunroll_x_in_i_valid_7_delay_0;
        end
    end

    // valid_fanout_reg9(REG,89)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= redist9_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // c_i65_1gr(CONSTANT,11)
    assign c_i65_1gr_q = 65'b11111111111111111111111111111111111111111111111111111111111111111;

    // c_i64_1gr(CONSTANT,10)
    assign c_i64_1gr_q = 64'b1111111111111111111111111111111111111111111111111111111111111111;

    // valid_fanout_reg1(REG,81)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= redist8_sync_in_aunroll_x_in_i_valid_5_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169965_cnn56(BLACKBOX,21)@7
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169965_57 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169965_cnn56 (
        .in_intel_reserved_ffwd_101_0(in_intel_reserved_ffwd_101_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_101_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169965_cnn56_out_dest_data_out_101_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_in_aunroll_x_in_c0_eni2_1_1(DELAY,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_in_aunroll_x_in_c0_eni2_1_1_q <= in_c0_eni2_1;
        end
    end

    // redist1_sync_in_aunroll_x_in_c0_eni2_1_4(DELAY,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_in_aunroll_x_in_c0_eni2_1_4_delay_0 <= redist0_sync_in_aunroll_x_in_c0_eni2_1_1_q;
            redist1_sync_in_aunroll_x_in_c0_eni2_1_4_delay_1 <= redist1_sync_in_aunroll_x_in_c0_eni2_1_4_delay_0;
            redist1_sync_in_aunroll_x_in_c0_eni2_1_4_q <= redist1_sync_in_aunroll_x_in_c0_eni2_1_4_delay_1;
        end
    end

    // redist2_sync_in_aunroll_x_in_c0_eni2_1_6(DELAY,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_in_aunroll_x_in_c0_eni2_1_6_delay_0 <= redist1_sync_in_aunroll_x_in_c0_eni2_1_4_q;
            redist2_sync_in_aunroll_x_in_c0_eni2_1_6_q <= redist2_sync_in_aunroll_x_in_c0_eni2_1_6_delay_0;
        end
    end

    // i_fpgaindvars_iv1698_replace_phi_cnn59(MUX,17)@7
    assign i_fpgaindvars_iv1698_replace_phi_cnn59_s = redist2_sync_in_aunroll_x_in_c0_eni2_1_6_q;
    always @(i_fpgaindvars_iv1698_replace_phi_cnn59_s or i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169965_cnn56_out_dest_data_out_101_0 or c_i64_1gr_q)
    begin
        unique case (i_fpgaindvars_iv1698_replace_phi_cnn59_s)
            1'b0 : i_fpgaindvars_iv1698_replace_phi_cnn59_q = i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169965_cnn56_out_dest_data_out_101_0;
            1'b1 : i_fpgaindvars_iv1698_replace_phi_cnn59_q = c_i64_1gr_q;
            default : i_fpgaindvars_iv1698_replace_phi_cnn59_q = 64'b0;
        endcase
    end

    // redist18_i_fpgaindvars_iv1698_replace_phi_cnn59_q_1(DELAY,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_fpgaindvars_iv1698_replace_phi_cnn59_q_1_q <= i_fpgaindvars_iv1698_replace_phi_cnn59_q;
        end
    end

    // dupName_0_c_i64_1gr_x(CONSTANT,58)
    assign dupName_0_c_i64_1gr_x_q = 64'b0000000000000000000000000000000000000000000000000000000000000001;

    // valid_fanout_reg3(REG,83)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= redist6_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169362_cnn63(BLACKBOX,19)@5
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169362_64 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169362_cnn63 (
        .in_intel_reserved_ffwd_99_0(in_intel_reserved_ffwd_99_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_99_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169362_cnn63_out_dest_data_out_99_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv1692_replace_phi_cnn66(MUX,15)@5
    assign i_fpgaindvars_iv1692_replace_phi_cnn66_s = redist1_sync_in_aunroll_x_in_c0_eni2_1_4_q;
    always @(i_fpgaindvars_iv1692_replace_phi_cnn66_s or i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169362_cnn63_out_dest_data_out_99_0 or dupName_0_c_i64_1gr_x_q)
    begin
        unique case (i_fpgaindvars_iv1692_replace_phi_cnn66_s)
            1'b0 : i_fpgaindvars_iv1692_replace_phi_cnn66_q = i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169362_cnn63_out_dest_data_out_99_0;
            1'b1 : i_fpgaindvars_iv1692_replace_phi_cnn66_q = dupName_0_c_i64_1gr_x_q;
            default : i_fpgaindvars_iv1692_replace_phi_cnn66_q = 64'b0;
        endcase
    end

    // redist20_i_fpgaindvars_iv1692_replace_phi_cnn66_q_1(DELAY,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_fpgaindvars_iv1692_replace_phi_cnn66_q_1_q <= i_fpgaindvars_iv1692_replace_phi_cnn66_q;
        end
    end

    // redist21_i_fpgaindvars_iv1692_replace_phi_cnn66_q_2(DELAY,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_fpgaindvars_iv1692_replace_phi_cnn66_q_2_q <= redist20_i_fpgaindvars_iv1692_replace_phi_cnn66_q_1_q;
        end
    end

    // i_spec_select_cnn84_vt_const_63(CONSTANT,30)
    assign i_spec_select_cnn84_vt_const_63_q = 59'b00000000000000000000000000000000000000000000000000000000000;

    // i_umax1696_cnn72_vt_const_63(CONSTANT,34)
    assign i_umax1696_cnn72_vt_const_63_q = 59'b11111111111111111111111111111111111111111111111111111111111;

    // valid_fanout_reg4(REG,84)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_unnamed_cnn11_cnn67(BLACKBOX,22)@2
    cnn_i_llvm_fpga_ffwd_dest_i64_unnamed_11_cnn68 thei_llvm_fpga_ffwd_dest_i64_unnamed_cnn11_cnn67 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i64_unnamed_cnn11_cnn67_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,82)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169564_cnn60(BLACKBOX,20)@2
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169564_61 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169564_cnn60 (
        .in_intel_reserved_ffwd_100_0(in_intel_reserved_ffwd_100_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_100_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169564_cnn60_out_dest_data_out_100_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv1694_replace_phi_cnn70(MUX,16)@2 + 1
    assign i_fpgaindvars_iv1694_replace_phi_cnn70_s = redist0_sync_in_aunroll_x_in_c0_eni2_1_1_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_fpgaindvars_iv1694_replace_phi_cnn70_s)
                1'b0 : i_fpgaindvars_iv1694_replace_phi_cnn70_q <= i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next169564_cnn60_out_dest_data_out_100_0;
                1'b1 : i_fpgaindvars_iv1694_replace_phi_cnn70_q <= i_llvm_fpga_ffwd_dest_i64_unnamed_cnn11_cnn67_out_dest_data_out_5_0;
                default : i_fpgaindvars_iv1694_replace_phi_cnn70_q <= 64'b0;
            endcase
        end
    end

    // redist19_i_fpgaindvars_iv1694_replace_phi_cnn70_q_2(DELAY,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_fpgaindvars_iv1694_replace_phi_cnn70_q_2_q <= i_fpgaindvars_iv1694_replace_phi_cnn70_q;
        end
    end

    // c_i64_17(CONSTANT,9)
    assign c_i64_17_q = 64'b1111111111111111111111111111111111111111111111111111111111101111;

    // i_unnamed_cnn71(COMPARE,38)@3 + 1
    assign i_unnamed_cnn71_a = {2'b00, c_i64_17_q};
    assign i_unnamed_cnn71_b = {2'b00, i_fpgaindvars_iv1694_replace_phi_cnn70_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_unnamed_cnn71_o <= $unsigned(i_unnamed_cnn71_a) - $unsigned(i_unnamed_cnn71_b);
        end
    end
    assign i_unnamed_cnn71_c[0] = i_unnamed_cnn71_o[65];

    // i_umax1696_cnn72(MUX,33)@4
    assign i_umax1696_cnn72_s = i_unnamed_cnn71_c;
    always @(i_umax1696_cnn72_s or c_i64_17_q or redist19_i_fpgaindvars_iv1694_replace_phi_cnn70_q_2_q)
    begin
        unique case (i_umax1696_cnn72_s)
            1'b0 : i_umax1696_cnn72_q = c_i64_17_q;
            1'b1 : i_umax1696_cnn72_q = redist19_i_fpgaindvars_iv1694_replace_phi_cnn70_q_2_q;
            default : i_umax1696_cnn72_q = 64'b0;
        endcase
    end

    // i_umax1696_cnn72_vt_select_4(BITSELECT,36)@4
    assign i_umax1696_cnn72_vt_select_4_b = i_umax1696_cnn72_q[4:0];

    // redist16_i_umax1696_cnn72_vt_select_4_b_1(DELAY,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_umax1696_cnn72_vt_select_4_b_1_q <= i_umax1696_cnn72_vt_select_4_b;
        end
    end

    // i_umax1696_cnn72_vt_join(BITJOIN,35)@5
    assign i_umax1696_cnn72_vt_join_q = {i_umax1696_cnn72_vt_const_63_q, redist16_i_umax1696_cnn72_vt_select_4_b_1_q};

    // i_unnamed_cnn73(SUB,39)@5
    assign i_unnamed_cnn73_a = {1'b0, c_i64_1gr_q};
    assign i_unnamed_cnn73_b = {1'b0, i_umax1696_cnn72_vt_join_q};
    assign i_unnamed_cnn73_o = $unsigned(i_unnamed_cnn73_a) - $unsigned(i_unnamed_cnn73_b);
    assign i_unnamed_cnn73_q = i_unnamed_cnn73_o[64:0];

    // bgTrunc_i_unnamed_cnn73_sel_x(BITSELECT,54)@5
    assign bgTrunc_i_unnamed_cnn73_sel_x_b = i_unnamed_cnn73_q[63:0];

    // i_unnamed_cnn73_vt_select_4(BITSELECT,42)@5
    assign i_unnamed_cnn73_vt_select_4_b = bgTrunc_i_unnamed_cnn73_sel_x_b[4:0];

    // redist14_i_unnamed_cnn73_vt_select_4_b_1(DELAY,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_unnamed_cnn73_vt_select_4_b_1_q <= i_unnamed_cnn73_vt_select_4_b;
        end
    end

    // i_unnamed_cnn73_vt_join(BITJOIN,41)@6
    assign i_unnamed_cnn73_vt_join_q = {i_spec_select_cnn84_vt_const_63_q, redist14_i_unnamed_cnn73_vt_select_4_b_1_q};

    // redist15_i_unnamed_cnn73_vt_join_q_1(DELAY,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_unnamed_cnn73_vt_join_q_1_q <= i_unnamed_cnn73_vt_join_q;
        end
    end

    // i_unnamed_cnn74(COMPARE,43)@6 + 1
    assign i_unnamed_cnn74_a = {2'b00, i_unnamed_cnn73_vt_join_q};
    assign i_unnamed_cnn74_b = {2'b00, redist20_i_fpgaindvars_iv1692_replace_phi_cnn66_q_1_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_unnamed_cnn74_o <= $unsigned(i_unnamed_cnn74_a) - $unsigned(i_unnamed_cnn74_b);
        end
    end
    assign i_unnamed_cnn74_c[0] = i_unnamed_cnn74_o[65];

    // i_umax1697_cnn75(MUX,37)@7 + 1
    assign i_umax1697_cnn75_s = i_unnamed_cnn74_c;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_umax1697_cnn75_s)
                1'b0 : i_umax1697_cnn75_q <= redist15_i_unnamed_cnn73_vt_join_q_1_q;
                1'b1 : i_umax1697_cnn75_q <= redist21_i_fpgaindvars_iv1692_replace_phi_cnn66_q_2_q;
                default : i_umax1697_cnn75_q <= 64'b0;
            endcase
        end
    end

    // i_unnamed_cnn76(ADD,44)@8
    assign i_unnamed_cnn76_a = {1'b0, i_umax1697_cnn75_q};
    assign i_unnamed_cnn76_b = {1'b0, redist18_i_fpgaindvars_iv1698_replace_phi_cnn59_q_1_q};
    assign i_unnamed_cnn76_o = $unsigned(i_unnamed_cnn76_a) + $unsigned(i_unnamed_cnn76_b);
    assign i_unnamed_cnn76_q = i_unnamed_cnn76_o[64:0];

    // bgTrunc_i_unnamed_cnn76_sel_x(BITSELECT,55)@8
    assign bgTrunc_i_unnamed_cnn76_sel_x_b = i_unnamed_cnn76_q[63:0];

    // redist10_bgTrunc_i_unnamed_cnn76_sel_x_b_1(DELAY,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_bgTrunc_i_unnamed_cnn76_sel_x_b_1_q <= bgTrunc_i_unnamed_cnn76_sel_x_b;
        end
    end

    // i_unnamed_cnn77_sel_x(BITSELECT,77)@9
    assign i_unnamed_cnn77_sel_x_b = {1'b0, redist10_bgTrunc_i_unnamed_cnn76_sel_x_b_1_q[63:0]};

    // i_unnamed_cnn77_vt_select_63(BITSELECT,48)@9
    assign i_unnamed_cnn77_vt_select_63_b = i_unnamed_cnn77_sel_x_b[63:0];

    // i_unnamed_cnn77_vt_join(BITJOIN,47)@9
    assign i_unnamed_cnn77_vt_join_q = {GND_q, i_unnamed_cnn77_vt_select_63_b};

    // i_unnamed_cnn78(ADD,49)@9
    assign i_unnamed_cnn78_a = {1'b0, i_unnamed_cnn77_vt_join_q};
    assign i_unnamed_cnn78_b = {1'b0, c_i65_1gr_q};
    assign i_unnamed_cnn78_o = $unsigned(i_unnamed_cnn78_a) + $unsigned(i_unnamed_cnn78_b);
    assign i_unnamed_cnn78_q = i_unnamed_cnn78_o[65:0];

    // bgTrunc_i_unnamed_cnn78_sel_x(BITSELECT,56)@9
    assign bgTrunc_i_unnamed_cnn78_sel_x_b = i_unnamed_cnn78_q[64:0];

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_ffwd_source_i65_unnamed_cnn15_cnn95(BLACKBOX,28)@9
    // out out_intel_reserved_ffwd_10_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i65_unnamed_15_cnn96 thei_llvm_fpga_ffwd_source_i65_unnamed_cnn15_cnn95 (
        .in_enable_in(VCC_q),
        .in_src_data_in_10_0(bgTrunc_i_unnamed_cnn78_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i65_unnamed_cnn15_cnn95_out_intel_reserved_ffwd_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,51)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i65_unnamed_cnn15_cnn95_out_intel_reserved_ffwd_10_0;

    // valid_fanout_reg10(REG,90)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= redist8_sync_in_aunroll_x_in_i_valid_5_q;
        end
    end

    // c_i64_16(CONSTANT,8)
    assign c_i64_16_q = 64'b0000000000000000000000000000000000000000000000000000000000010000;

    // valid_fanout_reg5(REG,85)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= redist7_sync_in_aunroll_x_in_i_valid_4_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_conv23_cnn79(BLACKBOX,18)@6
    cnn_i_llvm_fpga_ffwd_dest_i64_conv23_80 thei_llvm_fpga_ffwd_dest_i64_conv23_cnn79 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i64_conv23_cnn79_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_in_aunroll_x_in_c0_eni2_2_5_inputreg0(DELAY,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_c0_eni2_2_5_inputreg0_q <= in_c0_eni2_2;
        end
    end

    // redist3_sync_in_aunroll_x_in_c0_eni2_2_5(DELAY,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_c0_eni2_2_5_delay_0 <= redist3_sync_in_aunroll_x_in_c0_eni2_2_5_inputreg0_q;
            redist3_sync_in_aunroll_x_in_c0_eni2_2_5_delay_1 <= redist3_sync_in_aunroll_x_in_c0_eni2_2_5_delay_0;
            redist3_sync_in_aunroll_x_in_c0_eni2_2_5_q <= redist3_sync_in_aunroll_x_in_c0_eni2_2_5_delay_1;
        end
    end

    // redist3_sync_in_aunroll_x_in_c0_eni2_2_5_outputreg0(DELAY,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_c0_eni2_2_5_outputreg0_q <= redist3_sync_in_aunroll_x_in_c0_eni2_2_5_q;
        end
    end

    // i_add_cnn82(ADD,12)@6
    assign i_add_cnn82_a = {1'b0, redist3_sync_in_aunroll_x_in_c0_eni2_2_5_outputreg0_q};
    assign i_add_cnn82_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_conv23_cnn79_out_dest_data_out_0_0};
    assign i_add_cnn82_o = $unsigned(i_add_cnn82_a) + $unsigned(i_add_cnn82_b);
    assign i_add_cnn82_q = i_add_cnn82_o[64:0];

    // bgTrunc_i_add_cnn82_sel_x(BITSELECT,53)@6
    assign bgTrunc_i_add_cnn82_sel_x_b = i_add_cnn82_q[63:0];

    // redist11_bgTrunc_i_add_cnn82_sel_x_b_1(DELAY,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_bgTrunc_i_add_cnn82_sel_x_b_1_q <= bgTrunc_i_add_cnn82_sel_x_b;
        end
    end

    // i_cmp8_cnn83(COMPARE,14)@7
    assign i_cmp8_cnn83_a = {2'b00, redist11_bgTrunc_i_add_cnn82_sel_x_b_1_q};
    assign i_cmp8_cnn83_b = {2'b00, c_i64_16_q};
    assign i_cmp8_cnn83_o = $unsigned(i_cmp8_cnn83_a) - $unsigned(i_cmp8_cnn83_b);
    assign i_cmp8_cnn83_c[0] = i_cmp8_cnn83_o[65];

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn16_cnn98(BLACKBOX,23)@7
    // out out_intel_reserved_ffwd_11_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_16_cnn99 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn16_cnn98 (
        .in_enable_in(VCC_q),
        .in_src_data_in_11_0(i_cmp8_cnn83_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn16_cnn98_out_intel_reserved_ffwd_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,60)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn16_cnn98_out_intel_reserved_ffwd_11_0;

    // valid_fanout_reg11(REG,91)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= redist9_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // redist12_bgTrunc_i_add_cnn82_sel_x_b_2(DELAY,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_bgTrunc_i_add_cnn82_sel_x_b_2_q <= redist11_bgTrunc_i_add_cnn82_sel_x_b_1_q;
        end
    end

    // redist22_i_cmp8_cnn83_c_1(DELAY,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist22_i_cmp8_cnn83_c_1_q <= i_cmp8_cnn83_c;
        end
    end

    // i_spec_select_cnn84(MUX,29)@8
    assign i_spec_select_cnn84_s = redist22_i_cmp8_cnn83_c_1_q;
    always @(i_spec_select_cnn84_s or c_i64_16_q or redist12_bgTrunc_i_add_cnn82_sel_x_b_2_q)
    begin
        unique case (i_spec_select_cnn84_s)
            1'b0 : i_spec_select_cnn84_q = c_i64_16_q;
            1'b1 : i_spec_select_cnn84_q = redist12_bgTrunc_i_add_cnn82_sel_x_b_2_q;
            default : i_spec_select_cnn84_q = 64'b0;
        endcase
    end

    // i_spec_select_cnn84_vt_select_4(BITSELECT,32)@8
    assign i_spec_select_cnn84_vt_select_4_b = i_spec_select_cnn84_q[4:0];

    // redist17_i_spec_select_cnn84_vt_select_4_b_1(DELAY,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_spec_select_cnn84_vt_select_4_b_1_q <= i_spec_select_cnn84_vt_select_4_b;
        end
    end

    // i_spec_select_cnn84_vt_join(BITJOIN,31)@9
    assign i_spec_select_cnn84_vt_join_q = {i_spec_select_cnn84_vt_const_63_q, redist17_i_spec_select_cnn84_vt_select_4_b_1_q};

    // redist4_sync_in_aunroll_x_in_c0_eni2_2_8(DELAY,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_in_aunroll_x_in_c0_eni2_2_8_delay_0 <= redist3_sync_in_aunroll_x_in_c0_eni2_2_5_outputreg0_q;
            redist4_sync_in_aunroll_x_in_c0_eni2_2_8_delay_1 <= redist4_sync_in_aunroll_x_in_c0_eni2_2_8_delay_0;
            redist4_sync_in_aunroll_x_in_c0_eni2_2_8_q <= redist4_sync_in_aunroll_x_in_c0_eni2_2_8_delay_1;
        end
    end

    // i_cmp1262_cnn85(COMPARE,13)@9
    assign i_cmp1262_cnn85_a = {2'b00, redist4_sync_in_aunroll_x_in_c0_eni2_2_8_q};
    assign i_cmp1262_cnn85_b = {2'b00, i_spec_select_cnn84_vt_join_q};
    assign i_cmp1262_cnn85_o = $unsigned(i_cmp1262_cnn85_a) - $unsigned(i_cmp1262_cnn85_b);
    assign i_cmp1262_cnn85_c[0] = i_cmp1262_cnn85_o[65];

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn17_cnn101(BLACKBOX,24)@9
    // out out_intel_reserved_ffwd_12_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_17_cnn102 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn17_cnn101 (
        .in_enable_in(VCC_q),
        .in_src_data_in_12_0(i_cmp1262_cnn85_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn17_cnn101_out_intel_reserved_ffwd_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,63)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn17_cnn101_out_intel_reserved_ffwd_12_0;

    // valid_fanout_reg6(REG,86)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= redist8_sync_in_aunroll_x_in_i_valid_5_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn12_cnn86(BLACKBOX,25)@7
    // out out_intel_reserved_ffwd_6_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_12_cnn87 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn12_cnn86 (
        .in_enable_in(VCC_q),
        .in_src_data_in_6_0(i_fpgaindvars_iv1698_replace_phi_cnn59_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn12_cnn86_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,66)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn12_cnn86_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg7(REG,87)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= redist6_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn13_cnn89(BLACKBOX,26)@5
    // out out_intel_reserved_ffwd_7_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_13_cnn90 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn13_cnn89 (
        .in_enable_in(VCC_q),
        .in_src_data_in_7_0(i_fpgaindvars_iv1692_replace_phi_cnn66_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn13_cnn89_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,69)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn13_cnn89_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg8(REG,88)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= redist5_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn14_cnn92(BLACKBOX,27)@4
    // out out_intel_reserved_ffwd_9_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_14_cnn93 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn14_cnn92 (
        .in_enable_in(VCC_q),
        .in_src_data_in_9_0(redist19_i_fpgaindvars_iv1694_replace_phi_cnn70_q_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn14_cnn92_out_intel_reserved_ffwd_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,71)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn14_cnn92_out_intel_reserved_ffwd_9_0;

    // valid_fanout_reg0(REG,80)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist9_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // redist13_bgTrunc_i_add_cnn82_sel_x_b_3(DELAY,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_bgTrunc_i_add_cnn82_sel_x_b_3_q <= redist12_bgTrunc_i_add_cnn82_sel_x_b_2_q;
        end
    end

    // sync_out_aunroll_x(GPOUT,79)@9
    assign out_c0_exi1_0 = GND_q;
    assign out_c0_exi1_1 = redist13_bgTrunc_i_add_cnn82_sel_x_b_3_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cnn8 = GND_q;

endmodule
