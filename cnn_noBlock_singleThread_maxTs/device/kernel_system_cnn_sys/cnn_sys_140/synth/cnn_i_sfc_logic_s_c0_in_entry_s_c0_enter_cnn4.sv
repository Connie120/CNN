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

// SystemVerilog created from cnn_i_sfc_logic_s_c0_in_entry_s_c0_enter_cnn4
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_logic_s_c0_in_entry_s_c0_enter_cnn4 (
    input wire [31:0] in_Tc,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_Tm,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    input wire [31:0] in_Tr,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [63:0] out_intel_reserved_ffwd_5_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cnn7_0,
    output wire [0:0] out_unnamed_cnn8,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_1gr_q;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn1_cnn21_out_intel_reserved_ffwd_0_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn2_cnn24_out_intel_reserved_ffwd_1_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn3_cnn27_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn4_cnn30_out_intel_reserved_ffwd_3_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn5_cnn33_out_intel_reserved_ffwd_4_0;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn6_cnn36_out_intel_reserved_ffwd_5_0;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_tc_sync_buffer_cnn14_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_tm_sync_buffer_cnn10_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_tr_sync_buffer_cnn6_out_buffer_out;
    wire [64:0] i_unnamed_cnn18_a;
    wire [64:0] i_unnamed_cnn18_b;
    logic [64:0] i_unnamed_cnn18_o;
    wire [64:0] i_unnamed_cnn18_q;
    wire [64:0] i_unnamed_cnn19_a;
    wire [64:0] i_unnamed_cnn19_b;
    logic [64:0] i_unnamed_cnn19_o;
    wire [64:0] i_unnamed_cnn19_q;
    wire [64:0] i_unnamed_cnn20_a;
    wire [64:0] i_unnamed_cnn20_b;
    logic [64:0] i_unnamed_cnn20_o;
    wire [64:0] i_unnamed_cnn20_q;
    wire [63:0] bgTrunc_i_unnamed_cnn18_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_cnn19_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_cnn20_sel_x_b;
    wire [63:0] i_conv16_cnn17_sel_x_b;
    wire [63:0] i_conv98_cnn13_sel_x_b;
    wire [63:0] i_conv_cnn9_sel_x_b;
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


    // valid_fanout_reg4(REG,59)@1 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // valid_fanout_reg1(REG,56)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_tr_sync_buffer_cnn6(BLACKBOX,22)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    cnn_i_llvm_fpga_sync_buffer_i32_tr_sync_buffer_7 thei_llvm_fpga_sync_buffer_i32_tr_sync_buffer_cnn6 (
        .in_buffer_in(in_Tr),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_tr_sync_buffer_cnn6_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_conv_cnn9_sel_x(BITSELECT,53)@2
    assign i_conv_cnn9_sel_x_b = {{32{i_llvm_fpga_sync_buffer_i32_tr_sync_buffer_cnn6_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_tr_sync_buffer_cnn6_out_buffer_out[31:0]};

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn1_cnn21(BLACKBOX,14)@2
    // out out_intel_reserved_ffwd_0_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_1_cnn22 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn1_cnn21 (
        .in_enable_in(VCC_q),
        .in_src_data_in_0_0(i_conv_cnn9_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn1_cnn21_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,28)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn1_cnn21_out_intel_reserved_ffwd_0_0;

    // valid_fanout_reg5(REG,60)@1 + 1
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

    // valid_fanout_reg2(REG,57)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_tm_sync_buffer_cnn10(BLACKBOX,21)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    cnn_i_llvm_fpga_sync_buffer_i32_tm_sync_buffer_11 thei_llvm_fpga_sync_buffer_i32_tm_sync_buffer_cnn10 (
        .in_buffer_in(in_Tm),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_tm_sync_buffer_cnn10_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_conv98_cnn13_sel_x(BITSELECT,52)@2
    assign i_conv98_cnn13_sel_x_b = {{32{i_llvm_fpga_sync_buffer_i32_tm_sync_buffer_cnn10_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_tm_sync_buffer_cnn10_out_buffer_out[31:0]};

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn2_cnn24(BLACKBOX,15)@2
    // out out_intel_reserved_ffwd_1_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_2_cnn25 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn2_cnn24 (
        .in_enable_in(VCC_q),
        .in_src_data_in_1_0(i_conv98_cnn13_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn2_cnn24_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn2_cnn24_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg6(REG,61)@1 + 1
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

    // valid_fanout_reg3(REG,58)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_tc_sync_buffer_cnn14(BLACKBOX,20)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    cnn_i_llvm_fpga_sync_buffer_i32_tc_sync_buffer_15 thei_llvm_fpga_sync_buffer_i32_tc_sync_buffer_cnn14 (
        .in_buffer_in(in_Tc),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_tc_sync_buffer_cnn14_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_conv16_cnn17_sel_x(BITSELECT,51)@2
    assign i_conv16_cnn17_sel_x_b = {{32{i_llvm_fpga_sync_buffer_i32_tc_sync_buffer_cnn14_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_tc_sync_buffer_cnn14_out_buffer_out[31:0]};

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn3_cnn27(BLACKBOX,16)@2
    // out out_intel_reserved_ffwd_2_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_3_cnn28 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn3_cnn27 (
        .in_enable_in(VCC_q),
        .in_src_data_in_2_0(i_conv16_cnn17_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn3_cnn27_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,41)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn3_cnn27_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg7(REG,62)@1 + 1
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

    // c_i64_1gr(CONSTANT,7)
    assign c_i64_1gr_q = 64'b1111111111111111111111111111111111111111111111111111111111111111;

    // i_unnamed_cnn18(SUB,23)@2
    assign i_unnamed_cnn18_a = {1'b0, c_i64_1gr_q};
    assign i_unnamed_cnn18_b = {1'b0, i_conv98_cnn13_sel_x_b};
    assign i_unnamed_cnn18_o = $unsigned(i_unnamed_cnn18_a) - $unsigned(i_unnamed_cnn18_b);
    assign i_unnamed_cnn18_q = i_unnamed_cnn18_o[64:0];

    // bgTrunc_i_unnamed_cnn18_sel_x(BITSELECT,31)@2
    assign bgTrunc_i_unnamed_cnn18_sel_x_b = i_unnamed_cnn18_q[63:0];

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn4_cnn30(BLACKBOX,17)@2
    // out out_intel_reserved_ffwd_3_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_4_cnn31 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn4_cnn30 (
        .in_enable_in(VCC_q),
        .in_src_data_in_3_0(bgTrunc_i_unnamed_cnn18_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn4_cnn30_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,43)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn4_cnn30_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg8(REG,63)@1 + 1
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

    // i_unnamed_cnn19(SUB,24)@2
    assign i_unnamed_cnn19_a = {1'b0, c_i64_1gr_q};
    assign i_unnamed_cnn19_b = {1'b0, i_conv16_cnn17_sel_x_b};
    assign i_unnamed_cnn19_o = $unsigned(i_unnamed_cnn19_a) - $unsigned(i_unnamed_cnn19_b);
    assign i_unnamed_cnn19_q = i_unnamed_cnn19_o[64:0];

    // bgTrunc_i_unnamed_cnn19_sel_x(BITSELECT,32)@2
    assign bgTrunc_i_unnamed_cnn19_sel_x_b = i_unnamed_cnn19_q[63:0];

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn5_cnn33(BLACKBOX,18)@2
    // out out_intel_reserved_ffwd_4_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_5_cnn34 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn5_cnn33 (
        .in_enable_in(VCC_q),
        .in_src_data_in_4_0(bgTrunc_i_unnamed_cnn19_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn5_cnn33_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,45)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn5_cnn33_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg9(REG,64)@1 + 1
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

    // i_unnamed_cnn20(SUB,25)@2
    assign i_unnamed_cnn20_a = {1'b0, c_i64_1gr_q};
    assign i_unnamed_cnn20_b = {1'b0, i_conv_cnn9_sel_x_b};
    assign i_unnamed_cnn20_o = $unsigned(i_unnamed_cnn20_a) - $unsigned(i_unnamed_cnn20_b);
    assign i_unnamed_cnn20_q = i_unnamed_cnn20_o[64:0];

    // bgTrunc_i_unnamed_cnn20_sel_x(BITSELECT,33)@2
    assign bgTrunc_i_unnamed_cnn20_sel_x_b = i_unnamed_cnn20_q[63:0];

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn6_cnn36(BLACKBOX,19)@2
    // out out_intel_reserved_ffwd_5_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_6_cnn37 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn6_cnn36 (
        .in_enable_in(VCC_q),
        .in_src_data_in_5_0(bgTrunc_i_unnamed_cnn20_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn6_cnn36_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn6_cnn36_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg0(REG,55)@1 + 1
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

    // sync_out_aunroll_x(GPOUT,54)@2
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cnn7_0 = GND_q;
    assign out_unnamed_cnn8 = GND_q;

endmodule
