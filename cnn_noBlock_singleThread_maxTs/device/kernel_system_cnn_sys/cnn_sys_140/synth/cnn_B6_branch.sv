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

// SystemVerilog created from cnn_B6_branch
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_B6_branch (
    input wire [0:0] in_c0_exe10,
    input wire [63:0] in_c0_exe11,
    input wire [0:0] in_c0_exe12,
    input wire [63:0] in_c0_exe1857,
    input wire [63:0] in_c0_exe2858,
    input wire [0:0] in_c0_exe4860,
    input wire [63:0] in_c0_exe5861,
    input wire [63:0] in_c0_exe6862,
    input wire [63:0] in_c0_exe7863,
    input wire [63:0] in_c0_exe8864,
    input wire [63:0] in_c0_exe9865,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10,
    output wire [63:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [63:0] out_c0_exe1857,
    output wire [63:0] out_c0_exe2858,
    output wire [0:0] out_c0_exe4860,
    output wire [63:0] out_c0_exe5861,
    output wire [63:0] out_c0_exe6862,
    output wire [63:0] out_c0_exe7863,
    output wire [63:0] out_c0_exe8864,
    output wire [63:0] out_c0_exe9865,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;
    reg [0:0] rst_sync_rst_sclrn;


    // out_c0_exe10(GPOUT,15)
    assign out_c0_exe10 = in_c0_exe10;

    // out_c0_exe11(GPOUT,16)
    assign out_c0_exe11 = in_c0_exe11;

    // out_c0_exe12(GPOUT,17)
    assign out_c0_exe12 = in_c0_exe12;

    // out_c0_exe1857(GPOUT,18)
    assign out_c0_exe1857 = in_c0_exe1857;

    // out_c0_exe2858(GPOUT,19)
    assign out_c0_exe2858 = in_c0_exe2858;

    // out_c0_exe4860(GPOUT,20)
    assign out_c0_exe4860 = in_c0_exe4860;

    // out_c0_exe5861(GPOUT,21)
    assign out_c0_exe5861 = in_c0_exe5861;

    // out_c0_exe6862(GPOUT,22)
    assign out_c0_exe6862 = in_c0_exe6862;

    // out_c0_exe7863(GPOUT,23)
    assign out_c0_exe7863 = in_c0_exe7863;

    // out_c0_exe8864(GPOUT,24)
    assign out_c0_exe8864 = in_c0_exe8864;

    // out_c0_exe9865(GPOUT,25)
    assign out_c0_exe9865 = in_c0_exe9865;

    // stall_out(LOGICAL,28)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,26)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,29)
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
