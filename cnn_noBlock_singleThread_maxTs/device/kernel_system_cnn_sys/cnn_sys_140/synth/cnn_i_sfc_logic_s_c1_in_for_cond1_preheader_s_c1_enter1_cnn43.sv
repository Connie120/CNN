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

// SystemVerilog created from cnn_i_sfc_logic_s_c1_in_for_cond1_preheader_s_c1_enter1_cnn43
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_logic_s_c1_in_for_cond1_preheader_s_c1_enter1_cnn43 (
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    input wire [0:0] in_c1_eni1_0,
    input wire [63:0] in_c1_eni1_1,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cnn10_0,
    output wire [0:0] out_unnamed_cnn8,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_cnn9_cnn46_out_intel_reserved_ffwd_8_0;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    reg [0:0] redist0_valid_fanout_reg0_q_7_q;
    reg [63:0] redist1_sync_in_aunroll_x_in_c1_eni1_1_1_q;


    // valid_fanout_reg1(REG,10)@1 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // redist1_sync_in_aunroll_x_in_c1_eni1_1_1(DELAY,12)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_in_aunroll_x_in_c1_eni1_1_1_q <= in_c1_eni1_1;
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_ffwd_source_i64_unnamed_cnn9_cnn46(BLACKBOX,4)@2
    // out out_intel_reserved_ffwd_8_0@20000000
    cnn_i_llvm_fpga_ffwd_source_i64_unnamed_9_cnn47 thei_llvm_fpga_ffwd_source_i64_unnamed_cnn9_cnn46 (
        .in_enable_in(VCC_q),
        .in_src_data_in_8_0(redist1_sync_in_aunroll_x_in_c1_eni1_1_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i64_unnamed_cnn9_cnn46_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,5)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i64_unnamed_cnn9_cnn46_out_intel_reserved_ffwd_8_0;

    // valid_fanout_reg0(REG,9)@1 + 1
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

    // redist0_valid_fanout_reg0_q_7(DELAY,11)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("SYNC"), .phase(1), .modulus(2), .reset_high(1'b0) )
    redist0_valid_fanout_reg0_q_7 ( .xin(valid_fanout_reg0_q), .xout(redist0_valid_fanout_reg0_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,8)@9
    assign out_o_valid = redist0_valid_fanout_reg0_q_7_q;
    assign out_unnamed_cnn10_0 = GND_q;
    assign out_unnamed_cnn8 = GND_q;

endmodule
