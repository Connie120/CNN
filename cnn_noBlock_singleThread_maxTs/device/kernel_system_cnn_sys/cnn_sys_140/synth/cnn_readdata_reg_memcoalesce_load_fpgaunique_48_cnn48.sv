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

// SystemVerilog created from cnn_readdata_reg_memcoalesce_load_fpgaunique_48_cnn48
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_readdata_reg_memcoalesce_load_fpgaunique_48_cnn48 (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_data_in_0,
    input wire [31:0] in_data_in_1,
    input wire [31:0] in_data_in_2,
    input wire [31:0] in_data_in_3,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_data_out_0,
    output wire [31:0] out_data_out_1,
    output wire [31:0] out_data_out_2,
    output wire [31:0] out_data_out_3,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_q;
    wire [0:0] readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_and_stall_in_q;
    wire [0:0] readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_not_q;
    wire [0:0] stall_in_not_q;
    wire [0:0] stall_in_not_or_readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_q;
    reg [31:0] readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_1_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_2_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_3_x_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // stall_in_not(LOGICAL,5)
    assign stall_in_not_q = ~ (in_stall_in);

    // readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_not(LOGICAL,4)
    assign readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_not_q = ~ (readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_q);

    // stall_in_not_or_readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg(LOGICAL,6)
    assign stall_in_not_or_readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_q = readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_not_q | stall_in_not_q;

    // readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg(REG,2)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_q <= 1'b0;
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_q <= in_valid_in;
        end
    end

    // readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_and_stall_in(LOGICAL,3)
    assign readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_and_stall_in_q = readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_q & in_stall_in;

    // sync_out(GPOUT,8)@20000000
    assign out_stall_out = readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_and_stall_in_q;

    // readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_3_x(REG,12)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_3_x_q <= 32'b00000000000000000000000000000000;
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_3_x_q <= in_data_in_3;
        end
    end

    // readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_2_x(REG,11)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_2_x_q <= 32'b00000000000000000000000000000000;
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_2_x_q <= in_data_in_2;
        end
    end

    // readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_1_x(REG,10)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_1_x_q <= 32'b00000000000000000000000000000000;
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_1_x_q <= in_data_in_1;
        end
    end

    // readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_0_x(REG,9)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_0_x_q <= 32'b00000000000000000000000000000000;
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_0_x_q <= in_data_in_0;
        end
    end

    // dupName_0_sync_out_aunroll_x(GPOUT,14)@20000001
    assign out_data_out_0 = readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_0_x_q;
    assign out_data_out_1 = readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_1_x_q;
    assign out_data_out_2 = readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_2_x_q;
    assign out_data_out_3 = readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_data_reg_3_x_q;
    assign out_valid_out = readdata_reg_memcoalesce_load_cnn_fpgaunique_48_cnn48_valid_reg_q;

endmodule
