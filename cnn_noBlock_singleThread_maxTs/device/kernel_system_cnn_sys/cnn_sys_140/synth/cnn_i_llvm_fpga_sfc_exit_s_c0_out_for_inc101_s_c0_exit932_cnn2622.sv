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

// SystemVerilog created from cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_s_c0_exit932_cnn2622
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_s_c0_exit932_cnn2622 (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    input wire [0:0] in_mask_valid,
    input wire [0:0] in_data_in_0,
    input wire [0:0] in_data_in_1,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_data_out_0,
    output wire [0:0] out_data_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_full_detector_out_full;
    wire [0:0] not_stall_output_q;
    wire [0:0] output_accepted_and_q;
    reg [0:0] valid_before_fifo_q;
    reg [0:0] before_fifo_0_x_q;
    reg [0:0] before_fifo_1_x_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2695_data_fifo_aunroll_x_out_o_valid;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2695_data_fifo_aunroll_x_out_o_data_0;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2695_data_fifo_aunroll_x_out_o_data_1;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // not_stall_output(LOGICAL,4)
    assign not_stall_output_q = ~ (in_stall_in);

    // before_fifo_1_x(REG,10)
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

    // before_fifo_0_x(REG,9)
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

    // valid_before_fifo(REG,8)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_before_fifo_q <= in_valid_in;
        end
    end

    // i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2695_data_fifo_aunroll_x(BLACKBOX,12)@20000000
    // out out_o_almost_full@20000005
    // out out_o_valid@20000005
    // out out_o_data_0@20000005
    // out out_o_data_1@20000005
    cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_inA000000Z32_cnn2695_data_fifo thei_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2695_data_fifo_aunroll_x (
        .in_i_stall(in_stall_in),
        .in_i_valid(valid_before_fifo_q),
        .in_i_data_0(before_fifo_0_x_q),
        .in_i_data_1(before_fifo_1_x_q),
        .out_o_almost_full(),
        .out_o_stall(),
        .out_o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2695_data_fifo_aunroll_x_out_o_valid),
        .out_o_data_0(i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2695_data_fifo_aunroll_x_out_o_data_0),
        .out_o_data_1(i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2695_data_fifo_aunroll_x_out_o_data_1),
        .clock(clock),
        .resetn(resetn)
    );

    // output_accepted_and(LOGICAL,5)
    assign output_accepted_and_q = i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2695_data_fifo_aunroll_x_out_o_valid & not_stall_output_q;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_full_detector(BLACKBOX,3)@20000000
    cnn_i_llvm_fpga_sfc_exit_s_c0_out_for_inA000000Znn2621_full_detector thei_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_full_detector (
        .in_dec_pipelined_thread(GND_q),
        .in_decrement(output_accepted_and_q),
        .in_inc_pipelined_thread(GND_q),
        .in_increment(in_input_accepted),
        .out_full(i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_full_detector_out_full),
        .out_throttle(),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,7)@20000000
    assign out_stall_entry = i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2621_full_detector_out_full;

    // dupName_0_sync_out_aunroll_x(GPOUT,15)@20000006
    assign out_data_out_0 = i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2695_data_fifo_aunroll_x_out_o_data_0;
    assign out_data_out_1 = i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2695_data_fifo_aunroll_x_out_o_data_1;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_inc101_cnns_c0_exit932_cnn2695_data_fifo_aunroll_x_out_o_valid;

endmodule
