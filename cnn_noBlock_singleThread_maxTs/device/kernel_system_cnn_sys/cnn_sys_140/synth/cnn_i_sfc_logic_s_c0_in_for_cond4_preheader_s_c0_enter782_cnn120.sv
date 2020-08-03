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

// SystemVerilog created from cnn_i_sfc_logic_s_c0_in_for_cond4_preheader_s_c0_enter782_cnn120
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_logic_s_c0_in_for_cond4_preheader_s_c0_enter782_cnn120 (
    input wire [0:0] in_intel_reserved_ffwd_12_0,
    output wire [63:0] out_intel_reserved_ffwd_13_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_14_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    output wire [63:0] out_intel_reserved_ffwd_16_0,
    input wire [63:0] in_intel_reserved_ffwd_96_0,
    output wire [64:0] out_intel_reserved_ffwd_17_0,
    input wire [63:0] in_intel_reserved_ffwd_97_0,
    output wire [0:0] out_intel_reserved_ffwd_18_0,
    input wire [63:0] in_intel_reserved_ffwd_98_0,
    output wire [0:0] out_intel_reserved_ffwd_19_0,
    input wire [0:0] in_c0_eni2781_0,
    input wire [0:0] in_c0_eni2781_1,
    input wire [63:0] in_c0_eni2781_2,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exi1785_0,
    output wire [63:0] out_c0_exi1785_1,
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
    wire [64:0] i_add17_cnn149_a;
    wire [64:0] i_add17_cnn149_b;
    logic [64:0] i_add17_cnn149_o;
    wire [64:0] i_add17_cnn149_q;
    wire [65:0] i_cmp18_cnn150_a;
    wire [65:0] i_cmp18_cnn150_b;
    logic [65:0] i_cmp18_cnn150_o;
    wire [0:0] i_cmp18_cnn150_c;
    wire [65:0] i_cmp2659_cnn152_a;
    wire [65:0] i_cmp2659_cnn152_b;
    logic [65:0] i_cmp2659_cnn152_o;
    wire [0:0] i_cmp2659_cnn152_c;
    wire [0:0] i_fpgaindvars_iv1681_replace_phi_cnn133_s;
    reg [63:0] i_fpgaindvars_iv1681_replace_phi_cnn133_q;
    wire [0:0] i_fpgaindvars_iv1683_replace_phi_cnn137_s;
    reg [63:0] i_fpgaindvars_iv1683_replace_phi_cnn137_q;
    wire [0:0] i_fpgaindvars_iv1687_replace_phi_cnn126_s;
    reg [63:0] i_fpgaindvars_iv1687_replace_phi_cnn126_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp126241_cnn153_out_dest_data_out_12_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_conv1631_cnn146_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168258_cnn130_out_dest_data_out_96_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168460_cnn127_out_dest_data_out_97_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168861_cnn123_out_dest_data_out_98_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_unnamed_cnn20_cnn134_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn25_cnn169_out_intel_reserved_ffwd_18_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cnn26_cnn172_out_intel_reserved_ffwd_19_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn21_cnn157_out_intel_reserved_ffwd_13_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn22_cnn160_out_intel_reserved_ffwd_14_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn23_cnn163_out_intel_reserved_ffwd_16_0;
    wire [64:0] i_llvm_fpga_ffwd_source_i65_unnamed_cnn24_cnn166_out_intel_reserved_ffwd_17_0;
    wire [0:0] i_spec_select49_cnn151_s;
    reg [63:0] i_spec_select49_cnn151_q;
    wire [58:0] i_spec_select49_cnn151_vt_const_63_q;
    wire [63:0] i_spec_select49_cnn151_vt_join_q;
    wire [4:0] i_spec_select49_cnn151_vt_select_4_b;
    wire [0:0] i_umax1685_cnn139_s;
    reg [63:0] i_umax1685_cnn139_q;
    wire [58:0] i_umax1685_cnn139_vt_const_63_q;
    wire [63:0] i_umax1685_cnn139_vt_join_q;
    wire [4:0] i_umax1685_cnn139_vt_select_4_b;
    wire [0:0] i_umax1686_cnn142_s;
    reg [63:0] i_umax1686_cnn142_q;
    wire [65:0] i_unnamed_cnn138_a;
    wire [65:0] i_unnamed_cnn138_b;
    logic [65:0] i_unnamed_cnn138_o;
    wire [0:0] i_unnamed_cnn138_c;
    wire [64:0] i_unnamed_cnn140_a;
    wire [64:0] i_unnamed_cnn140_b;
    logic [64:0] i_unnamed_cnn140_o;
    wire [64:0] i_unnamed_cnn140_q;
    wire [63:0] i_unnamed_cnn140_vt_join_q;
    wire [4:0] i_unnamed_cnn140_vt_select_4_b;
    wire [65:0] i_unnamed_cnn141_a;
    wire [65:0] i_unnamed_cnn141_b;
    logic [65:0] i_unnamed_cnn141_o;
    wire [0:0] i_unnamed_cnn141_c;
    wire [64:0] i_unnamed_cnn143_a;
    wire [64:0] i_unnamed_cnn143_b;
    logic [64:0] i_unnamed_cnn143_o;
    wire [64:0] i_unnamed_cnn143_q;
    wire [64:0] i_unnamed_cnn144_vt_join_q;
    wire [63:0] i_unnamed_cnn144_vt_select_63_b;
    wire [65:0] i_unnamed_cnn145_a;
    wire [65:0] i_unnamed_cnn145_b;
    logic [65:0] i_unnamed_cnn145_o;
    wire [65:0] i_unnamed_cnn145_q;
    wire [0:0] i_unnamed_cnn156_q;
    wire [63:0] bgTrunc_i_add17_cnn149_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_cnn140_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_cnn143_sel_x_b;
    wire [64:0] bgTrunc_i_unnamed_cnn145_sel_x_b;
    wire [63:0] dupName_0_c_i64_1gr_x_q;
    wire [64:0] i_unnamed_cnn144_sel_x_b;
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
    reg [0:0] redist0_sync_in_aunroll_x_in_c0_eni2781_1_1_q;
    reg [0:0] redist1_sync_in_aunroll_x_in_c0_eni2781_1_4_q;
    reg [0:0] redist1_sync_in_aunroll_x_in_c0_eni2781_1_4_delay_0;
    reg [0:0] redist1_sync_in_aunroll_x_in_c0_eni2781_1_4_delay_1;
    reg [0:0] redist2_sync_in_aunroll_x_in_c0_eni2781_1_6_q;
    reg [0:0] redist2_sync_in_aunroll_x_in_c0_eni2781_1_6_delay_0;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_q;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_delay_0;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_delay_1;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni2781_2_7_q;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni2781_2_7_delay_0;
    reg [63:0] redist4_sync_in_aunroll_x_in_c0_eni2781_2_7_delay_1;
    reg [0:0] redist5_sync_in_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist5_sync_in_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist5_sync_in_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist6_sync_in_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist7_sync_in_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist8_sync_in_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist9_sync_in_aunroll_x_in_i_valid_7_q;
    reg [63:0] redist10_bgTrunc_i_add17_cnn149_sel_x_b_1_q;
    reg [63:0] redist11_bgTrunc_i_add17_cnn149_sel_x_b_2_q;
    reg [63:0] redist12_bgTrunc_i_add17_cnn149_sel_x_b_4_q;
    reg [63:0] redist12_bgTrunc_i_add17_cnn149_sel_x_b_4_delay_0;
    reg [63:0] redist13_i_unnamed_cnn144_vt_select_63_b_1_q;
    reg [4:0] redist14_i_unnamed_cnn140_vt_select_4_b_1_q;
    reg [63:0] redist15_i_unnamed_cnn140_vt_join_q_1_q;
    reg [4:0] redist16_i_umax1685_cnn139_vt_select_4_b_1_q;
    reg [4:0] redist17_i_spec_select49_cnn151_vt_select_4_b_1_q;
    reg [63:0] redist18_i_fpgaindvars_iv1683_replace_phi_cnn137_q_1_q;
    reg [63:0] redist19_i_fpgaindvars_iv1683_replace_phi_cnn137_q_2_q;
    reg [63:0] redist20_i_fpgaindvars_iv1681_replace_phi_cnn133_q_2_q;
    reg [0:0] redist21_i_cmp18_cnn150_c_1_q;
    reg [63:0] redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_inputreg0_q;


    // redist5_sync_in_aunroll_x_in_i_valid_3(DELAY,107)
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

    // redist6_sync_in_aunroll_x_in_i_valid_4(DELAY,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_sync_in_aunroll_x_in_i_valid_4_q <= redist5_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // redist7_sync_in_aunroll_x_in_i_valid_5(DELAY,109)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist7_sync_in_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist7_sync_in_aunroll_x_in_i_valid_5_q <= redist6_sync_in_aunroll_x_in_i_valid_4_q;
        end
    end

    // redist8_sync_in_aunroll_x_in_i_valid_6(DELAY,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_sync_in_aunroll_x_in_i_valid_6_q <= redist7_sync_in_aunroll_x_in_i_valid_5_q;
        end
    end

    // valid_fanout_reg7(REG,91)@7 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= redist8_sync_in_aunroll_x_in_i_valid_6_q;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // c_i64_1gr(CONSTANT,10)
    assign c_i64_1gr_q = 64'b1111111111111111111111111111111111111111111111111111111111111111;

    // valid_fanout_reg1(REG,85)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= redist7_sync_in_aunroll_x_in_i_valid_5_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168861_cnn123(BLACKBOX,22)@7
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168861_124 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168861_cnn123 (
        .in_intel_reserved_ffwd_98_0(in_intel_reserved_ffwd_98_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_98_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168861_cnn123_out_dest_data_out_98_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_in_aunroll_x_in_c0_eni2781_1_1(DELAY,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_in_aunroll_x_in_c0_eni2781_1_1_q <= in_c0_eni2781_1;
        end
    end

    // redist1_sync_in_aunroll_x_in_c0_eni2781_1_4(DELAY,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_in_aunroll_x_in_c0_eni2781_1_4_delay_0 <= redist0_sync_in_aunroll_x_in_c0_eni2781_1_1_q;
            redist1_sync_in_aunroll_x_in_c0_eni2781_1_4_delay_1 <= redist1_sync_in_aunroll_x_in_c0_eni2781_1_4_delay_0;
            redist1_sync_in_aunroll_x_in_c0_eni2781_1_4_q <= redist1_sync_in_aunroll_x_in_c0_eni2781_1_4_delay_1;
        end
    end

    // redist2_sync_in_aunroll_x_in_c0_eni2781_1_6(DELAY,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_in_aunroll_x_in_c0_eni2781_1_6_delay_0 <= redist1_sync_in_aunroll_x_in_c0_eni2781_1_4_q;
            redist2_sync_in_aunroll_x_in_c0_eni2781_1_6_q <= redist2_sync_in_aunroll_x_in_c0_eni2781_1_6_delay_0;
        end
    end

    // i_fpgaindvars_iv1687_replace_phi_cnn126(MUX,17)@7 + 1
    assign i_fpgaindvars_iv1687_replace_phi_cnn126_s = redist2_sync_in_aunroll_x_in_c0_eni2781_1_6_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_fpgaindvars_iv1687_replace_phi_cnn126_s)
                1'b0 : i_fpgaindvars_iv1687_replace_phi_cnn126_q <= i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168861_cnn123_out_dest_data_out_98_0;
                1'b1 : i_fpgaindvars_iv1687_replace_phi_cnn126_q <= c_i64_1gr_q;
                default : i_fpgaindvars_iv1687_replace_phi_cnn126_q <= 64'b0;
            endcase
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn21_cnn157(BLACKBOX,26)@8
    // out out_intel_reserved_ffwd_13_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_21_cnn158 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn21_cnn157 (
        .in_enable_in(VCC_q),
        .in_src_data_in_13_0(i_fpgaindvars_iv1687_replace_phi_cnn126_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn21_cnn157_out_intel_reserved_ffwd_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,53)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn21_cnn157_out_intel_reserved_ffwd_13_0;

    // valid_fanout_reg8(REG,92)@6 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= redist7_sync_in_aunroll_x_in_i_valid_5_q;
        end
    end

    // dupName_0_c_i64_1gr_x(CONSTANT,60)
    assign dupName_0_c_i64_1gr_x_q = 64'b0000000000000000000000000000000000000000000000000000000000000001;

    // valid_fanout_reg3(REG,87)@4 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168258_cnn130(BLACKBOX,20)@5
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168258_131 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168258_cnn130 (
        .in_intel_reserved_ffwd_96_0(in_intel_reserved_ffwd_96_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_96_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168258_cnn130_out_dest_data_out_96_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv1681_replace_phi_cnn133(MUX,15)@5 + 1
    assign i_fpgaindvars_iv1681_replace_phi_cnn133_s = redist1_sync_in_aunroll_x_in_c0_eni2781_1_4_q;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_fpgaindvars_iv1681_replace_phi_cnn133_s)
                1'b0 : i_fpgaindvars_iv1681_replace_phi_cnn133_q <= i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168258_cnn130_out_dest_data_out_96_0;
                1'b1 : i_fpgaindvars_iv1681_replace_phi_cnn133_q <= dupName_0_c_i64_1gr_x_q;
                default : i_fpgaindvars_iv1681_replace_phi_cnn133_q <= 64'b0;
            endcase
        end
    end

    // redist20_i_fpgaindvars_iv1681_replace_phi_cnn133_q_2(DELAY,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist20_i_fpgaindvars_iv1681_replace_phi_cnn133_q_2_q <= i_fpgaindvars_iv1681_replace_phi_cnn133_q;
        end
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn22_cnn160(BLACKBOX,27)@7
    // out out_intel_reserved_ffwd_14_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_22_cnn161 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn22_cnn160 (
        .in_enable_in(VCC_q),
        .in_src_data_in_14_0(redist20_i_fpgaindvars_iv1681_replace_phi_cnn133_q_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn22_cnn160_out_intel_reserved_ffwd_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,62)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn22_cnn160_out_intel_reserved_ffwd_14_0;

    // valid_fanout_reg9(REG,93)@1 + 1
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

    // valid_fanout_reg4(REG,88)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_unnamed_cnn20_cnn134(BLACKBOX,23)@2
    cnn_i_llvm_fpga_ffwd_dest_i64_unnamed_20_cnn135 thei_llvm_fpga_ffwd_dest_i64_unnamed_cnn20_cnn134 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i64_unnamed_cnn20_cnn134_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,86)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168460_cnn127(BLACKBOX,21)@2
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168460_128 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168460_cnn127 (
        .in_intel_reserved_ffwd_97_0(in_intel_reserved_ffwd_97_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_97_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168460_cnn127_out_dest_data_out_97_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv1683_replace_phi_cnn137(MUX,16)@2
    assign i_fpgaindvars_iv1683_replace_phi_cnn137_s = redist0_sync_in_aunroll_x_in_c0_eni2781_1_1_q;
    always @(i_fpgaindvars_iv1683_replace_phi_cnn137_s or i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168460_cnn127_out_dest_data_out_97_0 or i_llvm_fpga_ffwd_dest_i64_unnamed_cnn20_cnn134_out_dest_data_out_4_0)
    begin
        unique case (i_fpgaindvars_iv1683_replace_phi_cnn137_s)
            1'b0 : i_fpgaindvars_iv1683_replace_phi_cnn137_q = i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv_next168460_cnn127_out_dest_data_out_97_0;
            1'b1 : i_fpgaindvars_iv1683_replace_phi_cnn137_q = i_llvm_fpga_ffwd_dest_i64_unnamed_cnn20_cnn134_out_dest_data_out_4_0;
            default : i_fpgaindvars_iv1683_replace_phi_cnn137_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn23_cnn163(BLACKBOX,28)@2
    // out out_intel_reserved_ffwd_16_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_23_cnn164 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn23_cnn163 (
        .in_enable_in(VCC_q),
        .in_src_data_in_16_0(i_fpgaindvars_iv1683_replace_phi_cnn137_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn23_cnn163_out_intel_reserved_ffwd_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,65)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn23_cnn163_out_intel_reserved_ffwd_16_0;

    // redist9_sync_in_aunroll_x_in_i_valid_7(DELAY,111)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist9_sync_in_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist9_sync_in_aunroll_x_in_i_valid_7_q <= redist8_sync_in_aunroll_x_in_i_valid_6_q;
        end
    end

    // valid_fanout_reg10(REG,94)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= redist9_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // c_i65_1gr(CONSTANT,11)
    assign c_i65_1gr_q = 65'b11111111111111111111111111111111111111111111111111111111111111111;

    // i_spec_select49_cnn151_vt_const_63(CONSTANT,31)
    assign i_spec_select49_cnn151_vt_const_63_q = 59'b00000000000000000000000000000000000000000000000000000000000;

    // i_umax1685_cnn139_vt_const_63(CONSTANT,35)
    assign i_umax1685_cnn139_vt_const_63_q = 59'b11111111111111111111111111111111111111111111111111111111111;

    // redist18_i_fpgaindvars_iv1683_replace_phi_cnn137_q_1(DELAY,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist18_i_fpgaindvars_iv1683_replace_phi_cnn137_q_1_q <= i_fpgaindvars_iv1683_replace_phi_cnn137_q;
        end
    end

    // redist19_i_fpgaindvars_iv1683_replace_phi_cnn137_q_2(DELAY,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist19_i_fpgaindvars_iv1683_replace_phi_cnn137_q_2_q <= redist18_i_fpgaindvars_iv1683_replace_phi_cnn137_q_1_q;
        end
    end

    // c_i64_17(CONSTANT,9)
    assign c_i64_17_q = 64'b1111111111111111111111111111111111111111111111111111111111101111;

    // i_unnamed_cnn138(COMPARE,39)@3 + 1
    assign i_unnamed_cnn138_a = {2'b00, c_i64_17_q};
    assign i_unnamed_cnn138_b = {2'b00, redist18_i_fpgaindvars_iv1683_replace_phi_cnn137_q_1_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_unnamed_cnn138_o <= $unsigned(i_unnamed_cnn138_a) - $unsigned(i_unnamed_cnn138_b);
        end
    end
    assign i_unnamed_cnn138_c[0] = i_unnamed_cnn138_o[65];

    // i_umax1685_cnn139(MUX,34)@4
    assign i_umax1685_cnn139_s = i_unnamed_cnn138_c;
    always @(i_umax1685_cnn139_s or c_i64_17_q or redist19_i_fpgaindvars_iv1683_replace_phi_cnn137_q_2_q)
    begin
        unique case (i_umax1685_cnn139_s)
            1'b0 : i_umax1685_cnn139_q = c_i64_17_q;
            1'b1 : i_umax1685_cnn139_q = redist19_i_fpgaindvars_iv1683_replace_phi_cnn137_q_2_q;
            default : i_umax1685_cnn139_q = 64'b0;
        endcase
    end

    // i_umax1685_cnn139_vt_select_4(BITSELECT,37)@4
    assign i_umax1685_cnn139_vt_select_4_b = i_umax1685_cnn139_q[4:0];

    // redist16_i_umax1685_cnn139_vt_select_4_b_1(DELAY,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist16_i_umax1685_cnn139_vt_select_4_b_1_q <= i_umax1685_cnn139_vt_select_4_b;
        end
    end

    // i_umax1685_cnn139_vt_join(BITJOIN,36)@5
    assign i_umax1685_cnn139_vt_join_q = {i_umax1685_cnn139_vt_const_63_q, redist16_i_umax1685_cnn139_vt_select_4_b_1_q};

    // i_unnamed_cnn140(SUB,40)@5
    assign i_unnamed_cnn140_a = {1'b0, c_i64_1gr_q};
    assign i_unnamed_cnn140_b = {1'b0, i_umax1685_cnn139_vt_join_q};
    assign i_unnamed_cnn140_o = $unsigned(i_unnamed_cnn140_a) - $unsigned(i_unnamed_cnn140_b);
    assign i_unnamed_cnn140_q = i_unnamed_cnn140_o[64:0];

    // bgTrunc_i_unnamed_cnn140_sel_x(BITSELECT,56)@5
    assign bgTrunc_i_unnamed_cnn140_sel_x_b = i_unnamed_cnn140_q[63:0];

    // i_unnamed_cnn140_vt_select_4(BITSELECT,43)@5
    assign i_unnamed_cnn140_vt_select_4_b = bgTrunc_i_unnamed_cnn140_sel_x_b[4:0];

    // redist14_i_unnamed_cnn140_vt_select_4_b_1(DELAY,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_unnamed_cnn140_vt_select_4_b_1_q <= i_unnamed_cnn140_vt_select_4_b;
        end
    end

    // i_unnamed_cnn140_vt_join(BITJOIN,42)@6
    assign i_unnamed_cnn140_vt_join_q = {i_spec_select49_cnn151_vt_const_63_q, redist14_i_unnamed_cnn140_vt_select_4_b_1_q};

    // redist15_i_unnamed_cnn140_vt_join_q_1(DELAY,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist15_i_unnamed_cnn140_vt_join_q_1_q <= i_unnamed_cnn140_vt_join_q;
        end
    end

    // i_unnamed_cnn141(COMPARE,44)@6 + 1
    assign i_unnamed_cnn141_a = {2'b00, i_unnamed_cnn140_vt_join_q};
    assign i_unnamed_cnn141_b = {2'b00, i_fpgaindvars_iv1681_replace_phi_cnn133_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_unnamed_cnn141_o <= $unsigned(i_unnamed_cnn141_a) - $unsigned(i_unnamed_cnn141_b);
        end
    end
    assign i_unnamed_cnn141_c[0] = i_unnamed_cnn141_o[65];

    // i_umax1686_cnn142(MUX,38)@7 + 1
    assign i_umax1686_cnn142_s = i_unnamed_cnn141_c;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_umax1686_cnn142_s)
                1'b0 : i_umax1686_cnn142_q <= redist15_i_unnamed_cnn140_vt_join_q_1_q;
                1'b1 : i_umax1686_cnn142_q <= redist20_i_fpgaindvars_iv1681_replace_phi_cnn133_q_2_q;
                default : i_umax1686_cnn142_q <= 64'b0;
            endcase
        end
    end

    // i_unnamed_cnn143(ADD,45)@8
    assign i_unnamed_cnn143_a = {1'b0, i_umax1686_cnn142_q};
    assign i_unnamed_cnn143_b = {1'b0, i_fpgaindvars_iv1687_replace_phi_cnn126_q};
    assign i_unnamed_cnn143_o = $unsigned(i_unnamed_cnn143_a) + $unsigned(i_unnamed_cnn143_b);
    assign i_unnamed_cnn143_q = i_unnamed_cnn143_o[64:0];

    // bgTrunc_i_unnamed_cnn143_sel_x(BITSELECT,57)@8
    assign bgTrunc_i_unnamed_cnn143_sel_x_b = i_unnamed_cnn143_q[63:0];

    // i_unnamed_cnn144_sel_x(BITSELECT,81)@8
    assign i_unnamed_cnn144_sel_x_b = {1'b0, bgTrunc_i_unnamed_cnn143_sel_x_b[63:0]};

    // i_unnamed_cnn144_vt_select_63(BITSELECT,49)@8
    assign i_unnamed_cnn144_vt_select_63_b = i_unnamed_cnn144_sel_x_b[63:0];

    // redist13_i_unnamed_cnn144_vt_select_63_b_1(DELAY,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_unnamed_cnn144_vt_select_63_b_1_q <= i_unnamed_cnn144_vt_select_63_b;
        end
    end

    // i_unnamed_cnn144_vt_join(BITJOIN,48)@9
    assign i_unnamed_cnn144_vt_join_q = {GND_q, redist13_i_unnamed_cnn144_vt_select_63_b_1_q};

    // i_unnamed_cnn145(ADD,50)@9
    assign i_unnamed_cnn145_a = {1'b0, i_unnamed_cnn144_vt_join_q};
    assign i_unnamed_cnn145_b = {1'b0, c_i65_1gr_q};
    assign i_unnamed_cnn145_o = $unsigned(i_unnamed_cnn145_a) + $unsigned(i_unnamed_cnn145_b);
    assign i_unnamed_cnn145_q = i_unnamed_cnn145_o[65:0];

    // bgTrunc_i_unnamed_cnn145_sel_x(BITSELECT,58)@9
    assign bgTrunc_i_unnamed_cnn145_sel_x_b = i_unnamed_cnn145_q[64:0];

    // i_llvm_fpga_ffwd_source_i65_unnamed_cnn24_cnn166(BLACKBOX,29)@9
    // out out_intel_reserved_ffwd_17_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i65_unnamed_24_cnn167 thei_llvm_fpga_ffwd_source_i65_unnamed_cnn24_cnn166 (
        .in_enable_in(VCC_q),
        .in_src_data_in_17_0(bgTrunc_i_unnamed_cnn145_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_i65_unnamed_cnn24_cnn166_out_intel_reserved_ffwd_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,68)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_i65_unnamed_cnn24_cnn166_out_intel_reserved_ffwd_17_0;

    // valid_fanout_reg11(REG,95)@5 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= redist6_sync_in_aunroll_x_in_i_valid_4_q;
        end
    end

    // c_i64_16(CONSTANT,8)
    assign c_i64_16_q = 64'b0000000000000000000000000000000000000000000000000000000000010000;

    // valid_fanout_reg5(REG,89)@4 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_conv1631_cnn146(BLACKBOX,19)@5
    cnn_i_llvm_fpga_ffwd_dest_i64_conv1631_147 thei_llvm_fpga_ffwd_dest_i64_conv1631_cnn146 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i64_conv1631_cnn146_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_inputreg0(DELAY,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_inputreg0_q <= in_c0_eni2781_2;
        end
    end

    // redist3_sync_in_aunroll_x_in_c0_eni2781_2_4(DELAY,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_delay_0 <= redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_inputreg0_q;
            redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_delay_1 <= redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_delay_0;
            redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_q <= redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_delay_1;
        end
    end

    // i_add17_cnn149(ADD,12)@5
    assign i_add17_cnn149_a = {1'b0, redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_q};
    assign i_add17_cnn149_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_conv1631_cnn146_out_dest_data_out_2_0};
    assign i_add17_cnn149_o = $unsigned(i_add17_cnn149_a) + $unsigned(i_add17_cnn149_b);
    assign i_add17_cnn149_q = i_add17_cnn149_o[64:0];

    // bgTrunc_i_add17_cnn149_sel_x(BITSELECT,55)@5
    assign bgTrunc_i_add17_cnn149_sel_x_b = i_add17_cnn149_q[63:0];

    // redist10_bgTrunc_i_add17_cnn149_sel_x_b_1(DELAY,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_bgTrunc_i_add17_cnn149_sel_x_b_1_q <= bgTrunc_i_add17_cnn149_sel_x_b;
        end
    end

    // i_cmp18_cnn150(COMPARE,13)@6
    assign i_cmp18_cnn150_a = {2'b00, redist10_bgTrunc_i_add17_cnn149_sel_x_b_1_q};
    assign i_cmp18_cnn150_b = {2'b00, c_i64_16_q};
    assign i_cmp18_cnn150_o = $unsigned(i_cmp18_cnn150_a) - $unsigned(i_cmp18_cnn150_b);
    assign i_cmp18_cnn150_c[0] = i_cmp18_cnn150_o[65];

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn25_cnn169(BLACKBOX,24)@6
    // out out_intel_reserved_ffwd_18_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_25_cnn170 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn25_cnn169 (
        .in_enable_in(VCC_q),
        .in_src_data_in_18_0(i_cmp18_cnn150_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn25_cnn169_out_intel_reserved_ffwd_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,71)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn25_cnn169_out_intel_reserved_ffwd_18_0;

    // valid_fanout_reg12(REG,96)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= redist9_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // redist11_bgTrunc_i_add17_cnn149_sel_x_b_2(DELAY,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_bgTrunc_i_add17_cnn149_sel_x_b_2_q <= redist10_bgTrunc_i_add17_cnn149_sel_x_b_1_q;
        end
    end

    // redist21_i_cmp18_cnn150_c_1(DELAY,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist21_i_cmp18_cnn150_c_1_q <= i_cmp18_cnn150_c;
        end
    end

    // i_spec_select49_cnn151(MUX,30)@7
    assign i_spec_select49_cnn151_s = redist21_i_cmp18_cnn150_c_1_q;
    always @(i_spec_select49_cnn151_s or c_i64_16_q or redist11_bgTrunc_i_add17_cnn149_sel_x_b_2_q)
    begin
        unique case (i_spec_select49_cnn151_s)
            1'b0 : i_spec_select49_cnn151_q = c_i64_16_q;
            1'b1 : i_spec_select49_cnn151_q = redist11_bgTrunc_i_add17_cnn149_sel_x_b_2_q;
            default : i_spec_select49_cnn151_q = 64'b0;
        endcase
    end

    // i_spec_select49_cnn151_vt_select_4(BITSELECT,33)@7
    assign i_spec_select49_cnn151_vt_select_4_b = i_spec_select49_cnn151_q[4:0];

    // redist17_i_spec_select49_cnn151_vt_select_4_b_1(DELAY,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist17_i_spec_select49_cnn151_vt_select_4_b_1_q <= i_spec_select49_cnn151_vt_select_4_b;
        end
    end

    // i_spec_select49_cnn151_vt_join(BITJOIN,32)@8
    assign i_spec_select49_cnn151_vt_join_q = {i_spec_select49_cnn151_vt_const_63_q, redist17_i_spec_select49_cnn151_vt_select_4_b_1_q};

    // redist4_sync_in_aunroll_x_in_c0_eni2781_2_7(DELAY,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_sync_in_aunroll_x_in_c0_eni2781_2_7_delay_0 <= redist3_sync_in_aunroll_x_in_c0_eni2781_2_4_q;
            redist4_sync_in_aunroll_x_in_c0_eni2781_2_7_delay_1 <= redist4_sync_in_aunroll_x_in_c0_eni2781_2_7_delay_0;
            redist4_sync_in_aunroll_x_in_c0_eni2781_2_7_q <= redist4_sync_in_aunroll_x_in_c0_eni2781_2_7_delay_1;
        end
    end

    // i_cmp2659_cnn152(COMPARE,14)@8 + 1
    assign i_cmp2659_cnn152_a = {2'b00, redist4_sync_in_aunroll_x_in_c0_eni2781_2_7_q};
    assign i_cmp2659_cnn152_b = {2'b00, i_spec_select49_cnn151_vt_join_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_cmp2659_cnn152_o <= $unsigned(i_cmp2659_cnn152_a) - $unsigned(i_cmp2659_cnn152_b);
        end
    end
    assign i_cmp2659_cnn152_c[0] = i_cmp2659_cnn152_o[65];

    // valid_fanout_reg6(REG,90)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= redist9_sync_in_aunroll_x_in_i_valid_7_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp126241_cnn153(BLACKBOX,18)@9
    cnn_i_llvm_fpga_ffwd_dest_i1_cmp126241_154 thei_llvm_fpga_ffwd_dest_i1_cmp126241_cnn153 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_i1_cmp126241_cnn153_out_dest_data_out_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_cnn156(LOGICAL,51)@9
    assign i_unnamed_cnn156_q = i_llvm_fpga_ffwd_dest_i1_cmp126241_cnn153_out_dest_data_out_12_0 & i_cmp2659_cnn152_c;

    // i_llvm_fpga_ffwd_source_i1_unnamed_cnn26_cnn172(BLACKBOX,25)@9
    // out out_intel_reserved_ffwd_19_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i1_unnamed_26_cnn173 thei_llvm_fpga_ffwd_source_i1_unnamed_cnn26_cnn172 (
        .in_enable_in(VCC_q),
        .in_src_data_in_19_0(i_unnamed_cnn156_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_i1_unnamed_cnn26_cnn172_out_intel_reserved_ffwd_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,74)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cnn26_cnn172_out_intel_reserved_ffwd_19_0;

    // valid_fanout_reg0(REG,84)@8 + 1
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

    // redist12_bgTrunc_i_add17_cnn149_sel_x_b_4(DELAY,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_bgTrunc_i_add17_cnn149_sel_x_b_4_delay_0 <= redist11_bgTrunc_i_add17_cnn149_sel_x_b_2_q;
            redist12_bgTrunc_i_add17_cnn149_sel_x_b_4_q <= redist12_bgTrunc_i_add17_cnn149_sel_x_b_4_delay_0;
        end
    end

    // sync_out_aunroll_x(GPOUT,83)@9
    assign out_c0_exi1785_0 = GND_q;
    assign out_c0_exi1785_1 = redist12_bgTrunc_i_add17_cnn149_sel_x_b_4_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cnn8 = GND_q;

endmodule
