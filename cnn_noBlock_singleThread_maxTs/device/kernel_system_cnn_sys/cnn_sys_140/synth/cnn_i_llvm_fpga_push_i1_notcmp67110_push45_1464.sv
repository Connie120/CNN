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

// SystemVerilog created from cnn_i_llvm_fpga_push_i1_notcmp67110_push45_1464
// SystemVerilog created on Thu Jun 25 10:37:45 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_llvm_fpga_push_i1_notcmp67110_push45_1464 (
    input wire [0:0] in_feedback_stall_in_45,
    output wire [7:0] out_feedback_out_45,
    output wire [0:0] out_feedback_valid_out_45,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in,
    input wire [0:0] in_fanout_adaptor943,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [6:0] c_i7_0gr_q;
    wire [7:0] element_extension_q;
    wire [7:0] i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_data_in;
    wire [0:0] i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_dir;
    wire i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_dir_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_stall_in;
    wire i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_predicate;
    wire i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_stall_in;
    wire i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_valid_in;
    wire i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_valid_in_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_data_out;
    wire [7:0] i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_valid_out;
    wire i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_valid_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_stall_out;
    wire i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_valid_out;
    wire i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_valid_out_bitsignaltemp;
    wire [0:0] adapt_scalar_trunc_sel_x_b;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // c_i7_0gr(CONSTANT,4)
    assign c_i7_0gr_q = 7'b0000000;

    // element_extension(BITJOIN,5)@755
    assign element_extension_q = {c_i7_0gr_q, in_data_in};

    // i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465(EXTIFACE,8)@755
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_data_in = element_extension_q;
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_dir = in_fanout_adaptor943;
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_stall_in = in_feedback_stall_in_45;
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_predicate = GND_q;
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_stall_in = in_stall_in;
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_valid_in = in_valid_in;
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_dir_bitsignaltemp = i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_dir[0];
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_stall_in_bitsignaltemp = i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_stall_in[0];
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_predicate_bitsignaltemp = i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_predicate[0];
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_stall_in_bitsignaltemp = i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_stall_in[0];
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_valid_in_bitsignaltemp = i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_valid_in[0];
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_valid_out[0] = i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_valid_out_bitsignaltemp;
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_stall_out[0] = i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_stall_out_bitsignaltemp;
    assign i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_valid_out[0] = i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_valid_out_bitsignaltemp;
    acl_push #(
        .FIFO_DEPTH(770),
        .INF_LOOP(0),
        .INF_LOOP_INITIALIZATION(8'b00000000),
        .MIN_FIFO_LATENCY(769),
        .STYLE("REGULAR"),
        .ASYNC_RESET(0),
        .DATA_WIDTH(8),
        .ENABLED(0),
        .RAM_FIFO_DEPTH_INC(0),
        .STALLFREE(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_push_i1_notcmp67110_push45_cnn1465 (
        .data_in(element_extension_q),
        .dir(i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_dir_bitsignaltemp),
        .feedback_stall_in(i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_stall_in_bitsignaltemp),
        .predicate(i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_data_out),
        .feedback_out(i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_out),
        .feedback_valid_out(i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_valid_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_sync_out(GPOUT,7)
    assign out_feedback_out_45 = i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_out;
    assign out_feedback_valid_out_45 = i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_feedback_valid_out;

    // sync_out(GPOUT,10)@755
    assign out_stall_out = i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_stall_out;

    // adapt_scalar_trunc_sel_x(BITSELECT,11)@755
    assign adapt_scalar_trunc_sel_x_b = i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_data_out[0:0];

    // dupName_0_sync_out_x(GPOUT,13)@755
    assign out_data_out = adapt_scalar_trunc_sel_x_b;
    assign out_valid_out = i_llvm_fpga_push_i1_notcmp67110_push45_cnn1465_valid_out;

endmodule
