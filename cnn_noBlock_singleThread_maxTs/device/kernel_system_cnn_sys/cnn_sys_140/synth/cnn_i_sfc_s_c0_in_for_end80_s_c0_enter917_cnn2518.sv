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

// SystemVerilog created from cnn_i_sfc_s_c0_in_for_end80_s_c0_enter917_cnn2518
// SystemVerilog created on Thu Jun 25 10:37:46 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_s_c0_in_for_end80_s_c0_enter917_cnn2518 (
    input wire [0:0] in_intel_reserved_ffwd_92_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [63:0] in_output,
    input wire [0:0] in_c0_eni3916_0,
    input wire [63:0] in_c0_eni3916_1,
    input wire [63:0] in_c0_eni3916_2,
    input wire [63:0] in_c0_eni3916_3,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit923_0,
    output wire [63:0] out_c0_exit923_1,
    output wire [0:0] out_c0_exit923_2,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_data_out_0;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_data_out_1;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_data_out_2;
    wire [0:0] i_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x_out_c0_exi2922_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x_out_c0_exi2922_1;
    wire [0:0] i_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x_out_c0_exi2922_2;
    reg [0:0] rst_sync_rst_sclrn;


    // i_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x(BLACKBOX,10)@0
    // out out_o_valid@5
    // out out_unnamed_cnn8@5
    // out out_c0_exi2922_0@5
    // out out_c0_exi2922_1@5
    // out out_c0_exi2922_2@5
    cnn_i_sfc_logic_s_c0_in_for_end80_s_c0_enter917_cnn2519 thei_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_92_0(in_intel_reserved_ffwd_92_0),
        .in_output(in_output),
        .in_c0_eni3916_0(in_c0_eni3916_0),
        .in_c0_eni3916_1(in_c0_eni3916_1),
        .in_c0_eni3916_2(in_c0_eni3916_2),
        .in_c0_eni3916_3(in_c0_eni3916_3),
        .out_o_valid(i_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x_out_o_valid),
        .out_unnamed_cnn8(),
        .out_c0_exi2922_0(i_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x_out_c0_exi2922_0),
        .out_c0_exi2922_1(i_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x_out_c0_exi2922_1),
        .out_c0_exi2922_2(i_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x_out_c0_exi2922_2),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x(BLACKBOX,9)@20000000
    // out out_valid_out@20000006
    // out out_data_out_0@20000006
    // out out_data_out_1@20000006
    // out out_data_out_2@20000006
    cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_end80_s_c0_exit923_cnn2538 thei_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x_out_o_valid),
        .in_data_in_0(i_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x_out_c0_exi2922_0),
        .in_data_in_1(i_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x_out_c0_exi2922_1),
        .in_data_in_2(i_sfc_logic_s_c0_in_for_end80_cnns_c0_enter917_cnn2519_aunroll_x_out_c0_exi2922_2),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_valid_out),
        .out_data_out_0(i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_data_out_0),
        .out_data_out_1(i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_data_out_1),
        .out_data_out_2(i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_data_out_2),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // sync_out(GPOUT,7)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_stall_entry;

    // dupName_0_sync_out_aunroll_x(GPOUT,12)@11
    assign out_c0_exit923_0 = i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_data_out_0;
    assign out_c0_exit923_1 = i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_data_out_1;
    assign out_c0_exit923_2 = i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_data_out_2;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_end80_cnns_c0_exit923_cnn2537_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,13)
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
