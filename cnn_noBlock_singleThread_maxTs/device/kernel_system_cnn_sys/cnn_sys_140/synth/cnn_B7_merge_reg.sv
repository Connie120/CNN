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

// SystemVerilog created from cnn_B7_merge_reg
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_B7_merge_reg (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_data_in_0,
    input wire [63:0] in_data_in_1,
    input wire [63:0] in_data_in_2,
    input wire [63:0] in_data_in_3,
    input wire [63:0] in_data_in_4,
    input wire [0:0] in_data_in_5,
    input wire [63:0] in_data_in_6,
    input wire [0:0] in_data_in_7,
    input wire [0:0] in_data_in_8,
    input wire [63:0] in_data_in_9,
    input wire [63:0] in_data_in_10,
    input wire [0:0] in_data_in_11,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_data_out_0,
    output wire [63:0] out_data_out_1,
    output wire [63:0] out_data_out_2,
    output wire [63:0] out_data_out_3,
    output wire [63:0] out_data_out_4,
    output wire [0:0] out_data_out_5,
    output wire [63:0] out_data_out_6,
    output wire [0:0] out_data_out_7,
    output wire [0:0] out_data_out_8,
    output wire [63:0] out_data_out_9,
    output wire [63:0] out_data_out_10,
    output wire [0:0] out_data_out_11,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] cnn_B7_merge_reg_valid_reg_q;
    wire [0:0] cnn_B7_merge_reg_valid_reg_and_stall_in_q;
    wire [0:0] cnn_B7_merge_reg_valid_reg_not_q;
    wire [0:0] stall_in_not_q;
    wire [0:0] stall_in_not_or_cnn_B7_merge_reg_valid_reg_q;
    reg [63:0] cnn_B7_merge_reg_data_reg_0_x_q;
    reg [63:0] cnn_B7_merge_reg_data_reg_1_x_q;
    reg [63:0] cnn_B7_merge_reg_data_reg_2_x_q;
    reg [63:0] cnn_B7_merge_reg_data_reg_3_x_q;
    reg [63:0] cnn_B7_merge_reg_data_reg_4_x_q;
    reg [0:0] cnn_B7_merge_reg_data_reg_5_x_q;
    reg [63:0] cnn_B7_merge_reg_data_reg_6_x_q;
    reg [0:0] cnn_B7_merge_reg_data_reg_7_x_q;
    reg [0:0] cnn_B7_merge_reg_data_reg_8_x_q;
    reg [63:0] cnn_B7_merge_reg_data_reg_9_x_q;
    reg [63:0] cnn_B7_merge_reg_data_reg_10_x_q;
    reg [0:0] cnn_B7_merge_reg_data_reg_11_x_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // stall_in_not(LOGICAL,5)
    assign stall_in_not_q = ~ (in_stall_in);

    // cnn_B7_merge_reg_valid_reg_not(LOGICAL,4)
    assign cnn_B7_merge_reg_valid_reg_not_q = ~ (cnn_B7_merge_reg_valid_reg_q);

    // stall_in_not_or_cnn_B7_merge_reg_valid_reg(LOGICAL,6)
    assign stall_in_not_or_cnn_B7_merge_reg_valid_reg_q = cnn_B7_merge_reg_valid_reg_not_q | stall_in_not_q;

    // cnn_B7_merge_reg_valid_reg(REG,2)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cnn_B7_merge_reg_valid_reg_q <= 1'b0;
        end
        else if (stall_in_not_or_cnn_B7_merge_reg_valid_reg_q == 1'b1)
        begin
            cnn_B7_merge_reg_valid_reg_q <= in_valid_in;
        end
    end

    // cnn_B7_merge_reg_valid_reg_and_stall_in(LOGICAL,3)
    assign cnn_B7_merge_reg_valid_reg_and_stall_in_q = cnn_B7_merge_reg_valid_reg_q & in_stall_in;

    // sync_out(GPOUT,8)@20000000
    assign out_stall_out = cnn_B7_merge_reg_valid_reg_and_stall_in_q;

    // cnn_B7_merge_reg_data_reg_11_x(REG,20)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cnn_B7_merge_reg_data_reg_11_x_q <= 1'b0;
        end
        else if (stall_in_not_or_cnn_B7_merge_reg_valid_reg_q == 1'b1)
        begin
            cnn_B7_merge_reg_data_reg_11_x_q <= in_data_in_11;
        end
    end

    // cnn_B7_merge_reg_data_reg_10_x(REG,19)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cnn_B7_merge_reg_data_reg_10_x_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (stall_in_not_or_cnn_B7_merge_reg_valid_reg_q == 1'b1)
        begin
            cnn_B7_merge_reg_data_reg_10_x_q <= in_data_in_10;
        end
    end

    // cnn_B7_merge_reg_data_reg_9_x(REG,18)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cnn_B7_merge_reg_data_reg_9_x_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (stall_in_not_or_cnn_B7_merge_reg_valid_reg_q == 1'b1)
        begin
            cnn_B7_merge_reg_data_reg_9_x_q <= in_data_in_9;
        end
    end

    // cnn_B7_merge_reg_data_reg_8_x(REG,17)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cnn_B7_merge_reg_data_reg_8_x_q <= 1'b0;
        end
        else if (stall_in_not_or_cnn_B7_merge_reg_valid_reg_q == 1'b1)
        begin
            cnn_B7_merge_reg_data_reg_8_x_q <= in_data_in_8;
        end
    end

    // cnn_B7_merge_reg_data_reg_7_x(REG,16)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cnn_B7_merge_reg_data_reg_7_x_q <= 1'b0;
        end
        else if (stall_in_not_or_cnn_B7_merge_reg_valid_reg_q == 1'b1)
        begin
            cnn_B7_merge_reg_data_reg_7_x_q <= in_data_in_7;
        end
    end

    // cnn_B7_merge_reg_data_reg_6_x(REG,15)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cnn_B7_merge_reg_data_reg_6_x_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (stall_in_not_or_cnn_B7_merge_reg_valid_reg_q == 1'b1)
        begin
            cnn_B7_merge_reg_data_reg_6_x_q <= in_data_in_6;
        end
    end

    // cnn_B7_merge_reg_data_reg_5_x(REG,14)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cnn_B7_merge_reg_data_reg_5_x_q <= 1'b0;
        end
        else if (stall_in_not_or_cnn_B7_merge_reg_valid_reg_q == 1'b1)
        begin
            cnn_B7_merge_reg_data_reg_5_x_q <= in_data_in_5;
        end
    end

    // cnn_B7_merge_reg_data_reg_4_x(REG,13)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cnn_B7_merge_reg_data_reg_4_x_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (stall_in_not_or_cnn_B7_merge_reg_valid_reg_q == 1'b1)
        begin
            cnn_B7_merge_reg_data_reg_4_x_q <= in_data_in_4;
        end
    end

    // cnn_B7_merge_reg_data_reg_3_x(REG,12)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cnn_B7_merge_reg_data_reg_3_x_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (stall_in_not_or_cnn_B7_merge_reg_valid_reg_q == 1'b1)
        begin
            cnn_B7_merge_reg_data_reg_3_x_q <= in_data_in_3;
        end
    end

    // cnn_B7_merge_reg_data_reg_2_x(REG,11)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cnn_B7_merge_reg_data_reg_2_x_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (stall_in_not_or_cnn_B7_merge_reg_valid_reg_q == 1'b1)
        begin
            cnn_B7_merge_reg_data_reg_2_x_q <= in_data_in_2;
        end
    end

    // cnn_B7_merge_reg_data_reg_1_x(REG,10)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cnn_B7_merge_reg_data_reg_1_x_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (stall_in_not_or_cnn_B7_merge_reg_valid_reg_q == 1'b1)
        begin
            cnn_B7_merge_reg_data_reg_1_x_q <= in_data_in_1;
        end
    end

    // cnn_B7_merge_reg_data_reg_0_x(REG,9)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cnn_B7_merge_reg_data_reg_0_x_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (stall_in_not_or_cnn_B7_merge_reg_valid_reg_q == 1'b1)
        begin
            cnn_B7_merge_reg_data_reg_0_x_q <= in_data_in_0;
        end
    end

    // dupName_0_sync_out_aunroll_x(GPOUT,22)@1
    assign out_data_out_0 = cnn_B7_merge_reg_data_reg_0_x_q;
    assign out_data_out_1 = cnn_B7_merge_reg_data_reg_1_x_q;
    assign out_data_out_2 = cnn_B7_merge_reg_data_reg_2_x_q;
    assign out_data_out_3 = cnn_B7_merge_reg_data_reg_3_x_q;
    assign out_data_out_4 = cnn_B7_merge_reg_data_reg_4_x_q;
    assign out_data_out_5 = cnn_B7_merge_reg_data_reg_5_x_q;
    assign out_data_out_6 = cnn_B7_merge_reg_data_reg_6_x_q;
    assign out_data_out_7 = cnn_B7_merge_reg_data_reg_7_x_q;
    assign out_data_out_8 = cnn_B7_merge_reg_data_reg_8_x_q;
    assign out_data_out_9 = cnn_B7_merge_reg_data_reg_9_x_q;
    assign out_data_out_10 = cnn_B7_merge_reg_data_reg_10_x_q;
    assign out_data_out_11 = cnn_B7_merge_reg_data_reg_11_x_q;
    assign out_valid_out = cnn_B7_merge_reg_valid_reg_q;

endmodule
