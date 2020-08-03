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

// SystemVerilog created from cnn_B7_branch
// SystemVerilog created on Thu Jun 25 10:37:46 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_B7_branch (
    input wire [0:0] in_c0_exe134,
    input wire [63:0] in_c0_exe135,
    input wire [63:0] in_c0_exe136,
    input wire [63:0] in_c0_exe137,
    input wire [0:0] in_c0_exe138,
    input wire [0:0] in_c0_exe139,
    input wire [63:0] in_c0_exe140,
    input wire [0:0] in_c0_exe141,
    input wire [63:0] in_c0_exe1898,
    input wire [63:0] in_c0_exe4901,
    input wire [31:0] in_c1_exe1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe135,
    output wire [63:0] out_c0_exe136,
    output wire [63:0] out_c0_exe137,
    output wire [0:0] out_c0_exe138,
    output wire [0:0] out_c0_exe139,
    output wire [63:0] out_c0_exe140,
    output wire [0:0] out_c0_exe141,
    output wire [63:0] out_c0_exe1898,
    output wire [63:0] out_c0_exe4901,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c0_exe134_cmp_q;
    reg [63:0] c0_exe135_reg_q;
    reg [63:0] c0_exe136_reg_q;
    reg [63:0] c0_exe137_reg_q;
    reg [0:0] c0_exe138_reg_q;
    reg [0:0] c0_exe139_reg_q;
    reg [63:0] c0_exe140_reg_q;
    reg [0:0] c0_exe141_reg_q;
    reg [63:0] c0_exe1898_reg_q;
    reg [63:0] c0_exe4901_reg_q;
    reg [31:0] c1_exe1_reg_q;
    wire [0:0] cnn_B7_branch_enable_q;
    wire [0:0] cnn_B7_branch_enable_not_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_in_1(LOGICAL,30)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe134_cmp(LOGICAL,2)
    assign c0_exe134_cmp_q = ~ (in_c0_exe134);

    // valid_out_1_and(LOGICAL,51)
    assign valid_out_1_and_q = in_valid_in & c0_exe134_cmp_q;

    // valid_1_reg(REG,49)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_1_reg_q <= 1'b0;
        end
        else if (cnn_B7_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,32)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,34)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,29)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,50)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe134;

    // valid_0_reg(REG,48)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_0_reg_q <= 1'b0;
        end
        else if (cnn_B7_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,31)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,33)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // cnn_B7_branch_enable(LOGICAL,13)
    assign cnn_B7_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe135_reg(REG,3)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe135_reg_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (cnn_B7_branch_enable_q == 1'b1)
        begin
            c0_exe135_reg_q <= in_c0_exe135;
        end
    end

    // out_c0_exe135(GPOUT,35)
    assign out_c0_exe135 = c0_exe135_reg_q;

    // c0_exe136_reg(REG,4)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe136_reg_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (cnn_B7_branch_enable_q == 1'b1)
        begin
            c0_exe136_reg_q <= in_c0_exe136;
        end
    end

    // out_c0_exe136(GPOUT,36)
    assign out_c0_exe136 = c0_exe136_reg_q;

    // c0_exe137_reg(REG,5)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe137_reg_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (cnn_B7_branch_enable_q == 1'b1)
        begin
            c0_exe137_reg_q <= in_c0_exe137;
        end
    end

    // out_c0_exe137(GPOUT,37)
    assign out_c0_exe137 = c0_exe137_reg_q;

    // c0_exe138_reg(REG,6)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe138_reg_q <= 1'b0;
        end
        else if (cnn_B7_branch_enable_q == 1'b1)
        begin
            c0_exe138_reg_q <= in_c0_exe138;
        end
    end

    // out_c0_exe138(GPOUT,38)
    assign out_c0_exe138 = c0_exe138_reg_q;

    // c0_exe139_reg(REG,7)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe139_reg_q <= 1'b0;
        end
        else if (cnn_B7_branch_enable_q == 1'b1)
        begin
            c0_exe139_reg_q <= in_c0_exe139;
        end
    end

    // out_c0_exe139(GPOUT,39)
    assign out_c0_exe139 = c0_exe139_reg_q;

    // c0_exe140_reg(REG,8)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe140_reg_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (cnn_B7_branch_enable_q == 1'b1)
        begin
            c0_exe140_reg_q <= in_c0_exe140;
        end
    end

    // out_c0_exe140(GPOUT,40)
    assign out_c0_exe140 = c0_exe140_reg_q;

    // c0_exe141_reg(REG,9)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe141_reg_q <= 1'b0;
        end
        else if (cnn_B7_branch_enable_q == 1'b1)
        begin
            c0_exe141_reg_q <= in_c0_exe141;
        end
    end

    // out_c0_exe141(GPOUT,41)
    assign out_c0_exe141 = c0_exe141_reg_q;

    // c0_exe1898_reg(REG,10)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe1898_reg_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (cnn_B7_branch_enable_q == 1'b1)
        begin
            c0_exe1898_reg_q <= in_c0_exe1898;
        end
    end

    // out_c0_exe1898(GPOUT,42)
    assign out_c0_exe1898 = c0_exe1898_reg_q;

    // c0_exe4901_reg(REG,11)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c0_exe4901_reg_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (cnn_B7_branch_enable_q == 1'b1)
        begin
            c0_exe4901_reg_q <= in_c0_exe4901;
        end
    end

    // out_c0_exe4901(GPOUT,43)
    assign out_c0_exe4901 = c0_exe4901_reg_q;

    // c1_exe1_reg(REG,12)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            c1_exe1_reg_q <= 32'b00000000000000000000000000000000;
        end
        else if (cnn_B7_branch_enable_q == 1'b1)
        begin
            c1_exe1_reg_q <= in_c1_exe1;
        end
    end

    // out_c1_exe1(GPOUT,44)
    assign out_c1_exe1 = c1_exe1_reg_q;

    // cnn_B7_branch_enable_not(LOGICAL,14)
    assign cnn_B7_branch_enable_not_q = ~ (cnn_B7_branch_enable_q);

    // out_stall_out(GPOUT,45)
    assign out_stall_out = cnn_B7_branch_enable_not_q;

    // out_valid_out_0(GPOUT,46)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,47)
    assign out_valid_out_1 = valid_1_reg_q;

    // rst_sync(RESETSYNC,52)
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
