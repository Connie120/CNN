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

// SystemVerilog created from cnn_i_sfc_logic_s_c0_in_for_inc105_s_c0_enter934_cnn2625
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_logic_s_c0_in_for_inc105_s_c0_enter934_cnn2625 (
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    output wire [63:0] out_intel_reserved_ffwd_100_0,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_intel_reserved_ffwd_11_0,
    output wire [63:0] out_intel_reserved_ffwd_101_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    output wire [63:0] out_intel_reserved_ffwd_99_0,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    output wire [0:0] out_c0_exi1935_0,
    output wire [0:0] out_c0_exi1935_1,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cnn8,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [64:0] i_fpgaindvars_iv_next1693_cnn2633_a;
    wire [64:0] i_fpgaindvars_iv_next1693_cnn2633_b;
    logic [64:0] i_fpgaindvars_iv_next1693_cnn2633_o;
    wire [64:0] i_fpgaindvars_iv_next1693_cnn2633_q;
    wire [64:0] i_fpgaindvars_iv_next1695_cnn2640_a;
    wire [64:0] i_fpgaindvars_iv_next1695_cnn2640_b;
    logic [64:0] i_fpgaindvars_iv_next1695_cnn2640_o;
    wire [64:0] i_fpgaindvars_iv_next1695_cnn2640_q;
    wire [64:0] i_fpgaindvars_iv_next1699_cnn2647_a;
    wire [64:0] i_fpgaindvars_iv_next1699_cnn2647_b;
    logic [64:0] i_fpgaindvars_iv_next1699_cnn2647_o;
    wire [64:0] i_fpgaindvars_iv_next1699_cnn2647_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp839_cnn2648_out_dest_data_out_11_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_conv20_cnn2641_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_conv21_cnn2634_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_conv22_cnn2627_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv169235_cnn2630_out_dest_data_out_7_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1694_replace_phi38_cnn2637_out_dest_data_out_9_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv169834_cnn2644_out_dest_data_out_6_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn185_cnn2651_out_intel_reserved_ffwd_99_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn186_cnn2654_out_intel_reserved_ffwd_100_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn187_cnn2657_out_intel_reserved_ffwd_101_0;
    wire [63:0] bgTrunc_i_fpgaindvars_iv_next1693_cnn2633_sel_x_b;
    wire [63:0] bgTrunc_i_fpgaindvars_iv_next1695_cnn2640_sel_x_b;
    wire [63:0] bgTrunc_i_fpgaindvars_iv_next1699_cnn2647_sel_x_b;
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

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

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

    // i_llvm_fpga_ffwd_dest_i64_conv21_cnn2634(BLACKBOX,12)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_conv21_2635 thei_llvm_fpga_ffwd_dest_i64_conv21_cnn2634 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i64_conv21_cnn2634_out_dest_data_out_0_0),
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

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1694_replace_phi38_cnn2637(BLACKBOX,15)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1694_replace_phi38_2638 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1694_replace_phi38_cnn2637 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1694_replace_phi38_cnn2637_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv_next1695_cnn2640(SUB,8)@1
    assign i_fpgaindvars_iv_next1695_cnn2640_a = {1'b0, i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1694_replace_phi38_cnn2637_out_dest_data_out_9_0};
    assign i_fpgaindvars_iv_next1695_cnn2640_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_conv21_cnn2634_out_dest_data_out_0_0};
    assign i_fpgaindvars_iv_next1695_cnn2640_o = $unsigned(i_fpgaindvars_iv_next1695_cnn2640_a) - $unsigned(i_fpgaindvars_iv_next1695_cnn2640_b);
    assign i_fpgaindvars_iv_next1695_cnn2640_q = i_fpgaindvars_iv_next1695_cnn2640_o[64:0];

    // bgTrunc_i_fpgaindvars_iv_next1695_cnn2640_sel_x(BITSELECT,25)@1
    assign bgTrunc_i_fpgaindvars_iv_next1695_cnn2640_sel_x_b = i_fpgaindvars_iv_next1695_cnn2640_q[63:0];

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn186_cnn2654(BLACKBOX,18)@1
    // out out_intel_reserved_ffwd_100_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_186_cnn2655 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn186_cnn2654 (
        .in_enable_in(VCC_q),
        .in_src_data_in_100_0(bgTrunc_i_fpgaindvars_iv_next1695_cnn2640_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_100_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn186_cnn2654_out_intel_reserved_ffwd_100_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,21)
    assign out_intel_reserved_ffwd_100_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn186_cnn2654_out_intel_reserved_ffwd_100_0;

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

    // i_llvm_fpga_ffwd_dest_i64_conv20_cnn2641(BLACKBOX,11)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_conv20_2642 thei_llvm_fpga_ffwd_dest_i64_conv20_cnn2641 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i64_conv20_cnn2641_out_dest_data_out_0_0),
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

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv169834_cnn2644(BLACKBOX,16)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv169834_2645 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv169834_cnn2644 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv169834_cnn2644_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv_next1699_cnn2647(SUB,9)@1
    assign i_fpgaindvars_iv_next1699_cnn2647_a = {1'b0, i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv169834_cnn2644_out_dest_data_out_6_0};
    assign i_fpgaindvars_iv_next1699_cnn2647_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_conv20_cnn2641_out_dest_data_out_0_0};
    assign i_fpgaindvars_iv_next1699_cnn2647_o = $unsigned(i_fpgaindvars_iv_next1699_cnn2647_a) - $unsigned(i_fpgaindvars_iv_next1699_cnn2647_b);
    assign i_fpgaindvars_iv_next1699_cnn2647_q = i_fpgaindvars_iv_next1699_cnn2647_o[64:0];

    // bgTrunc_i_fpgaindvars_iv_next1699_cnn2647_sel_x(BITSELECT,26)@1
    assign bgTrunc_i_fpgaindvars_iv_next1699_cnn2647_sel_x_b = i_fpgaindvars_iv_next1699_cnn2647_q[63:0];

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn187_cnn2657(BLACKBOX,19)@1
    // out out_intel_reserved_ffwd_101_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_187_cnn2658 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn187_cnn2657 (
        .in_enable_in(VCC_q),
        .in_src_data_in_101_0(bgTrunc_i_fpgaindvars_iv_next1699_cnn2647_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_101_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn187_cnn2657_out_intel_reserved_ffwd_101_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_101_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn187_cnn2657_out_intel_reserved_ffwd_101_0;

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

    // i_llvm_fpga_ffwd_dest_i64_conv22_cnn2627(BLACKBOX,13)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_conv22_2628 thei_llvm_fpga_ffwd_dest_i64_conv22_cnn2627 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i64_conv22_cnn2627_out_dest_data_out_0_0),
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

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv169235_cnn2630(BLACKBOX,14)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv169235_2631 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv169235_cnn2630 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv169235_cnn2630_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv_next1693_cnn2633(ADD,7)@1
    assign i_fpgaindvars_iv_next1693_cnn2633_a = {1'b0, i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv169235_cnn2630_out_dest_data_out_7_0};
    assign i_fpgaindvars_iv_next1693_cnn2633_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_conv22_cnn2627_out_dest_data_out_0_0};
    assign i_fpgaindvars_iv_next1693_cnn2633_o = $unsigned(i_fpgaindvars_iv_next1693_cnn2633_a) + $unsigned(i_fpgaindvars_iv_next1693_cnn2633_b);
    assign i_fpgaindvars_iv_next1693_cnn2633_q = i_fpgaindvars_iv_next1693_cnn2633_o[64:0];

    // bgTrunc_i_fpgaindvars_iv_next1693_cnn2633_sel_x(BITSELECT,24)@1
    assign bgTrunc_i_fpgaindvars_iv_next1693_cnn2633_sel_x_b = i_fpgaindvars_iv_next1693_cnn2633_q[63:0];

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn185_cnn2651(BLACKBOX,17)@1
    // out out_intel_reserved_ffwd_99_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_185_cnn2652 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn185_cnn2651 (
        .in_enable_in(VCC_q),
        .in_src_data_in_99_0(bgTrunc_i_fpgaindvars_iv_next1693_cnn2633_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_99_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn185_cnn2651_out_intel_reserved_ffwd_99_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_99_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn185_cnn2651_out_intel_reserved_ffwd_99_0;

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

    // i_llvm_fpga_ffwd_dest_i1_cmp839_cnn2648(BLACKBOX,10)@1
    cnn_i_llvm_fpga_ffwd_dest_i1_cmp839_2649 thei_llvm_fpga_ffwd_dest_i1_cmp839_cnn2648 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i1_cmp839_cnn2648_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_aunroll_x(GPOUT,42)@1
    assign out_c0_exi1935_0 = GND_q;
    assign out_c0_exi1935_1 = i_llvm_fpga_ffwd_dest_i1_cmp839_cnn2648_out_dest_data_out_11_0;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cnn8 = GND_q;

endmodule
