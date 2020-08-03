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

// SystemVerilog created from cnn_bb_B14
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B14 (
    output wire [7:0] out_feedback_out_0,
    input wire [0:0] in_feedback_stall_in_0,
    output wire [0:0] out_feedback_valid_out_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [7:0] bb_cnn_B14_stall_region_out_feedback_out_0;
    wire [0:0] bb_cnn_B14_stall_region_out_feedback_valid_out_0;
    wire [0:0] bb_cnn_B14_stall_region_out_stall_out;
    wire [0:0] bb_cnn_B14_stall_region_out_valid_out;
    wire [0:0] cnn_B14_branch_out_stall_out;
    wire [0:0] cnn_B14_branch_out_valid_out_0;
    wire [0:0] cnn_B14_merge_out_stall_out_0;
    wire [0:0] cnn_B14_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // cnn_B14_merge(BLACKBOX,4)
    cnn_B14_merge thecnn_B14_merge (
        .in_stall_in(bb_cnn_B14_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(cnn_B14_merge_out_stall_out_0),
        .out_valid_out(cnn_B14_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_B14_branch(BLACKBOX,3)
    cnn_B14_branch thecnn_B14_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_cnn_B14_stall_region_out_valid_out),
        .out_stall_out(cnn_B14_branch_out_stall_out),
        .out_valid_out_0(cnn_B14_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_B14_stall_region(BLACKBOX,2)
    cnn_bb_B14_stall_region thebb_cnn_B14_stall_region (
        .in_feedback_stall_in_0(in_feedback_stall_in_0),
        .in_stall_in(cnn_B14_branch_out_stall_out),
        .in_valid_in(cnn_B14_merge_out_valid_out),
        .out_feedback_out_0(bb_cnn_B14_stall_region_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_cnn_B14_stall_region_out_feedback_valid_out_0),
        .out_stall_out(bb_cnn_B14_stall_region_out_stall_out),
        .out_valid_out(bb_cnn_B14_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_0_sync(GPOUT,5)
    assign out_feedback_out_0 = bb_cnn_B14_stall_region_out_feedback_out_0;

    // feedback_valid_out_0_sync(GPOUT,7)
    assign out_feedback_valid_out_0 = bb_cnn_B14_stall_region_out_feedback_valid_out_0;

    // out_stall_out_0(GPOUT,10)
    assign out_stall_out_0 = cnn_B14_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,11)
    assign out_valid_out_0 = cnn_B14_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,12)
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
