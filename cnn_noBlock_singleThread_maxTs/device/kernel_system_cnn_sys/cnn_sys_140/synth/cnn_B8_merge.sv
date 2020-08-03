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

// SystemVerilog created from cnn_B8_merge
// SystemVerilog created on Thu Jun 25 10:37:46 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_B8_merge (
    input wire [63:0] in_add1788_push36761_0,
    input wire [63:0] in_add3193_push37766_0,
    input wire [63:0] in_add82_push35756_0,
    input wire [63:0] in_col_060_replace_phi104_pop41750_0,
    input wire [31:0] in_dot_prod748751_0,
    input wire [63:0] in_mul8599_pop39749_0,
    input wire [0:0] in_notcmp67110_pop45773_0,
    input wire [0:0] in_notcmp71106_pop42771_0,
    input wire [0:0] in_notcmp75102_pop40769_0,
    input wire [0:0] in_stall_in,
    input wire [63:0] in_to_058_replace_phi108_pop43772_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_add1788_push36761,
    output wire [63:0] out_add3193_push37766,
    output wire [63:0] out_add82_push35756,
    output wire [63:0] out_col_060_replace_phi104_pop41750,
    output wire [31:0] out_dot_prod748751,
    output wire [63:0] out_mul8599_pop39749,
    output wire [0:0] out_notcmp67110_pop45773,
    output wire [0:0] out_notcmp71106_pop42771,
    output wire [0:0] out_notcmp75102_pop40769,
    output wire [0:0] out_stall_out_0,
    output wire [63:0] out_to_058_replace_phi108_pop43772,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;
    reg [0:0] rst_sync_rst_sclrn;


    // out_add1788_push36761(GPOUT,14)
    assign out_add1788_push36761 = in_add1788_push36761_0;

    // out_add3193_push37766(GPOUT,15)
    assign out_add3193_push37766 = in_add3193_push37766_0;

    // out_add82_push35756(GPOUT,16)
    assign out_add82_push35756 = in_add82_push35756_0;

    // out_col_060_replace_phi104_pop41750(GPOUT,17)
    assign out_col_060_replace_phi104_pop41750 = in_col_060_replace_phi104_pop41750_0;

    // out_dot_prod748751(GPOUT,18)
    assign out_dot_prod748751 = in_dot_prod748751_0;

    // out_mul8599_pop39749(GPOUT,19)
    assign out_mul8599_pop39749 = in_mul8599_pop39749_0;

    // out_notcmp67110_pop45773(GPOUT,20)
    assign out_notcmp67110_pop45773 = in_notcmp67110_pop45773_0;

    // out_notcmp71106_pop42771(GPOUT,21)
    assign out_notcmp71106_pop42771 = in_notcmp71106_pop42771_0;

    // out_notcmp75102_pop40769(GPOUT,22)
    assign out_notcmp75102_pop40769 = in_notcmp75102_pop40769_0;

    // stall_out(LOGICAL,26)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = stall_out_q;

    // out_to_058_replace_phi108_pop43772(GPOUT,24)
    assign out_to_058_replace_phi108_pop43772 = in_to_058_replace_phi108_pop43772_0;

    // out_valid_out(GPOUT,25)
    assign out_valid_out = in_valid_in_0;

    // rst_sync(RESETSYNC,27)
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
