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

// SystemVerilog created from cnn_i_sfc_s_c0_in_for_cond29_preheader_s_c0_enter8127_cnn528
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_s_c0_in_for_cond29_preheader_s_c0_enter8127_cnn528 (
    input wire [63:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [64:0] in_intel_reserved_ffwd_17_0,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [0:0] in_c0_eni7_0,
    input wire [0:0] in_c0_eni7_1,
    input wire [63:0] in_c0_eni7_2,
    input wire [63:0] in_c0_eni7_3,
    input wire [63:0] in_c0_eni7_4,
    input wire [63:0] in_c0_eni7_5,
    input wire [63:0] in_c0_eni7_6,
    input wire [0:0] in_c0_eni7_7,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit824_0,
    output wire [63:0] out_c0_exit824_1,
    output wire [0:0] out_c0_exit824_2,
    output wire [0:0] out_c0_exit824_3,
    output wire [63:0] out_c0_exit824_4,
    output wire [63:0] out_c0_exit824_5,
    output wire [63:0] out_c0_exit824_6,
    output wire [63:0] out_c0_exit824_7,
    output wire [63:0] out_c0_exit824_8,
    output wire [0:0] out_c0_exit824_9,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] admit_one_i_empty;
    wire admit_one_i_empty_bitsignaltemp;
    wire [0:0] admit_one_i_exit;
    wire admit_one_i_exit_bitsignaltemp;
    wire [0:0] admit_one_i_exit_valid;
    wire admit_one_i_exit_valid_bitsignaltemp;
    wire [0:0] admit_one_i_stall;
    wire admit_one_i_stall_bitsignaltemp;
    wire [0:0] admit_one_o_forked;
    wire admit_one_o_forked_bitsignaltemp;
    wire [0:0] admit_one_o_stall;
    wire admit_one_o_stall_bitsignaltemp;
    wire [0:0] admit_one_o_valid;
    wire admit_one_o_valid_bitsignaltemp;
    wire [0:0] exiting_q;
    wire [0:0] not_valid_in_q;
    reg [0:0] stall_out_reg_0_q;
    reg [0:0] stall_out_reg_1_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_0;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_1;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_2;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_3;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_4;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_5;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_6;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_7;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_8;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_9;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_cnn_B5_exited;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_1;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_2;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_3;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_4;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_5;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_6;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_7;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_8;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_9;
    reg [0:0] rst_sync_rst_sclrn;


    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x(BLACKBOX,12)@20000000
    // out out_valid_out@20000006
    // out out_data_out_0@20000006
    // out out_data_out_1@20000006
    // out out_data_out_2@20000006
    // out out_data_out_3@20000006
    // out out_data_out_4@20000006
    // out out_data_out_5@20000006
    // out out_data_out_6@20000006
    // out out_data_out_7@20000006
    // out out_data_out_8@20000006
    // out out_data_out_9@20000006
    cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_coA000000Z_s_c0_exit824_cnn609 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x (
        .in_input_accepted(admit_one_o_valid),
        .in_mask_valid(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_cnn_B5_exited),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_o_valid),
        .in_data_in_0(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_0),
        .in_data_in_1(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_1),
        .in_data_in_2(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_2),
        .in_data_in_3(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_3),
        .in_data_in_4(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_4),
        .in_data_in_5(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_5),
        .in_data_in_6(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_6),
        .in_data_in_7(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_7),
        .in_data_in_8(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_8),
        .in_data_in_9(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_9),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_valid_out),
        .out_data_out_0(i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_0),
        .out_data_out_1(i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_1),
        .out_data_out_2(i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_2),
        .out_data_out_3(i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_3),
        .out_data_out_4(i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_4),
        .out_data_out_5(i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_5),
        .out_data_out_6(i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_6),
        .out_data_out_7(i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_7),
        .out_data_out_8(i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_8),
        .out_data_out_9(i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_9),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // stall_out_reg_0(REG,6)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_out_reg_0_q <= i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_stall_entry;
        end
    end

    // stall_out_reg_1(REG,7)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_out_reg_1_q <= stall_out_reg_0_q;
        end
    end

    // i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x(BLACKBOX,13)@0
    // out out_cnn_B5_exited@5
    // out out_exiting_valid_out@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exi9_0@5
    // out out_c0_exi9_1@5
    // out out_c0_exi9_2@5
    // out out_c0_exi9_3@5
    // out out_c0_exi9_4@5
    // out out_c0_exi9_5@5
    // out out_c0_exi9_6@5
    // out out_c0_exi9_7@5
    // out out_c0_exi9_8@5
    // out out_c0_exi9_9@5
    cnn_i_sfc_logic_s_c0_in_for_cond29_preheader_s_c0_enter8127_cnn529 thei_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x (
        .in_buffer_in(admit_one_o_forked),
        .in_i_valid(admit_one_o_valid),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_c0_eni7_0(in_c0_eni7_0),
        .in_c0_eni7_1(in_c0_eni7_1),
        .in_c0_eni7_2(in_c0_eni7_2),
        .in_c0_eni7_3(in_c0_eni7_3),
        .in_c0_eni7_4(in_c0_eni7_4),
        .in_c0_eni7_5(in_c0_eni7_5),
        .in_c0_eni7_6(in_c0_eni7_6),
        .in_c0_eni7_7(in_c0_eni7_7),
        .out_cnn_B5_exited(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_cnn_B5_exited),
        .out_exiting_valid_out(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_pipeline_valid_out),
        .out_c0_exi9_0(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_0),
        .out_c0_exi9_1(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_1),
        .out_c0_exi9_2(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_2),
        .out_c0_exi9_3(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_3),
        .out_c0_exi9_4(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_4),
        .out_c0_exi9_5(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_5),
        .out_c0_exi9_6(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_6),
        .out_c0_exi9_7(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_7),
        .out_c0_exi9_8(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_8),
        .out_c0_exi9_9(i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_c0_exi9_9),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // exiting(LOGICAL,3)
    assign exiting_q = ~ (i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_exiting_valid_out);

    // not_valid_in(LOGICAL,4)
    assign not_valid_in_q = ~ (in_i_valid);

    // admit_one(EXTIFACE,2)
    assign admit_one_i_empty = not_valid_in_q;
    assign admit_one_i_exit = exiting_q;
    assign admit_one_i_exit_valid = i_sfc_logic_s_c0_in_for_cond29_preheader_cnns_c0_enter8127_cnn529_aunroll_x_out_pipeline_valid_out;
    assign admit_one_i_stall = stall_out_reg_1_q;
    assign admit_one_i_empty_bitsignaltemp = admit_one_i_empty[0];
    assign admit_one_i_exit_bitsignaltemp = admit_one_i_exit[0];
    assign admit_one_i_exit_valid_bitsignaltemp = admit_one_i_exit_valid[0];
    assign admit_one_i_stall_bitsignaltemp = admit_one_i_stall[0];
    assign admit_one_o_forked[0] = admit_one_o_forked_bitsignaltemp;
    assign admit_one_o_stall[0] = admit_one_o_stall_bitsignaltemp;
    assign admit_one_o_valid[0] = admit_one_o_valid_bitsignaltemp;
    acl_admit_one #(
        .II(1),
        .LATENCY_FORKED_TO_EXIT(5),
        .ASYNC_RESET(0),
        .LATENCY_UPSTREAM_EMPTY(0),
        .LATENCY_UPSTREAM_STALL_VALID_ROUND_TRIP(0),
        .SYNCHRONIZE_RESET(0)
    ) theadmit_one (
        .i_empty(admit_one_i_empty_bitsignaltemp),
        .i_exit(admit_one_i_exit_bitsignaltemp),
        .i_exit_valid(admit_one_i_exit_valid_bitsignaltemp),
        .i_stall(admit_one_i_stall_bitsignaltemp),
        .o_forked(admit_one_o_forked_bitsignaltemp),
        .o_stall(admit_one_o_stall_bitsignaltemp),
        .o_valid(admit_one_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // sync_out(GPOUT,9)@20000000
    assign out_o_stall = admit_one_o_stall;

    // dupName_0_sync_out_aunroll_x(GPOUT,15)@11
    assign out_c0_exit824_0 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_0;
    assign out_c0_exit824_1 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_1;
    assign out_c0_exit824_2 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_2;
    assign out_c0_exit824_3 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_3;
    assign out_c0_exit824_4 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_4;
    assign out_c0_exit824_5 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_5;
    assign out_c0_exit824_6 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_6;
    assign out_c0_exit824_7 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_7;
    assign out_c0_exit824_8 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_8;
    assign out_c0_exit824_9 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_data_out_9;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond29_preheader_cnns_c0_exit824_cnn608_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,16)
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
