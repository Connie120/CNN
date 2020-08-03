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

// SystemVerilog created from cnn_i_sfc_s_c0_in_for_inc101_s_c0_enter930_cnn2584
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_s_c0_in_for_inc101_s_c0_enter930_cnn2584 (
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    output wire [63:0] out_intel_reserved_ffwd_96_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [63:0] in_intel_reserved_ffwd_14_0,
    output wire [63:0] out_intel_reserved_ffwd_97_0,
    input wire [63:0] in_intel_reserved_ffwd_16_0,
    output wire [63:0] out_intel_reserved_ffwd_98_0,
    input wire [0:0] in_intel_reserved_ffwd_18_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_unnamed_cnn180_0,
    output wire [0:0] out_c0_exit932_0,
    output wire [0:0] out_c0_exit932_1,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x_out_data_out_0;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x_out_data_out_1;
    wire [63:0] i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_intel_reserved_ffwd_96_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_intel_reserved_ffwd_97_0;
    wire [63:0] i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_intel_reserved_ffwd_98_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_c0_exi1931_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_c0_exi1931_1;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x(BLACKBOX,15)@20000000
    // out out_valid_out@20000006
    // out out_data_out_0@20000006
    // out out_data_out_1@20000006
    cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_s_c0_exit932_cnn2622 thei_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_o_valid),
        .in_data_in_0(i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_c0_exi1931_0),
        .in_data_in_1(i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_c0_exi1931_1),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x_out_valid_out),
        .out_data_out_0(i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x_out_data_out_0),
        .out_data_out_1(i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x_out_data_out_1),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x(BLACKBOX,16)@0
    // out out_intel_reserved_ffwd_96_0@20000000
    // out out_intel_reserved_ffwd_97_0@20000000
    // out out_intel_reserved_ffwd_98_0@20000000
    // out out_o_valid@1
    // out out_unnamed_cnn8@1
    // out out_c0_exi1931_0@1
    // out out_c0_exi1931_1@1
    cnn_i_sfc_logic_s_c0_in_for_inc101_s_c0_enter930_cnn2585 thei_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_96_0(i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_intel_reserved_ffwd_96_0),
        .out_intel_reserved_ffwd_97_0(i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_intel_reserved_ffwd_97_0),
        .out_intel_reserved_ffwd_98_0(i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_intel_reserved_ffwd_98_0),
        .out_o_valid(i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_o_valid),
        .out_unnamed_cnn8(),
        .out_c0_exi1931_0(i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_c0_exi1931_0),
        .out_c0_exi1931_1(i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_c0_exi1931_1),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // regfree_osync(GPOUT,6)
    assign out_intel_reserved_ffwd_96_0 = i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_intel_reserved_ffwd_96_0;

    // sync_out(GPOUT,8)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_97_0 = i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_intel_reserved_ffwd_97_0;

    // dupName_1_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_98_0 = i_sfc_logic_s_c0_in_for_inc101_cnns_c0_enter930_cnn2585_aunroll_x_out_intel_reserved_ffwd_98_0;

    // dupName_0_sync_out_aunroll_x(GPOUT,18)@7
    assign out_c0_exit932_0 = i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x_out_data_out_0;
    assign out_c0_exit932_1 = i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x_out_data_out_1;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,19)
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
