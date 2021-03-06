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

// SystemVerilog created from cnn_B6_merge
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_B6_merge (
    input wire [63:0] in_add1787_0,
    input wire [63:0] in_add1787_1,
    input wire [63:0] in_add3192_0,
    input wire [63:0] in_add3192_1,
    input wire [63:0] in_add81_0,
    input wire [63:0] in_add81_1,
    input wire [63:0] in_col_060_replace_phi103_0,
    input wire [63:0] in_col_060_replace_phi103_1,
    input wire [63:0] in_mul8598_0,
    input wire [63:0] in_mul8598_1,
    input wire [0:0] in_notcmp71105_0,
    input wire [0:0] in_notcmp71105_1,
    input wire [0:0] in_notcmp75101_0,
    input wire [0:0] in_notcmp75101_1,
    input wire [63:0] in_row_063_replace_phi95_0,
    input wire [63:0] in_row_063_replace_phi95_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_add1787,
    output wire [63:0] out_add3192,
    output wire [63:0] out_add81,
    output wire [63:0] out_col_060_replace_phi103,
    output wire [63:0] out_mul8598,
    output wire [0:0] out_notcmp71105,
    output wire [0:0] out_notcmp75101,
    output wire [63:0] out_row_063_replace_phi95,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add1787_mux_s;
    reg [63:0] add1787_mux_q;
    wire [0:0] add3192_mux_s;
    reg [63:0] add3192_mux_q;
    wire [0:0] add81_mux_s;
    reg [63:0] add81_mux_q;
    wire [0:0] col_060_replace_phi103_mux_s;
    reg [63:0] col_060_replace_phi103_mux_q;
    wire [0:0] mul8598_mux_s;
    reg [63:0] mul8598_mux_q;
    wire [0:0] notcmp71105_mux_s;
    reg [0:0] notcmp71105_mux_q;
    wire [0:0] notcmp75101_mux_s;
    reg [0:0] notcmp75101_mux_q;
    wire [0:0] row_063_replace_phi95_mux_s;
    reg [63:0] row_063_replace_phi95_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // add1787_mux(MUX,2)
    assign add1787_mux_s = in_valid_in_0;
    always @(add1787_mux_s or in_add1787_1 or in_add1787_0)
    begin
        unique case (add1787_mux_s)
            1'b0 : add1787_mux_q = in_add1787_1;
            1'b1 : add1787_mux_q = in_add1787_0;
            default : add1787_mux_q = 64'b0;
        endcase
    end

    // out_add1787(GPOUT,28)
    assign out_add1787 = add1787_mux_q;

    // add3192_mux(MUX,3)
    assign add3192_mux_s = in_valid_in_0;
    always @(add3192_mux_s or in_add3192_1 or in_add3192_0)
    begin
        unique case (add3192_mux_s)
            1'b0 : add3192_mux_q = in_add3192_1;
            1'b1 : add3192_mux_q = in_add3192_0;
            default : add3192_mux_q = 64'b0;
        endcase
    end

    // out_add3192(GPOUT,29)
    assign out_add3192 = add3192_mux_q;

    // add81_mux(MUX,4)
    assign add81_mux_s = in_valid_in_0;
    always @(add81_mux_s or in_add81_1 or in_add81_0)
    begin
        unique case (add81_mux_s)
            1'b0 : add81_mux_q = in_add81_1;
            1'b1 : add81_mux_q = in_add81_0;
            default : add81_mux_q = 64'b0;
        endcase
    end

    // out_add81(GPOUT,30)
    assign out_add81 = add81_mux_q;

    // col_060_replace_phi103_mux(MUX,5)
    assign col_060_replace_phi103_mux_s = in_valid_in_0;
    always @(col_060_replace_phi103_mux_s or in_col_060_replace_phi103_1 or in_col_060_replace_phi103_0)
    begin
        unique case (col_060_replace_phi103_mux_s)
            1'b0 : col_060_replace_phi103_mux_q = in_col_060_replace_phi103_1;
            1'b1 : col_060_replace_phi103_mux_q = in_col_060_replace_phi103_0;
            default : col_060_replace_phi103_mux_q = 64'b0;
        endcase
    end

    // out_col_060_replace_phi103(GPOUT,31)
    assign out_col_060_replace_phi103 = col_060_replace_phi103_mux_q;

    // mul8598_mux(MUX,25)
    assign mul8598_mux_s = in_valid_in_0;
    always @(mul8598_mux_s or in_mul8598_1 or in_mul8598_0)
    begin
        unique case (mul8598_mux_s)
            1'b0 : mul8598_mux_q = in_mul8598_1;
            1'b1 : mul8598_mux_q = in_mul8598_0;
            default : mul8598_mux_q = 64'b0;
        endcase
    end

    // out_mul8598(GPOUT,32)
    assign out_mul8598 = mul8598_mux_q;

    // notcmp71105_mux(MUX,26)
    assign notcmp71105_mux_s = in_valid_in_0;
    always @(notcmp71105_mux_s or in_notcmp71105_1 or in_notcmp71105_0)
    begin
        unique case (notcmp71105_mux_s)
            1'b0 : notcmp71105_mux_q = in_notcmp71105_1;
            1'b1 : notcmp71105_mux_q = in_notcmp71105_0;
            default : notcmp71105_mux_q = 1'b0;
        endcase
    end

    // out_notcmp71105(GPOUT,33)
    assign out_notcmp71105 = notcmp71105_mux_q;

    // notcmp75101_mux(MUX,27)
    assign notcmp75101_mux_s = in_valid_in_0;
    always @(notcmp75101_mux_s or in_notcmp75101_1 or in_notcmp75101_0)
    begin
        unique case (notcmp75101_mux_s)
            1'b0 : notcmp75101_mux_q = in_notcmp75101_1;
            1'b1 : notcmp75101_mux_q = in_notcmp75101_0;
            default : notcmp75101_mux_q = 1'b0;
        endcase
    end

    // out_notcmp75101(GPOUT,34)
    assign out_notcmp75101 = notcmp75101_mux_q;

    // row_063_replace_phi95_mux(MUX,39)
    assign row_063_replace_phi95_mux_s = in_valid_in_0;
    always @(row_063_replace_phi95_mux_s or in_row_063_replace_phi95_1 or in_row_063_replace_phi95_0)
    begin
        unique case (row_063_replace_phi95_mux_s)
            1'b0 : row_063_replace_phi95_mux_q = in_row_063_replace_phi95_1;
            1'b1 : row_063_replace_phi95_mux_q = in_row_063_replace_phi95_0;
            default : row_063_replace_phi95_mux_q = 64'b0;
        endcase
    end

    // out_row_063_replace_phi95(GPOUT,35)
    assign out_row_063_replace_phi95 = row_063_replace_phi95_mux_q;

    // valid_or(LOGICAL,42)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,40)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,36)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,41)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,37)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,38)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,43)
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
