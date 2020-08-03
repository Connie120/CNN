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

// SystemVerilog created from cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_coA000000Z_s_c0_exit806_cnn519
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_coA000000Z_s_c0_exit806_cnn519 (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    input wire [0:0] in_data_in_0,
    input wire [63:0] in_data_in_1,
    input wire [63:0] in_data_in_2,
    input wire [0:0] in_data_in_3,
    input wire [0:0] in_data_in_4,
    input wire [63:0] in_data_in_5,
    input wire [63:0] in_data_in_6,
    input wire [63:0] in_data_in_7,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_mask_valid,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_data_out_0,
    output wire [63:0] out_data_out_1,
    output wire [63:0] out_data_out_2,
    output wire [0:0] out_data_out_3,
    output wire [0:0] out_data_out_4,
    output wire [63:0] out_data_out_5,
    output wire [63:0] out_data_out_6,
    output wire [63:0] out_data_out_7,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn518_full_detector_out_full;
    wire [0:0] masked_valid_q;
    wire [0:0] not_mask_valid_q;
    wire [0:0] not_stall_output_q;
    wire [0:0] output_accepted_and_q;
    wire [0:0] valid_and_masked_q;
    reg [0:0] valid_before_fifo_q;
    reg [0:0] before_fifo_0_x_q;
    reg [63:0] before_fifo_1_x_q;
    reg [63:0] before_fifo_2_x_q;
    reg [0:0] before_fifo_3_x_q;
    reg [0:0] before_fifo_4_x_q;
    reg [63:0] before_fifo_5_x_q;
    reg [63:0] before_fifo_6_x_q;
    reg [63:0] before_fifo_7_x_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_valid;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_0;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_1;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_2;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_3;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_4;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_5;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_6;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_7;


    // valid_and_masked(LOGICAL,10)
    assign valid_and_masked_q = in_mask_valid & in_valid_in;

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_output(LOGICAL,6)
    assign not_stall_output_q = ~ (in_stall_in);

    // before_fifo_7_x(REG,19)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_7_x_q <= in_data_in_7;
        end
    end

    // before_fifo_6_x(REG,18)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_6_x_q <= in_data_in_6;
        end
    end

    // before_fifo_5_x(REG,17)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_5_x_q <= in_data_in_5;
        end
    end

    // before_fifo_4_x(REG,16)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_4_x_q <= in_data_in_4;
        end
    end

    // before_fifo_3_x(REG,15)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_3_x_q <= in_data_in_3;
        end
    end

    // before_fifo_2_x(REG,14)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_2_x_q <= in_data_in_2;
        end
    end

    // before_fifo_1_x(REG,13)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_1_x_q <= in_data_in_1;
        end
    end

    // before_fifo_0_x(REG,12)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            before_fifo_0_x_q <= in_data_in_0;
        end
    end

    // not_mask_valid(LOGICAL,5)
    assign not_mask_valid_q = ~ (in_mask_valid);

    // masked_valid(LOGICAL,4)
    assign masked_valid_q = in_valid_in & not_mask_valid_q;

    // valid_before_fifo(REG,11)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_before_fifo_q <= masked_valid_q;
        end
    end

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x(BLACKBOX,21)@20000000
    // out out_o_almost_full@20000005
    // out out_o_valid@20000005
    // out out_o_data_0@20000005
    // out out_o_data_1@20000005
    // out out_o_data_2@20000005
    // out out_o_data_3@20000005
    // out out_o_data_4@20000005
    // out out_o_data_5@20000005
    // out out_o_data_6@20000005
    // out out_o_data_7@20000005
    cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_coA000000Z06_cnn2681_data_fifo thei_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x (
        .in_i_stall(in_stall_in),
        .in_i_valid(valid_before_fifo_q),
        .in_i_data_0(before_fifo_0_x_q),
        .in_i_data_1(before_fifo_1_x_q),
        .in_i_data_2(before_fifo_2_x_q),
        .in_i_data_3(before_fifo_3_x_q),
        .in_i_data_4(before_fifo_4_x_q),
        .in_i_data_5(before_fifo_5_x_q),
        .in_i_data_6(before_fifo_6_x_q),
        .in_i_data_7(before_fifo_7_x_q),
        .out_o_almost_full(),
        .out_o_stall(),
        .out_o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_valid),
        .out_o_data_0(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_0),
        .out_o_data_1(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_1),
        .out_o_data_2(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_2),
        .out_o_data_3(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_3),
        .out_o_data_4(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_4),
        .out_o_data_5(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_5),
        .out_o_data_6(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_6),
        .out_o_data_7(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_7),
        .clock(clock),
        .resetn(resetn)
    );

    // output_accepted_and(LOGICAL,7)
    assign output_accepted_and_q = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_valid & not_stall_output_q;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn518_full_detector(BLACKBOX,3)@20000000
    cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_coA000000Zcnn518_full_detector thei_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn518_full_detector (
        .in_dec_pipelined_thread(GND_q),
        .in_decrement(output_accepted_and_q),
        .in_decrement2(valid_and_masked_q),
        .in_inc_pipelined_thread(GND_q),
        .in_increment(in_input_accepted),
        .out_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn518_full_detector_out_full),
        .out_throttle(),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,9)@20000000
    assign out_stall_entry = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn518_full_detector_out_full;

    // dupName_0_sync_out_aunroll_x(GPOUT,23)@20000006
    assign out_data_out_0 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_0;
    assign out_data_out_1 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_1;
    assign out_data_out_2 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_2;
    assign out_data_out_3 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_3;
    assign out_data_out_4 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_4;
    assign out_data_out_5 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_5;
    assign out_data_out_6 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_6;
    assign out_data_out_7 = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_data_7;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond15_preheader_cnns_c0_exit806_cnn2681_data_fifo_aunroll_x_out_o_valid;

endmodule
