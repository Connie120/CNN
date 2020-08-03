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

// SystemVerilog created from cnn_bb_B3_sr_1
// SystemVerilog created on Thu Jun 25 10:37:46 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B3_sr_1 (
    input wire [0:0] in_i_stall,
    input wire [0:0] in_i_valid,
    input wire [63:0] in_i_data_0,
    input wire [0:0] in_i_data_1,
    input wire [63:0] in_i_data_2,
    input wire [63:0] in_i_data_3,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_valid,
    output wire [63:0] out_o_data_0,
    output wire [0:0] out_o_data_1,
    output wire [63:0] out_o_data_2,
    output wire [63:0] out_o_data_3,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] combined_valid_q;
    wire [0:0] not_sr_valid_q;
    reg [0:0] sr_valid_q;
    wire [0:0] stall_and_valid_q;
    wire [0:0] data_mux_0_x_s;
    reg [63:0] data_mux_0_x_q;
    wire [0:0] data_mux_1_x_s;
    reg [0:0] data_mux_1_x_q;
    wire [0:0] data_mux_2_x_s;
    reg [63:0] data_mux_2_x_q;
    wire [0:0] data_mux_3_x_s;
    reg [63:0] data_mux_3_x_q;
    reg [63:0] sr_0_x_q;
    reg [0:0] sr_1_x_q;
    reg [63:0] sr_2_x_q;
    reg [63:0] sr_3_x_q;


    // combined_valid(LOGICAL,2)
    assign combined_valid_q = in_i_valid | sr_valid_q;

    // stall_and_valid(LOGICAL,5)
    assign stall_and_valid_q = in_i_stall & combined_valid_q;

    // sr_valid(REG,4)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            sr_valid_q <= 1'b0;
        end
        else
        begin
            sr_valid_q <= stall_and_valid_q;
        end
    end

    // out_o_stall(GPOUT,17)
    assign out_o_stall = sr_valid_q;

    // out_o_valid(GPOUT,18)
    assign out_o_valid = combined_valid_q;

    // not_sr_valid(LOGICAL,3)
    assign not_sr_valid_q = ~ (sr_valid_q);

    // sr_0_x(REG,23)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            sr_0_x_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_0_x_q <= in_i_data_0;
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // data_mux_0_x(MUX,7)
    assign data_mux_0_x_s = sr_valid_q;
    always @(data_mux_0_x_s or in_i_data_0 or sr_0_x_q)
    begin
        unique case (data_mux_0_x_s)
            1'b0 : data_mux_0_x_q = in_i_data_0;
            1'b1 : data_mux_0_x_q = sr_0_x_q;
            default : data_mux_0_x_q = 64'b0;
        endcase
    end

    // out_o_data_0(GPOUT,19)
    assign out_o_data_0 = data_mux_0_x_q;

    // sr_1_x(REG,24)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            sr_1_x_q <= 1'b0;
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_1_x_q <= in_i_data_1;
        end
    end

    // data_mux_1_x(MUX,8)
    assign data_mux_1_x_s = sr_valid_q;
    always @(data_mux_1_x_s or in_i_data_1 or sr_1_x_q)
    begin
        unique case (data_mux_1_x_s)
            1'b0 : data_mux_1_x_q = in_i_data_1;
            1'b1 : data_mux_1_x_q = sr_1_x_q;
            default : data_mux_1_x_q = 1'b0;
        endcase
    end

    // out_o_data_1(GPOUT,20)
    assign out_o_data_1 = data_mux_1_x_q;

    // sr_2_x(REG,25)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            sr_2_x_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_2_x_q <= in_i_data_2;
        end
    end

    // data_mux_2_x(MUX,9)
    assign data_mux_2_x_s = sr_valid_q;
    always @(data_mux_2_x_s or in_i_data_2 or sr_2_x_q)
    begin
        unique case (data_mux_2_x_s)
            1'b0 : data_mux_2_x_q = in_i_data_2;
            1'b1 : data_mux_2_x_q = sr_2_x_q;
            default : data_mux_2_x_q = 64'b0;
        endcase
    end

    // out_o_data_2(GPOUT,21)
    assign out_o_data_2 = data_mux_2_x_q;

    // sr_3_x(REG,26)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            sr_3_x_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_3_x_q <= in_i_data_3;
        end
    end

    // data_mux_3_x(MUX,10)
    assign data_mux_3_x_s = sr_valid_q;
    always @(data_mux_3_x_s or in_i_data_3 or sr_3_x_q)
    begin
        unique case (data_mux_3_x_s)
            1'b0 : data_mux_3_x_q = in_i_data_3;
            1'b1 : data_mux_3_x_q = sr_3_x_q;
            default : data_mux_3_x_q = 64'b0;
        endcase
    end

    // out_o_data_3(GPOUT,22)
    assign out_o_data_3 = data_mux_3_x_q;

endmodule
