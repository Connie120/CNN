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

// SystemVerilog created from cnn_i_sfc_logic_s_c0_in_for_inc101_s_c0_enter930_cnn2585
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_logic_s_c0_in_for_inc101_s_c0_enter930_cnn2585 (
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    output wire [63:0] out_intel_reserved_ffwd_96_0,
    input wire [0:0] in_i_valid,
    input wire [63:0] in_intel_reserved_ffwd_14_0,
    output wire [63:0] out_intel_reserved_ffwd_97_0,
    input wire [63:0] in_intel_reserved_ffwd_16_0,
    output wire [63:0] out_intel_reserved_ffwd_98_0,
    input wire [0:0] in_intel_reserved_ffwd_18_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    output wire [0:0] out_c0_exi1931_0,
    output wire [0:0] out_c0_exi1931_1,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cnn8,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [64:0] i_fpgaindvars_iv_next1682_cnn2593_a;
    wire [64:0] i_fpgaindvars_iv_next1682_cnn2593_b;
    logic [64:0] i_fpgaindvars_iv_next1682_cnn2593_o;
    wire [64:0] i_fpgaindvars_iv_next1682_cnn2593_q;
    wire [64:0] i_fpgaindvars_iv_next1684_cnn2600_a;
    wire [64:0] i_fpgaindvars_iv_next1684_cnn2600_b;
    logic [64:0] i_fpgaindvars_iv_next1684_cnn2600_o;
    wire [64:0] i_fpgaindvars_iv_next1684_cnn2600_q;
    wire [64:0] i_fpgaindvars_iv_next1688_cnn2607_a;
    wire [64:0] i_fpgaindvars_iv_next1688_cnn2607_b;
    logic [64:0] i_fpgaindvars_iv_next1688_cnn2607_o;
    wire [64:0] i_fpgaindvars_iv_next1688_cnn2607_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1847_cnn2608_out_dest_data_out_18_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_conv1628_cnn2601_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_conv1629_cnn2594_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_conv1630_cnn2587_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv168143_cnn2590_out_dest_data_out_14_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1683_replace_phi46_cnn2597_out_dest_data_out_16_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv168742_cnn2604_out_dest_data_out_13_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn181_cnn2611_out_intel_reserved_ffwd_96_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn182_cnn2614_out_intel_reserved_ffwd_97_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn183_cnn2617_out_intel_reserved_ffwd_98_0;
    wire [63:0] bgTrunc_i_fpgaindvars_iv_next1682_cnn2593_sel_x_b;
    wire [63:0] bgTrunc_i_fpgaindvars_iv_next1684_cnn2600_sel_x_b;
    wire [63:0] bgTrunc_i_fpgaindvars_iv_next1688_cnn2607_sel_x_b;
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


    // valid_fanout_reg8(REG,51)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg8_q <= in_i_valid;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // valid_fanout_reg1(REG,44)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_conv1630_cnn2587(BLACKBOX,13)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_conv1630_2588 thei_llvm_fpga_ffwd_dest_i64_conv1630_cnn2587 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i64_conv1630_cnn2587_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,45)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv168143_cnn2590(BLACKBOX,14)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv168143_2591 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv168143_cnn2590 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv168143_cnn2590_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv_next1682_cnn2593(ADD,7)@1
    assign i_fpgaindvars_iv_next1682_cnn2593_a = {1'b0, i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv168143_cnn2590_out_dest_data_out_14_0};
    assign i_fpgaindvars_iv_next1682_cnn2593_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_conv1630_cnn2587_out_dest_data_out_2_0};
    assign i_fpgaindvars_iv_next1682_cnn2593_o = $unsigned(i_fpgaindvars_iv_next1682_cnn2593_a) + $unsigned(i_fpgaindvars_iv_next1682_cnn2593_b);
    assign i_fpgaindvars_iv_next1682_cnn2593_q = i_fpgaindvars_iv_next1682_cnn2593_o[64:0];

    // bgTrunc_i_fpgaindvars_iv_next1682_cnn2593_sel_x(BITSELECT,24)@1
    assign bgTrunc_i_fpgaindvars_iv_next1682_cnn2593_sel_x_b = i_fpgaindvars_iv_next1682_cnn2593_q[63:0];

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn181_cnn2611(BLACKBOX,17)@1
    // out out_intel_reserved_ffwd_96_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_181_cnn2612 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn181_cnn2611 (
        .in_enable_in(VCC_q),
        .in_src_data_in_96_0(bgTrunc_i_fpgaindvars_iv_next1682_cnn2593_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_96_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn181_cnn2611_out_intel_reserved_ffwd_96_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,21)
    assign out_intel_reserved_ffwd_96_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn181_cnn2611_out_intel_reserved_ffwd_96_0;

    // valid_fanout_reg9(REG,52)@0 + 1
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

    // valid_fanout_reg3(REG,46)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_conv1629_cnn2594(BLACKBOX,12)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_conv1629_2595 thei_llvm_fpga_ffwd_dest_i64_conv1629_cnn2594 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i64_conv1629_cnn2594_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,47)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1683_replace_phi46_cnn2597(BLACKBOX,15)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1683_replace_phi46_2598 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1683_replace_phi46_cnn2597 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1683_replace_phi46_cnn2597_out_dest_data_out_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv_next1684_cnn2600(SUB,8)@1
    assign i_fpgaindvars_iv_next1684_cnn2600_a = {1'b0, i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1683_replace_phi46_cnn2597_out_dest_data_out_16_0};
    assign i_fpgaindvars_iv_next1684_cnn2600_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_conv1629_cnn2594_out_dest_data_out_2_0};
    assign i_fpgaindvars_iv_next1684_cnn2600_o = $unsigned(i_fpgaindvars_iv_next1684_cnn2600_a) - $unsigned(i_fpgaindvars_iv_next1684_cnn2600_b);
    assign i_fpgaindvars_iv_next1684_cnn2600_q = i_fpgaindvars_iv_next1684_cnn2600_o[64:0];

    // bgTrunc_i_fpgaindvars_iv_next1684_cnn2600_sel_x(BITSELECT,25)@1
    assign bgTrunc_i_fpgaindvars_iv_next1684_cnn2600_sel_x_b = i_fpgaindvars_iv_next1684_cnn2600_q[63:0];

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn182_cnn2614(BLACKBOX,18)@1
    // out out_intel_reserved_ffwd_97_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_182_cnn2615 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn182_cnn2614 (
        .in_enable_in(VCC_q),
        .in_src_data_in_97_0(bgTrunc_i_fpgaindvars_iv_next1684_cnn2600_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_97_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn182_cnn2614_out_intel_reserved_ffwd_97_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_97_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn182_cnn2614_out_intel_reserved_ffwd_97_0;

    // valid_fanout_reg10(REG,53)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= in_i_valid;
        end
    end

    // valid_fanout_reg5(REG,48)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_conv1628_cnn2601(BLACKBOX,11)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_conv1628_2602 thei_llvm_fpga_ffwd_dest_i64_conv1628_cnn2601 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i64_conv1628_cnn2601_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,49)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg6_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv168742_cnn2604(BLACKBOX,16)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv168742_2605 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv168742_cnn2604 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv168742_cnn2604_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv_next1688_cnn2607(SUB,9)@1
    assign i_fpgaindvars_iv_next1688_cnn2607_a = {1'b0, i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv168742_cnn2604_out_dest_data_out_13_0};
    assign i_fpgaindvars_iv_next1688_cnn2607_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_conv1628_cnn2601_out_dest_data_out_2_0};
    assign i_fpgaindvars_iv_next1688_cnn2607_o = $unsigned(i_fpgaindvars_iv_next1688_cnn2607_a) - $unsigned(i_fpgaindvars_iv_next1688_cnn2607_b);
    assign i_fpgaindvars_iv_next1688_cnn2607_q = i_fpgaindvars_iv_next1688_cnn2607_o[64:0];

    // bgTrunc_i_fpgaindvars_iv_next1688_cnn2607_sel_x(BITSELECT,26)@1
    assign bgTrunc_i_fpgaindvars_iv_next1688_cnn2607_sel_x_b = i_fpgaindvars_iv_next1688_cnn2607_q[63:0];

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn183_cnn2617(BLACKBOX,19)@1
    // out out_intel_reserved_ffwd_98_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_183_cnn2618 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn183_cnn2617 (
        .in_enable_in(VCC_q),
        .in_src_data_in_98_0(bgTrunc_i_fpgaindvars_iv_next1688_cnn2607_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_98_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn183_cnn2617_out_intel_reserved_ffwd_98_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_98_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn183_cnn2617_out_intel_reserved_ffwd_98_0;

    // valid_fanout_reg0(REG,43)@0 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= 1'b0;
        end
        else
        begin
            valid_fanout_reg0_q <= in_i_valid;
        end
    end

    // valid_fanout_reg7(REG,50)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= in_i_valid;
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp1847_cnn2608(BLACKBOX,10)@1
    cnn_i_llvm_fpga_ffwd_dest_i1_cmp1847_2609 thei_llvm_fpga_ffwd_dest_i1_cmp1847_cnn2608 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i1_cmp1847_cnn2608_out_dest_data_out_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_aunroll_x(GPOUT,42)@1
    assign out_c0_exi1931_0 = GND_q;
    assign out_c0_exi1931_1 = i_llvm_fpga_ffwd_dest_i1_cmp1847_cnn2608_out_dest_data_out_18_0;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cnn8 = GND_q;

endmodule
