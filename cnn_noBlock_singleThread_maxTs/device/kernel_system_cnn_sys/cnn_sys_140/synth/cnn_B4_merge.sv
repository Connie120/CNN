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

// SystemVerilog created from cnn_B4_merge
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_B4_merge (
    input wire [63:0] in_add1785_0,
    input wire [63:0] in_add1785_1,
    input wire [63:0] in_add3190_0,
    input wire [63:0] in_add3190_1,
    input wire [63:0] in_add79_0,
    input wire [63:0] in_add79_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_add1785,
    output wire [63:0] out_add3190,
    output wire [63:0] out_add79,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add1785_mux_s;
    reg [63:0] add1785_mux_q;
    wire [0:0] add3190_mux_s;
    reg [63:0] add3190_mux_q;
    wire [0:0] add79_mux_s;
    reg [63:0] add79_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // add1785_mux(MUX,2)
    assign add1785_mux_s = in_valid_in_0;
    always @(add1785_mux_s or in_add1785_1 or in_add1785_0)
    begin
        unique case (add1785_mux_s)
            1'b0 : add1785_mux_q = in_add1785_1;
            1'b1 : add1785_mux_q = in_add1785_0;
            default : add1785_mux_q = 64'b0;
        endcase
    end

    // out_add1785(GPOUT,14)
    assign out_add1785 = add1785_mux_q;

    // add3190_mux(MUX,3)
    assign add3190_mux_s = in_valid_in_0;
    always @(add3190_mux_s or in_add3190_1 or in_add3190_0)
    begin
        unique case (add3190_mux_s)
            1'b0 : add3190_mux_q = in_add3190_1;
            1'b1 : add3190_mux_q = in_add3190_0;
            default : add3190_mux_q = 64'b0;
        endcase
    end

    // out_add3190(GPOUT,15)
    assign out_add3190 = add3190_mux_q;

    // add79_mux(MUX,4)
    assign add79_mux_s = in_valid_in_0;
    always @(add79_mux_s or in_add79_1 or in_add79_0)
    begin
        unique case (add79_mux_s)
            1'b0 : add79_mux_q = in_add79_1;
            1'b1 : add79_mux_q = in_add79_0;
            default : add79_mux_q = 64'b0;
        endcase
    end

    // out_add79(GPOUT,16)
    assign out_add79 = add79_mux_q;

    // valid_or(LOGICAL,22)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,20)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,21)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,18)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,19)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,23)
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
