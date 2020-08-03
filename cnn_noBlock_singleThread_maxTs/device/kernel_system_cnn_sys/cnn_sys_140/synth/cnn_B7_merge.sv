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

// SystemVerilog created from cnn_B7_merge
// SystemVerilog created on Thu Jun 25 10:37:46 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_B7_merge (
    input wire [63:0] in_add1788_0,
    input wire [63:0] in_add1788_1,
    input wire [63:0] in_add3193_0,
    input wire [63:0] in_add3193_1,
    input wire [63:0] in_add82_0,
    input wire [63:0] in_add82_1,
    input wire [63:0] in_add_ptr109_0,
    input wire [63:0] in_add_ptr109_1,
    input wire [63:0] in_col_060_replace_phi104_0,
    input wire [63:0] in_col_060_replace_phi104_1,
    input wire [0:0] in_forked107_0,
    input wire [0:0] in_forked107_1,
    input wire [63:0] in_mul8599_0,
    input wire [63:0] in_mul8599_1,
    input wire [0:0] in_notcmp67110_0,
    input wire [0:0] in_notcmp67110_1,
    input wire [0:0] in_notcmp71106_0,
    input wire [0:0] in_notcmp71106_1,
    input wire [0:0] in_notcmp75102_0,
    input wire [0:0] in_notcmp75102_1,
    input wire [63:0] in_row_063_replace_phi96_0,
    input wire [63:0] in_row_063_replace_phi96_1,
    input wire [0:0] in_stall_in,
    input wire [63:0] in_to_058_replace_phi108_0,
    input wire [63:0] in_to_058_replace_phi108_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_add1788,
    output wire [63:0] out_add3193,
    output wire [63:0] out_add82,
    output wire [63:0] out_add_ptr109,
    output wire [63:0] out_col_060_replace_phi104,
    output wire [0:0] out_forked107,
    output wire [63:0] out_mul8599,
    output wire [0:0] out_notcmp67110,
    output wire [0:0] out_notcmp71106,
    output wire [0:0] out_notcmp75102,
    output wire [63:0] out_row_063_replace_phi96,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_to_058_replace_phi108,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add1788_mux_s;
    reg [63:0] add1788_mux_q;
    wire [0:0] add3193_mux_s;
    reg [63:0] add3193_mux_q;
    wire [0:0] add82_mux_s;
    reg [63:0] add82_mux_q;
    wire [0:0] add_ptr109_mux_s;
    reg [63:0] add_ptr109_mux_q;
    wire [0:0] col_060_replace_phi104_mux_s;
    reg [63:0] col_060_replace_phi104_mux_q;
    wire [0:0] forked107_mux_s;
    reg [0:0] forked107_mux_q;
    wire [0:0] mul8599_mux_s;
    reg [63:0] mul8599_mux_q;
    wire [0:0] notcmp67110_mux_s;
    reg [0:0] notcmp67110_mux_q;
    wire [0:0] notcmp71106_mux_s;
    reg [0:0] notcmp71106_mux_q;
    wire [0:0] notcmp75102_mux_s;
    reg [0:0] notcmp75102_mux_q;
    wire [0:0] row_063_replace_phi96_mux_s;
    reg [63:0] row_063_replace_phi96_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] to_058_replace_phi108_mux_s;
    reg [63:0] to_058_replace_phi108_mux_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // add1788_mux(MUX,2)
    assign add1788_mux_s = in_valid_in_0;
    always @(add1788_mux_s or in_add1788_1 or in_add1788_0)
    begin
        unique case (add1788_mux_s)
            1'b0 : add1788_mux_q = in_add1788_1;
            1'b1 : add1788_mux_q = in_add1788_0;
            default : add1788_mux_q = 64'b0;
        endcase
    end

    // out_add1788(GPOUT,39)
    assign out_add1788 = add1788_mux_q;

    // add3193_mux(MUX,3)
    assign add3193_mux_s = in_valid_in_0;
    always @(add3193_mux_s or in_add3193_1 or in_add3193_0)
    begin
        unique case (add3193_mux_s)
            1'b0 : add3193_mux_q = in_add3193_1;
            1'b1 : add3193_mux_q = in_add3193_0;
            default : add3193_mux_q = 64'b0;
        endcase
    end

    // out_add3193(GPOUT,40)
    assign out_add3193 = add3193_mux_q;

    // add82_mux(MUX,4)
    assign add82_mux_s = in_valid_in_0;
    always @(add82_mux_s or in_add82_1 or in_add82_0)
    begin
        unique case (add82_mux_s)
            1'b0 : add82_mux_q = in_add82_1;
            1'b1 : add82_mux_q = in_add82_0;
            default : add82_mux_q = 64'b0;
        endcase
    end

    // out_add82(GPOUT,41)
    assign out_add82 = add82_mux_q;

    // add_ptr109_mux(MUX,5)
    assign add_ptr109_mux_s = in_valid_in_0;
    always @(add_ptr109_mux_s or in_add_ptr109_1 or in_add_ptr109_0)
    begin
        unique case (add_ptr109_mux_s)
            1'b0 : add_ptr109_mux_q = in_add_ptr109_1;
            1'b1 : add_ptr109_mux_q = in_add_ptr109_0;
            default : add_ptr109_mux_q = 64'b0;
        endcase
    end

    // out_add_ptr109(GPOUT,42)
    assign out_add_ptr109 = add_ptr109_mux_q;

    // col_060_replace_phi104_mux(MUX,6)
    assign col_060_replace_phi104_mux_s = in_valid_in_0;
    always @(col_060_replace_phi104_mux_s or in_col_060_replace_phi104_1 or in_col_060_replace_phi104_0)
    begin
        unique case (col_060_replace_phi104_mux_s)
            1'b0 : col_060_replace_phi104_mux_q = in_col_060_replace_phi104_1;
            1'b1 : col_060_replace_phi104_mux_q = in_col_060_replace_phi104_0;
            default : col_060_replace_phi104_mux_q = 64'b0;
        endcase
    end

    // out_col_060_replace_phi104(GPOUT,43)
    assign out_col_060_replace_phi104 = col_060_replace_phi104_mux_q;

    // forked107_mux(MUX,7)
    assign forked107_mux_s = in_valid_in_0;
    always @(forked107_mux_s or in_forked107_1 or in_forked107_0)
    begin
        unique case (forked107_mux_s)
            1'b0 : forked107_mux_q = in_forked107_1;
            1'b1 : forked107_mux_q = in_forked107_0;
            default : forked107_mux_q = 1'b0;
        endcase
    end

    // out_forked107(GPOUT,44)
    assign out_forked107 = forked107_mux_q;

    // mul8599_mux(MUX,35)
    assign mul8599_mux_s = in_valid_in_0;
    always @(mul8599_mux_s or in_mul8599_1 or in_mul8599_0)
    begin
        unique case (mul8599_mux_s)
            1'b0 : mul8599_mux_q = in_mul8599_1;
            1'b1 : mul8599_mux_q = in_mul8599_0;
            default : mul8599_mux_q = 64'b0;
        endcase
    end

    // out_mul8599(GPOUT,45)
    assign out_mul8599 = mul8599_mux_q;

    // notcmp67110_mux(MUX,36)
    assign notcmp67110_mux_s = in_valid_in_0;
    always @(notcmp67110_mux_s or in_notcmp67110_1 or in_notcmp67110_0)
    begin
        unique case (notcmp67110_mux_s)
            1'b0 : notcmp67110_mux_q = in_notcmp67110_1;
            1'b1 : notcmp67110_mux_q = in_notcmp67110_0;
            default : notcmp67110_mux_q = 1'b0;
        endcase
    end

    // out_notcmp67110(GPOUT,46)
    assign out_notcmp67110 = notcmp67110_mux_q;

    // notcmp71106_mux(MUX,37)
    assign notcmp71106_mux_s = in_valid_in_0;
    always @(notcmp71106_mux_s or in_notcmp71106_1 or in_notcmp71106_0)
    begin
        unique case (notcmp71106_mux_s)
            1'b0 : notcmp71106_mux_q = in_notcmp71106_1;
            1'b1 : notcmp71106_mux_q = in_notcmp71106_0;
            default : notcmp71106_mux_q = 1'b0;
        endcase
    end

    // out_notcmp71106(GPOUT,47)
    assign out_notcmp71106 = notcmp71106_mux_q;

    // notcmp75102_mux(MUX,38)
    assign notcmp75102_mux_s = in_valid_in_0;
    always @(notcmp75102_mux_s or in_notcmp75102_1 or in_notcmp75102_0)
    begin
        unique case (notcmp75102_mux_s)
            1'b0 : notcmp75102_mux_q = in_notcmp75102_1;
            1'b1 : notcmp75102_mux_q = in_notcmp75102_0;
            default : notcmp75102_mux_q = 1'b0;
        endcase
    end

    // out_notcmp75102(GPOUT,48)
    assign out_notcmp75102 = notcmp75102_mux_q;

    // row_063_replace_phi96_mux(MUX,54)
    assign row_063_replace_phi96_mux_s = in_valid_in_0;
    always @(row_063_replace_phi96_mux_s or in_row_063_replace_phi96_1 or in_row_063_replace_phi96_0)
    begin
        unique case (row_063_replace_phi96_mux_s)
            1'b0 : row_063_replace_phi96_mux_q = in_row_063_replace_phi96_1;
            1'b1 : row_063_replace_phi96_mux_q = in_row_063_replace_phi96_0;
            default : row_063_replace_phi96_mux_q = 64'b0;
        endcase
    end

    // out_row_063_replace_phi96(GPOUT,49)
    assign out_row_063_replace_phi96 = row_063_replace_phi96_mux_q;

    // valid_or(LOGICAL,58)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,55)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,50)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,56)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,51)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // to_058_replace_phi108_mux(MUX,57)
    assign to_058_replace_phi108_mux_s = in_valid_in_0;
    always @(to_058_replace_phi108_mux_s or in_to_058_replace_phi108_1 or in_to_058_replace_phi108_0)
    begin
        unique case (to_058_replace_phi108_mux_s)
            1'b0 : to_058_replace_phi108_mux_q = in_to_058_replace_phi108_1;
            1'b1 : to_058_replace_phi108_mux_q = in_to_058_replace_phi108_0;
            default : to_058_replace_phi108_mux_q = 64'b0;
        endcase
    end

    // out_to_058_replace_phi108(GPOUT,52)
    assign out_to_058_replace_phi108 = to_058_replace_phi108_mux_q;

    // out_valid_out(GPOUT,53)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,59)
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
