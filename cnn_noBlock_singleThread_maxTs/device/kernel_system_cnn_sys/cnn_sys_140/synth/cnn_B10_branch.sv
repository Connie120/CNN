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

// SystemVerilog created from cnn_B10_branch
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_B10_branch (
    input wire [63:0] in_add1788_push36759,
    input wire [63:0] in_add3193_push37764,
    input wire [63:0] in_add82_push35754,
    input wire [0:0] in_notcmp75102_pop40767,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_add1788_push36759,
    output wire [63:0] out_add3193_push37764,
    output wire [63:0] out_add82_push35754,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [63:0] add1788_push36759_reg_q;
    reg [63:0] add3193_push37764_reg_q;
    reg [63:0] add82_push35754_reg_q;
    wire [0:0] cnn_B10_branch_enable_q;
    wire [0:0] cnn_B10_branch_enable_not_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    wire [0:0] notcmp75102_pop40767_cmp_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_in_1(LOGICAL,15)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // notcmp75102_pop40767_cmp(LOGICAL,20)
    assign notcmp75102_pop40767_cmp_q = ~ (in_notcmp75102_pop40767);

    // valid_out_1_and(LOGICAL,30)
    assign valid_out_1_and_q = in_valid_in & notcmp75102_pop40767_cmp_q;

    // valid_1_reg(REG,28)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_1_reg_q <= 1'b0;
        end
        else if (cnn_B10_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,17)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,19)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,14)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,29)
    assign valid_out_0_and_q = in_valid_in & in_notcmp75102_pop40767;

    // valid_0_reg(REG,27)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            valid_0_reg_q <= 1'b0;
        end
        else if (cnn_B10_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,16)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,18)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // cnn_B10_branch_enable(LOGICAL,5)
    assign cnn_B10_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // add1788_push36759_reg(REG,2)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            add1788_push36759_reg_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (cnn_B10_branch_enable_q == 1'b1)
        begin
            add1788_push36759_reg_q <= in_add1788_push36759;
        end
    end

    // out_add1788_push36759(GPOUT,21)
    assign out_add1788_push36759 = add1788_push36759_reg_q;

    // add3193_push37764_reg(REG,3)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            add3193_push37764_reg_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (cnn_B10_branch_enable_q == 1'b1)
        begin
            add3193_push37764_reg_q <= in_add3193_push37764;
        end
    end

    // out_add3193_push37764(GPOUT,22)
    assign out_add3193_push37764 = add3193_push37764_reg_q;

    // add82_push35754_reg(REG,4)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            add82_push35754_reg_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (cnn_B10_branch_enable_q == 1'b1)
        begin
            add82_push35754_reg_q <= in_add82_push35754;
        end
    end

    // out_add82_push35754(GPOUT,23)
    assign out_add82_push35754 = add82_push35754_reg_q;

    // cnn_B10_branch_enable_not(LOGICAL,6)
    assign cnn_B10_branch_enable_not_q = ~ (cnn_B10_branch_enable_q);

    // out_stall_out(GPOUT,24)
    assign out_stall_out = cnn_B10_branch_enable_not_q;

    // out_valid_out_0(GPOUT,25)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,26)
    assign out_valid_out_1 = valid_1_reg_q;

    // rst_sync(RESETSYNC,31)
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
