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

// SystemVerilog created from cnn_i_sfc_logic_s_c0_in_for_inc97_loopexit_s_c0_enter926_cnn2544
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_logic_s_c0_in_for_inc97_loopexit_s_c0_enter926_cnn2544 (
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_93_0,
    input wire [0:0] in_i_valid,
    input wire [63:0] in_intel_reserved_ffwd_20_0,
    output wire [63:0] out_intel_reserved_ffwd_94_0,
    input wire [63:0] in_intel_reserved_ffwd_21_0,
    output wire [63:0] out_intel_reserved_ffwd_95_0,
    input wire [63:0] in_intel_reserved_ffwd_23_0,
    input wire [63:0] in_intel_reserved_ffwd_25_0,
    output wire [0:0] out_c0_exi1927_0,
    output wire [0:0] out_c0_exi1927_1,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cnn8,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_128_q;
    wire [65:0] i_cmp5_cnn2549_a;
    wire [65:0] i_cmp5_cnn2549_b;
    logic [65:0] i_cmp5_cnn2549_o;
    wire [0:0] i_cmp5_cnn2549_c;
    wire [64:0] i_fpgaindvars_iv_next1672_cnn2556_a;
    wire [64:0] i_fpgaindvars_iv_next1672_cnn2556_b;
    logic [64:0] i_fpgaindvars_iv_next1672_cnn2556_o;
    wire [64:0] i_fpgaindvars_iv_next1672_cnn2556_q;
    wire [64:0] i_fpgaindvars_iv_next1674_cnn2563_a;
    wire [64:0] i_fpgaindvars_iv_next1674_cnn2563_b;
    logic [64:0] i_fpgaindvars_iv_next1674_cnn2563_o;
    wire [64:0] i_fpgaindvars_iv_next1674_cnn2563_q;
    wire [64:0] i_fpgaindvars_iv_next1677_cnn2570_a;
    wire [64:0] i_fpgaindvars_iv_next1677_cnn2570_b;
    logic [64:0] i_fpgaindvars_iv_next1677_cnn2570_o;
    wire [64:0] i_fpgaindvars_iv_next1677_cnn2570_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_add3153_cnn2546_out_dest_data_out_25_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_conv9824_cnn2564_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_conv9825_cnn2557_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_conv9826_cnn2550_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv167149_cnn2553_out_dest_data_out_21_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1673_replace_phi52_cnn2560_out_dest_data_out_23_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv167648_cnn2567_out_dest_data_out_20_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn177_cnn2571_out_intel_reserved_ffwd_93_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn178_cnn2574_out_intel_reserved_ffwd_94_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn179_cnn2577_out_intel_reserved_ffwd_95_0;
    wire [63:0] bgTrunc_i_fpgaindvars_iv_next1672_cnn2556_sel_x_b;
    wire [63:0] bgTrunc_i_fpgaindvars_iv_next1674_cnn2563_sel_x_b;
    wire [63:0] bgTrunc_i_fpgaindvars_iv_next1677_cnn2570_sel_x_b;
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


    // valid_fanout_reg8(REG,53)@0 + 1
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

    // valid_fanout_reg2(REG,47)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_conv9826_cnn2550(BLACKBOX,15)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_conv9826_2551 thei_llvm_fpga_ffwd_dest_i64_conv9826_cnn2550 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i64_conv9826_cnn2550_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,48)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv167149_cnn2553(BLACKBOX,16)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv167149_2554 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv167149_cnn2553 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv167149_cnn2553_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv_next1672_cnn2556(ADD,9)@1
    assign i_fpgaindvars_iv_next1672_cnn2556_a = {1'b0, i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv167149_cnn2553_out_dest_data_out_21_0};
    assign i_fpgaindvars_iv_next1672_cnn2556_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_conv9826_cnn2550_out_dest_data_out_1_0};
    assign i_fpgaindvars_iv_next1672_cnn2556_o = $unsigned(i_fpgaindvars_iv_next1672_cnn2556_a) + $unsigned(i_fpgaindvars_iv_next1672_cnn2556_b);
    assign i_fpgaindvars_iv_next1672_cnn2556_q = i_fpgaindvars_iv_next1672_cnn2556_o[64:0];

    // bgTrunc_i_fpgaindvars_iv_next1672_cnn2556_sel_x(BITSELECT,26)@1
    assign bgTrunc_i_fpgaindvars_iv_next1672_cnn2556_sel_x_b = i_fpgaindvars_iv_next1672_cnn2556_q[63:0];

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn177_cnn2571(BLACKBOX,19)@1
    // out out_intel_reserved_ffwd_93_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_177_cnn2572 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn177_cnn2571 (
        .in_enable_in(VCC_q),
        .in_src_data_in_93_0(bgTrunc_i_fpgaindvars_iv_next1672_cnn2556_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_93_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn177_cnn2571_out_intel_reserved_ffwd_93_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,23)
    assign out_intel_reserved_ffwd_93_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn177_cnn2571_out_intel_reserved_ffwd_93_0;

    // valid_fanout_reg9(REG,54)@0 + 1
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

    // valid_fanout_reg4(REG,49)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_conv9825_cnn2557(BLACKBOX,14)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_conv9825_2558 thei_llvm_fpga_ffwd_dest_i64_conv9825_cnn2557 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i64_conv9825_cnn2557_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,50)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1673_replace_phi52_cnn2560(BLACKBOX,17)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1673_replace_phi52_2561 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1673_replace_phi52_cnn2560 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1673_replace_phi52_cnn2560_out_dest_data_out_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv_next1674_cnn2563(SUB,10)@1
    assign i_fpgaindvars_iv_next1674_cnn2563_a = {1'b0, i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv1673_replace_phi52_cnn2560_out_dest_data_out_23_0};
    assign i_fpgaindvars_iv_next1674_cnn2563_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_conv9825_cnn2557_out_dest_data_out_1_0};
    assign i_fpgaindvars_iv_next1674_cnn2563_o = $unsigned(i_fpgaindvars_iv_next1674_cnn2563_a) - $unsigned(i_fpgaindvars_iv_next1674_cnn2563_b);
    assign i_fpgaindvars_iv_next1674_cnn2563_q = i_fpgaindvars_iv_next1674_cnn2563_o[64:0];

    // bgTrunc_i_fpgaindvars_iv_next1674_cnn2563_sel_x(BITSELECT,27)@1
    assign bgTrunc_i_fpgaindvars_iv_next1674_cnn2563_sel_x_b = i_fpgaindvars_iv_next1674_cnn2563_q[63:0];

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn178_cnn2574(BLACKBOX,20)@1
    // out out_intel_reserved_ffwd_94_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_178_cnn2575 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn178_cnn2574 (
        .in_enable_in(VCC_q),
        .in_src_data_in_94_0(bgTrunc_i_fpgaindvars_iv_next1674_cnn2563_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_94_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn178_cnn2574_out_intel_reserved_ffwd_94_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_94_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn178_cnn2574_out_intel_reserved_ffwd_94_0;

    // valid_fanout_reg10(REG,55)@0 + 1
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

    // valid_fanout_reg6(REG,51)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_conv9824_cnn2564(BLACKBOX,13)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_conv9824_2565 thei_llvm_fpga_ffwd_dest_i64_conv9824_cnn2564 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i64_conv9824_cnn2564_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,52)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv167648_cnn2567(BLACKBOX,18)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv167648_2568 thei_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv167648_cnn2567 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv167648_cnn2567_out_dest_data_out_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpgaindvars_iv_next1677_cnn2570(SUB,11)@1
    assign i_fpgaindvars_iv_next1677_cnn2570_a = {1'b0, i_llvm_fpga_ffwd_dest_i64_fpgaindvars_iv167648_cnn2567_out_dest_data_out_20_0};
    assign i_fpgaindvars_iv_next1677_cnn2570_b = {1'b0, i_llvm_fpga_ffwd_dest_i64_conv9824_cnn2564_out_dest_data_out_1_0};
    assign i_fpgaindvars_iv_next1677_cnn2570_o = $unsigned(i_fpgaindvars_iv_next1677_cnn2570_a) - $unsigned(i_fpgaindvars_iv_next1677_cnn2570_b);
    assign i_fpgaindvars_iv_next1677_cnn2570_q = i_fpgaindvars_iv_next1677_cnn2570_o[64:0];

    // bgTrunc_i_fpgaindvars_iv_next1677_cnn2570_sel_x(BITSELECT,28)@1
    assign bgTrunc_i_fpgaindvars_iv_next1677_cnn2570_sel_x_b = i_fpgaindvars_iv_next1677_cnn2570_q[63:0];

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn179_cnn2577(BLACKBOX,21)@1
    // out out_intel_reserved_ffwd_95_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_179_cnn2578 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn179_cnn2577 (
        .in_enable_in(VCC_q),
        .in_src_data_in_95_0(bgTrunc_i_fpgaindvars_iv_next1677_cnn2570_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_95_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn179_cnn2577_out_intel_reserved_ffwd_95_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_95_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn179_cnn2577_out_intel_reserved_ffwd_95_0;

    // valid_fanout_reg0(REG,45)@0 + 1
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

    // c_i64_128(CONSTANT,7)
    assign c_i64_128_q = 64'b0000000000000000000000000000000000000000000000000000000010000000;

    // valid_fanout_reg1(REG,46)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i64_add3153_cnn2546(BLACKBOX,12)@1
    cnn_i_llvm_fpga_ffwd_dest_i64_add3153_2547 thei_llvm_fpga_ffwd_dest_i64_add3153_cnn2546 (
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_25_0(i_llvm_fpga_ffwd_dest_i64_add3153_cnn2546_out_dest_data_out_25_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp5_cnn2549(COMPARE,8)@1
    assign i_cmp5_cnn2549_a = {2'b00, i_llvm_fpga_ffwd_dest_i64_add3153_cnn2546_out_dest_data_out_25_0};
    assign i_cmp5_cnn2549_b = {2'b00, c_i64_128_q};
    assign i_cmp5_cnn2549_o = $unsigned(i_cmp5_cnn2549_a) - $unsigned(i_cmp5_cnn2549_b);
    assign i_cmp5_cnn2549_c[0] = i_cmp5_cnn2549_o[65];

    // sync_out_aunroll_x(GPOUT,44)@1
    assign out_c0_exi1927_0 = GND_q;
    assign out_c0_exi1927_1 = i_cmp5_cnn2549_c;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cnn8 = GND_q;

endmodule
