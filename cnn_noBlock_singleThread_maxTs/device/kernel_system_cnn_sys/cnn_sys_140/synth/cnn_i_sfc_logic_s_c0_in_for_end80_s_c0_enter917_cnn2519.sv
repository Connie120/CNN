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

// SystemVerilog created from cnn_i_sfc_logic_s_c0_in_for_end80_s_c0_enter917_cnn2519
// SystemVerilog created on Thu Jun 25 10:37:46 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_logic_s_c0_in_for_end80_s_c0_enter917_cnn2519 (
    input wire [0:0] in_intel_reserved_ffwd_92_0,
    input wire [63:0] in_output,
    input wire [0:0] in_c0_eni3916_0,
    input wire [63:0] in_c0_eni3916_1,
    input wire [63:0] in_c0_eni3916_2,
    input wire [63:0] in_c0_eni3916_3,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exi2922_0,
    output wire [63:0] out_c0_exi2922_1,
    output wire [0:0] out_c0_exi2922_2,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cnn8,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [9:0] i_add_ptr84_cnn2527_vt_const_9_q;
    wire [63:0] i_add_ptr84_cnn2527_vt_join_q;
    wire [53:0] i_add_ptr84_cnn2527_vt_select_63_b;
    wire [1:0] i_add_ptr86_cnn2529_vt_const_1_q;
    wire [63:0] i_add_ptr86_cnn2529_vt_join_q;
    wire [61:0] i_add_ptr86_cnn2529_vt_select_63_b;
    wire [63:0] i_add_ptr87_cnn2531_vt_join_q;
    wire [61:0] i_add_ptr87_cnn2531_vt_select_63_b;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn174_cnn2533_out_dest_data_out_92_0;
    wire [63:0] i_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_cnn2524_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_cnn2524_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_cnn2524_vt_select_63_b;
    wire [7:0] i_mul83_cnn2522_vt_const_7_q;
    wire [63:0] i_mul83_cnn2522_vt_join_q;
    wire [55:0] i_mul83_cnn2522_vt_select_63_b;
    wire [64:0] i_add_ptr84_cnn2528_add_x_a;
    wire [64:0] i_add_ptr84_cnn2528_add_x_b;
    logic [64:0] i_add_ptr84_cnn2528_add_x_o;
    wire [64:0] i_add_ptr84_cnn2528_add_x_q;
    wire [127:0] i_add_ptr84_cnn2528_mult_extender_x_q;
    wire [60:0] i_add_ptr84_cnn2528_mult_multconst_x_q;
    wire [63:0] i_add_ptr84_cnn2528_trunc_sel_x_b;
    wire [63:0] i_add_ptr84_cnn2528_dupName_0_trunc_sel_x_b;
    wire [64:0] i_add_ptr86_cnn2530_add_x_a;
    wire [64:0] i_add_ptr86_cnn2530_add_x_b;
    logic [64:0] i_add_ptr86_cnn2530_add_x_o;
    wire [64:0] i_add_ptr86_cnn2530_add_x_q;
    wire [127:0] i_add_ptr86_cnn2530_mult_extender_x_q;
    wire [63:0] i_add_ptr86_cnn2530_trunc_sel_x_b;
    wire [63:0] i_add_ptr86_cnn2530_dupName_0_trunc_sel_x_b;
    wire [64:0] i_add_ptr87_cnn2532_add_x_a;
    wire [64:0] i_add_ptr87_cnn2532_add_x_b;
    logic [64:0] i_add_ptr87_cnn2532_add_x_o;
    wire [64:0] i_add_ptr87_cnn2532_add_x_q;
    wire [127:0] i_add_ptr87_cnn2532_mult_extender_x_q;
    wire [63:0] i_add_ptr87_cnn2532_trunc_sel_x_b;
    wire [63:0] i_add_ptr87_cnn2532_dupName_0_trunc_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    wire [10:0] i_add_ptr84_cnn2528_mult_x_bjA2_q;
    wire [18:0] i_add_ptr84_cnn2528_mult_x_bjA7_q;
    wire [18:0] i_add_ptr84_cnn2528_mult_x_bjA12_q;
    wire [18:0] i_add_ptr84_cnn2528_mult_x_bjA17_q;
    wire [40:0] i_add_ptr84_cnn2528_mult_x_sums_align_1_q;
    wire [40:0] i_add_ptr84_cnn2528_mult_x_sums_align_1_qint;
    wire [58:0] i_add_ptr84_cnn2528_mult_x_sums_align_3_q;
    wire [58:0] i_add_ptr84_cnn2528_mult_x_sums_align_3_qint;
    wire [68:0] i_add_ptr84_cnn2528_mult_x_sums_align_5_q;
    wire [68:0] i_add_ptr84_cnn2528_mult_x_sums_align_5_qint;
    wire [41:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0_a;
    wire [41:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0_b;
    logic [41:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0_o;
    wire [41:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0_q;
    wire [69:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1_a;
    wire [69:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1_b;
    logic [69:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1_o;
    wire [69:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1_q;
    wire [10:0] i_add_ptr86_cnn2530_mult_x_bjA2_q;
    wire [18:0] i_add_ptr86_cnn2530_mult_x_bjA7_q;
    wire [18:0] i_add_ptr86_cnn2530_mult_x_bjA12_q;
    wire [18:0] i_add_ptr86_cnn2530_mult_x_bjA17_q;
    wire [40:0] i_add_ptr86_cnn2530_mult_x_sums_align_1_q;
    wire [40:0] i_add_ptr86_cnn2530_mult_x_sums_align_1_qint;
    wire [58:0] i_add_ptr86_cnn2530_mult_x_sums_align_3_q;
    wire [58:0] i_add_ptr86_cnn2530_mult_x_sums_align_3_qint;
    wire [68:0] i_add_ptr86_cnn2530_mult_x_sums_align_5_q;
    wire [68:0] i_add_ptr86_cnn2530_mult_x_sums_align_5_qint;
    wire [41:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0_a;
    wire [41:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0_b;
    logic [41:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0_o;
    wire [41:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0_q;
    wire [69:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1_a;
    wire [69:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1_b;
    logic [69:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1_o;
    wire [69:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1_q;
    wire [10:0] i_add_ptr87_cnn2532_mult_x_bjA2_q;
    wire [18:0] i_add_ptr87_cnn2532_mult_x_bjA7_q;
    wire [18:0] i_add_ptr87_cnn2532_mult_x_bjA12_q;
    wire [18:0] i_add_ptr87_cnn2532_mult_x_bjA17_q;
    wire [40:0] i_add_ptr87_cnn2532_mult_x_sums_align_1_q;
    wire [40:0] i_add_ptr87_cnn2532_mult_x_sums_align_1_qint;
    wire [58:0] i_add_ptr87_cnn2532_mult_x_sums_align_3_q;
    wire [58:0] i_add_ptr87_cnn2532_mult_x_sums_align_3_qint;
    wire [68:0] i_add_ptr87_cnn2532_mult_x_sums_align_5_q;
    wire [68:0] i_add_ptr87_cnn2532_mult_x_sums_align_5_qint;
    wire [41:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0_a;
    wire [41:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0_b;
    logic [41:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0_o;
    wire [41:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0_q;
    wire [69:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1_a;
    wire [69:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1_b;
    logic [69:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1_o;
    wire [69:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1_q;
    wire [55:0] leftShiftStage0Idx1Rng8_uid159_i_mul83_cnn2523_shift_x_in;
    wire [55:0] leftShiftStage0Idx1Rng8_uid159_i_mul83_cnn2523_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid160_i_mul83_cnn2523_shift_x_q;
    wire [0:0] leftShiftStage0_uid162_i_mul83_cnn2523_shift_x_s;
    reg [63:0] leftShiftStage0_uid162_i_mul83_cnn2523_shift_x_q;
    wire [12:0] i_add_ptr84_cnn2528_mult_x_im0_shift0_q;
    wire [12:0] i_add_ptr84_cnn2528_mult_x_im0_shift0_qint;
    wire [20:0] i_add_ptr84_cnn2528_mult_x_im5_shift0_q;
    wire [20:0] i_add_ptr84_cnn2528_mult_x_im5_shift0_qint;
    wire [20:0] i_add_ptr84_cnn2528_mult_x_im10_shift0_q;
    wire [20:0] i_add_ptr84_cnn2528_mult_x_im10_shift0_qint;
    wire [20:0] i_add_ptr84_cnn2528_mult_x_im15_shift0_q;
    wire [20:0] i_add_ptr84_cnn2528_mult_x_im15_shift0_qint;
    wire [12:0] i_add_ptr86_cnn2530_mult_x_im0_shift0_q;
    wire [12:0] i_add_ptr86_cnn2530_mult_x_im0_shift0_qint;
    wire [20:0] i_add_ptr86_cnn2530_mult_x_im5_shift0_q;
    wire [20:0] i_add_ptr86_cnn2530_mult_x_im5_shift0_qint;
    wire [20:0] i_add_ptr86_cnn2530_mult_x_im10_shift0_q;
    wire [20:0] i_add_ptr86_cnn2530_mult_x_im10_shift0_qint;
    wire [20:0] i_add_ptr86_cnn2530_mult_x_im15_shift0_q;
    wire [20:0] i_add_ptr86_cnn2530_mult_x_im15_shift0_qint;
    wire [12:0] i_add_ptr87_cnn2532_mult_x_im0_shift0_q;
    wire [12:0] i_add_ptr87_cnn2532_mult_x_im0_shift0_qint;
    wire [20:0] i_add_ptr87_cnn2532_mult_x_im5_shift0_q;
    wire [20:0] i_add_ptr87_cnn2532_mult_x_im5_shift0_qint;
    wire [20:0] i_add_ptr87_cnn2532_mult_x_im10_shift0_q;
    wire [20:0] i_add_ptr87_cnn2532_mult_x_im10_shift0_qint;
    wire [20:0] i_add_ptr87_cnn2532_mult_x_im15_shift0_q;
    wire [20:0] i_add_ptr87_cnn2532_mult_x_im15_shift0_qint;
    wire [70:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_a;
    wire [70:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_b;
    logic [70:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_o;
    wire [0:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_c;
    wire [69:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_q;
    wire [2:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_a;
    wire [2:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_b;
    logic [2:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_o;
    wire [0:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_cin;
    wire [0:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_q;
    wire [70:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitJoin_for_q_q;
    wire [70:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_a;
    wire [70:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_b;
    logic [70:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_o;
    wire [0:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_c;
    wire [69:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_q;
    wire [2:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_a;
    wire [2:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_b;
    logic [2:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_o;
    wire [0:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_cin;
    wire [0:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_q;
    wire [70:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitJoin_for_q_q;
    wire [70:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_a;
    wire [70:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_b;
    logic [70:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_o;
    wire [0:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_c;
    wire [69:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_q;
    wire [2:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_a;
    wire [2:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_b;
    logic [2:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_o;
    wire [0:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_cin;
    wire [0:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_q;
    wire [70:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitJoin_for_q_q;
    wire [0:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b;
    wire [69:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [0:0] i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b;
    wire [0:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b;
    wire [69:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [0:0] i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b;
    wire [0:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b;
    wire [69:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [0:0] i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b;
    wire [9:0] i_add_ptr84_cnn2528_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_add_ptr84_cnn2528_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_add_ptr84_cnn2528_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_add_ptr84_cnn2528_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_add_ptr86_cnn2530_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_add_ptr86_cnn2530_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_add_ptr86_cnn2530_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_add_ptr86_cnn2530_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_add_ptr87_cnn2532_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_add_ptr87_cnn2532_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_add_ptr87_cnn2532_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_add_ptr87_cnn2532_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q;
    reg [0:0] redist1_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q;
    reg [0:0] redist2_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q;
    reg [0:0] redist3_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q;
    reg [0:0] redist4_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q;
    reg [0:0] redist5_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q;
    reg [69:0] redist6_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_q_1_q;
    reg [69:0] redist7_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_q_1_q;
    reg [69:0] redist8_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_q_1_q;
    reg [0:0] redist9_sync_in_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist9_sync_in_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist10_sync_in_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist10_sync_in_aunroll_x_in_i_valid_4_delay_0;
    reg [63:0] redist11_i_add_ptr87_cnn2532_trunc_sel_x_b_2_q;
    reg [63:0] redist11_i_add_ptr87_cnn2532_trunc_sel_x_b_2_delay_0;
    reg [63:0] redist12_i_add_ptr86_cnn2530_trunc_sel_x_b_1_q;
    reg [61:0] redist13_i_add_ptr86_cnn2529_vt_select_63_b_1_q;
    reg [53:0] redist14_i_add_ptr84_cnn2527_vt_select_63_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // redist9_sync_in_aunroll_x_in_i_valid_2(DELAY,328)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist9_sync_in_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist9_sync_in_aunroll_x_in_i_valid_2_delay_0 <= in_i_valid;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist9_sync_in_aunroll_x_in_i_valid_2_q <= redist9_sync_in_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist10_sync_in_aunroll_x_in_i_valid_4(DELAY,329)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist10_sync_in_aunroll_x_in_i_valid_4_delay_0 <= '0;
        end
        else
        begin
            redist10_sync_in_aunroll_x_in_i_valid_4_delay_0 <= redist9_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist10_sync_in_aunroll_x_in_i_valid_4_q <= redist10_sync_in_aunroll_x_in_i_valid_4_delay_0;
        end
    end

    // valid_fanout_reg0(REG,61)@4 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= 1'b0;
        end
        else
        begin
            valid_fanout_reg0_q <= redist10_sync_in_aunroll_x_in_i_valid_4_q;
        end
    end

    // valid_fanout_reg2(REG,63)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= redist10_sync_in_aunroll_x_in_i_valid_4_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn174_cnn2533(BLACKBOX,13)@5
    cnn_i_llvm_fpga_ffwd_dest_i1_unnamed_174_cnn2534 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn174_cnn2533 (
        .in_intel_reserved_ffwd_92_0(in_intel_reserved_ffwd_92_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_92_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn174_cnn2533_out_dest_data_out_92_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_ptr84_cnn2528_mult_multconst_x(CONSTANT,32)
    assign i_add_ptr84_cnn2528_mult_multconst_x_q = 61'b0000000000000000000000000000000000000000000000000000000000000;

    // i_add_ptr87_cnn2532_mult_x_bs1_merged_bit_select(BITSELECT,318)@0
    assign i_add_ptr87_cnn2532_mult_x_bs1_merged_bit_select_b = in_c0_eni3916_3[63:54];
    assign i_add_ptr87_cnn2532_mult_x_bs1_merged_bit_select_c = in_c0_eni3916_3[53:36];
    assign i_add_ptr87_cnn2532_mult_x_bs1_merged_bit_select_d = in_c0_eni3916_3[35:18];
    assign i_add_ptr87_cnn2532_mult_x_bs1_merged_bit_select_e = in_c0_eni3916_3[17:0];

    // i_add_ptr87_cnn2532_mult_x_bjA2(BITJOIN,126)@0
    assign i_add_ptr87_cnn2532_mult_x_bjA2_q = {GND_q, i_add_ptr87_cnn2532_mult_x_bs1_merged_bit_select_b};

    // i_add_ptr87_cnn2532_mult_x_im0_shift0(BITSHIFT,171)@0
    assign i_add_ptr87_cnn2532_mult_x_im0_shift0_qint = { i_add_ptr87_cnn2532_mult_x_bjA2_q, 2'b00 };
    assign i_add_ptr87_cnn2532_mult_x_im0_shift0_q = i_add_ptr87_cnn2532_mult_x_im0_shift0_qint[12:0];

    // i_add_ptr87_cnn2532_mult_x_sums_align_5(BITSHIFT,149)@0
    assign i_add_ptr87_cnn2532_mult_x_sums_align_5_qint = { {{2{i_add_ptr87_cnn2532_mult_x_im0_shift0_q[12]}}, i_add_ptr87_cnn2532_mult_x_im0_shift0_q}, 54'b000000000000000000000000000000000000000000000000000000 };
    assign i_add_ptr87_cnn2532_mult_x_sums_align_5_q = i_add_ptr87_cnn2532_mult_x_sums_align_5_qint[68:0];

    // i_add_ptr87_cnn2532_mult_x_bjA7(BITJOIN,131)@0
    assign i_add_ptr87_cnn2532_mult_x_bjA7_q = {GND_q, i_add_ptr87_cnn2532_mult_x_bs1_merged_bit_select_c};

    // i_add_ptr87_cnn2532_mult_x_im5_shift0(BITSHIFT,172)@0
    assign i_add_ptr87_cnn2532_mult_x_im5_shift0_qint = { i_add_ptr87_cnn2532_mult_x_bjA7_q, 2'b00 };
    assign i_add_ptr87_cnn2532_mult_x_im5_shift0_q = i_add_ptr87_cnn2532_mult_x_im5_shift0_qint[20:0];

    // i_add_ptr87_cnn2532_mult_x_sums_align_3(BITSHIFT,147)@0
    assign i_add_ptr87_cnn2532_mult_x_sums_align_3_qint = { {{2{i_add_ptr87_cnn2532_mult_x_im5_shift0_q[20]}}, i_add_ptr87_cnn2532_mult_x_im5_shift0_q}, 36'b000000000000000000000000000000000000 };
    assign i_add_ptr87_cnn2532_mult_x_sums_align_3_q = i_add_ptr87_cnn2532_mult_x_sums_align_3_qint[58:0];

    // i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1(ADD,152)@0 + 1
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1_a = {{11{i_add_ptr87_cnn2532_mult_x_sums_align_3_q[58]}}, i_add_ptr87_cnn2532_mult_x_sums_align_3_q};
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1_b = {{1{i_add_ptr87_cnn2532_mult_x_sums_align_5_q[68]}}, i_add_ptr87_cnn2532_mult_x_sums_align_5_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1_o <= $signed(i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1_a) + $signed(i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1_b);
        end
    end
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1_q = i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1_o[69:0];

    // i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1(BITSELECT,281)@1
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b = i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0_q[41:41];

    // i_add_ptr87_cnn2532_mult_x_bjA12(BITJOIN,136)@0
    assign i_add_ptr87_cnn2532_mult_x_bjA12_q = {GND_q, i_add_ptr87_cnn2532_mult_x_bs1_merged_bit_select_d};

    // i_add_ptr87_cnn2532_mult_x_im10_shift0(BITSHIFT,173)@0
    assign i_add_ptr87_cnn2532_mult_x_im10_shift0_qint = { i_add_ptr87_cnn2532_mult_x_bjA12_q, 2'b00 };
    assign i_add_ptr87_cnn2532_mult_x_im10_shift0_q = i_add_ptr87_cnn2532_mult_x_im10_shift0_qint[20:0];

    // i_add_ptr87_cnn2532_mult_x_sums_align_1(BITSHIFT,145)@0
    assign i_add_ptr87_cnn2532_mult_x_sums_align_1_qint = { {{2{i_add_ptr87_cnn2532_mult_x_im10_shift0_q[20]}}, i_add_ptr87_cnn2532_mult_x_im10_shift0_q}, 18'b000000000000000000 };
    assign i_add_ptr87_cnn2532_mult_x_sums_align_1_q = i_add_ptr87_cnn2532_mult_x_sums_align_1_qint[40:0];

    // i_add_ptr87_cnn2532_mult_x_bjA17(BITJOIN,141)@0
    assign i_add_ptr87_cnn2532_mult_x_bjA17_q = {GND_q, i_add_ptr87_cnn2532_mult_x_bs1_merged_bit_select_e};

    // i_add_ptr87_cnn2532_mult_x_im15_shift0(BITSHIFT,174)@0
    assign i_add_ptr87_cnn2532_mult_x_im15_shift0_qint = { i_add_ptr87_cnn2532_mult_x_bjA17_q, 2'b00 };
    assign i_add_ptr87_cnn2532_mult_x_im15_shift0_q = i_add_ptr87_cnn2532_mult_x_im15_shift0_qint[20:0];

    // i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0(ADD,151)@0 + 1
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0_a = {{21{i_add_ptr87_cnn2532_mult_x_im15_shift0_q[20]}}, i_add_ptr87_cnn2532_mult_x_im15_shift0_q};
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0_b = {{1{i_add_ptr87_cnn2532_mult_x_sums_align_1_q[40]}}, i_add_ptr87_cnn2532_mult_x_sums_align_1_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0_o <= $signed(i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0_a) + $signed(i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0_b);
        end
    end
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0_q = i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0_o[41:0];

    // i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,309)@1
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b_q = {i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr87_cnn2532_mult_x_sums_result_add_0_0_q};

    // i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2(ADD,205)@1 + 1
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_a = {1'b0, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_b = {1'b0, i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_o <= $unsigned(i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_a) + $unsigned(i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_b);
        end
    end
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_c[0] = i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_o[70];
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_q = i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_o[69:0];

    // i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0(BITSELECT,314)@1
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b = i_add_ptr87_cnn2532_mult_x_sums_result_add_0_1_q[69:69];

    // redist0_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1(DELAY,319)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q <= i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b;
        end
    end

    // redist1_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1(DELAY,320)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q <= i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b;
        end
    end

    // i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2(ADD,206)@2 + 1
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_cin = i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_c;
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_a = { {{1{redist1_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q[0]}}, redist1_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q}, 1'b1 };
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_b = { {{1{redist0_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q[0]}}, redist0_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q}, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_cin[0] };
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_o <= $signed(i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_a) + $signed(i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_b);
        end
    end
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_q = i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_o[1:1];

    // redist6_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_q_1(DELAY,325)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_q_1_q <= i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_q;
        end
    end

    // i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitJoin_for_q(BITJOIN,207)@3
    assign i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitJoin_for_q_q = {i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p2_of_2_q, redist6_i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_p1_of_2_q_1_q};

    // i_add_ptr87_cnn2532_mult_extender_x(BITJOIN,51)@3
    assign i_add_ptr87_cnn2532_mult_extender_x_q = {i_add_ptr84_cnn2528_mult_multconst_x_q, i_add_ptr87_cnn2532_mult_x_sums_result_add_1_0_BitJoin_for_q_q[66:0]};

    // i_add_ptr87_cnn2532_trunc_sel_x(BITSELECT,53)@3
    assign i_add_ptr87_cnn2532_trunc_sel_x_b = i_add_ptr87_cnn2532_mult_extender_x_q[63:0];

    // redist11_i_add_ptr87_cnn2532_trunc_sel_x_b_2(DELAY,330)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist11_i_add_ptr87_cnn2532_trunc_sel_x_b_2_delay_0 <= i_add_ptr87_cnn2532_trunc_sel_x_b;
            redist11_i_add_ptr87_cnn2532_trunc_sel_x_b_2_q <= redist11_i_add_ptr87_cnn2532_trunc_sel_x_b_2_delay_0;
        end
    end

    // i_add_ptr86_cnn2530_mult_x_bs1_merged_bit_select(BITSELECT,317)@0
    assign i_add_ptr86_cnn2530_mult_x_bs1_merged_bit_select_b = in_c0_eni3916_2[63:54];
    assign i_add_ptr86_cnn2530_mult_x_bs1_merged_bit_select_c = in_c0_eni3916_2[53:36];
    assign i_add_ptr86_cnn2530_mult_x_bs1_merged_bit_select_d = in_c0_eni3916_2[35:18];
    assign i_add_ptr86_cnn2530_mult_x_bs1_merged_bit_select_e = in_c0_eni3916_2[17:0];

    // i_add_ptr86_cnn2530_mult_x_bjA2(BITJOIN,96)@0
    assign i_add_ptr86_cnn2530_mult_x_bjA2_q = {GND_q, i_add_ptr86_cnn2530_mult_x_bs1_merged_bit_select_b};

    // i_add_ptr86_cnn2530_mult_x_im0_shift0(BITSHIFT,167)@0
    assign i_add_ptr86_cnn2530_mult_x_im0_shift0_qint = { i_add_ptr86_cnn2530_mult_x_bjA2_q, 2'b00 };
    assign i_add_ptr86_cnn2530_mult_x_im0_shift0_q = i_add_ptr86_cnn2530_mult_x_im0_shift0_qint[12:0];

    // i_add_ptr86_cnn2530_mult_x_sums_align_5(BITSHIFT,119)@0
    assign i_add_ptr86_cnn2530_mult_x_sums_align_5_qint = { {{2{i_add_ptr86_cnn2530_mult_x_im0_shift0_q[12]}}, i_add_ptr86_cnn2530_mult_x_im0_shift0_q}, 54'b000000000000000000000000000000000000000000000000000000 };
    assign i_add_ptr86_cnn2530_mult_x_sums_align_5_q = i_add_ptr86_cnn2530_mult_x_sums_align_5_qint[68:0];

    // i_add_ptr86_cnn2530_mult_x_bjA7(BITJOIN,101)@0
    assign i_add_ptr86_cnn2530_mult_x_bjA7_q = {GND_q, i_add_ptr86_cnn2530_mult_x_bs1_merged_bit_select_c};

    // i_add_ptr86_cnn2530_mult_x_im5_shift0(BITSHIFT,168)@0
    assign i_add_ptr86_cnn2530_mult_x_im5_shift0_qint = { i_add_ptr86_cnn2530_mult_x_bjA7_q, 2'b00 };
    assign i_add_ptr86_cnn2530_mult_x_im5_shift0_q = i_add_ptr86_cnn2530_mult_x_im5_shift0_qint[20:0];

    // i_add_ptr86_cnn2530_mult_x_sums_align_3(BITSHIFT,117)@0
    assign i_add_ptr86_cnn2530_mult_x_sums_align_3_qint = { {{2{i_add_ptr86_cnn2530_mult_x_im5_shift0_q[20]}}, i_add_ptr86_cnn2530_mult_x_im5_shift0_q}, 36'b000000000000000000000000000000000000 };
    assign i_add_ptr86_cnn2530_mult_x_sums_align_3_q = i_add_ptr86_cnn2530_mult_x_sums_align_3_qint[58:0];

    // i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1(ADD,122)@0 + 1
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1_a = {{11{i_add_ptr86_cnn2530_mult_x_sums_align_3_q[58]}}, i_add_ptr86_cnn2530_mult_x_sums_align_3_q};
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1_b = {{1{i_add_ptr86_cnn2530_mult_x_sums_align_5_q[68]}}, i_add_ptr86_cnn2530_mult_x_sums_align_5_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1_o <= $signed(i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1_a) + $signed(i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1_b);
        end
    end
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1_q = i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1_o[69:0];

    // i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1(BITSELECT,245)@1
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b = i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0_q[41:41];

    // i_add_ptr86_cnn2530_mult_x_bjA12(BITJOIN,106)@0
    assign i_add_ptr86_cnn2530_mult_x_bjA12_q = {GND_q, i_add_ptr86_cnn2530_mult_x_bs1_merged_bit_select_d};

    // i_add_ptr86_cnn2530_mult_x_im10_shift0(BITSHIFT,169)@0
    assign i_add_ptr86_cnn2530_mult_x_im10_shift0_qint = { i_add_ptr86_cnn2530_mult_x_bjA12_q, 2'b00 };
    assign i_add_ptr86_cnn2530_mult_x_im10_shift0_q = i_add_ptr86_cnn2530_mult_x_im10_shift0_qint[20:0];

    // i_add_ptr86_cnn2530_mult_x_sums_align_1(BITSHIFT,115)@0
    assign i_add_ptr86_cnn2530_mult_x_sums_align_1_qint = { {{2{i_add_ptr86_cnn2530_mult_x_im10_shift0_q[20]}}, i_add_ptr86_cnn2530_mult_x_im10_shift0_q}, 18'b000000000000000000 };
    assign i_add_ptr86_cnn2530_mult_x_sums_align_1_q = i_add_ptr86_cnn2530_mult_x_sums_align_1_qint[40:0];

    // i_add_ptr86_cnn2530_mult_x_bjA17(BITJOIN,111)@0
    assign i_add_ptr86_cnn2530_mult_x_bjA17_q = {GND_q, i_add_ptr86_cnn2530_mult_x_bs1_merged_bit_select_e};

    // i_add_ptr86_cnn2530_mult_x_im15_shift0(BITSHIFT,170)@0
    assign i_add_ptr86_cnn2530_mult_x_im15_shift0_qint = { i_add_ptr86_cnn2530_mult_x_bjA17_q, 2'b00 };
    assign i_add_ptr86_cnn2530_mult_x_im15_shift0_q = i_add_ptr86_cnn2530_mult_x_im15_shift0_qint[20:0];

    // i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0(ADD,121)@0 + 1
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0_a = {{21{i_add_ptr86_cnn2530_mult_x_im15_shift0_q[20]}}, i_add_ptr86_cnn2530_mult_x_im15_shift0_q};
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0_b = {{1{i_add_ptr86_cnn2530_mult_x_sums_align_1_q[40]}}, i_add_ptr86_cnn2530_mult_x_sums_align_1_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0_o <= $signed(i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0_a) + $signed(i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0_b);
        end
    end
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0_q = i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0_o[41:0];

    // i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,273)@1
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b_q = {i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr86_cnn2530_mult_x_sums_result_add_0_0_q};

    // i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2(ADD,194)@1 + 1
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_a = {1'b0, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_b = {1'b0, i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_o <= $unsigned(i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_a) + $unsigned(i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_b);
        end
    end
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_c[0] = i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_o[70];
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_q = i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_o[69:0];

    // i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0(BITSELECT,278)@1
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b = i_add_ptr86_cnn2530_mult_x_sums_result_add_0_1_q[69:69];

    // redist2_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1(DELAY,321)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q <= i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b;
        end
    end

    // redist3_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1(DELAY,322)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q <= i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b;
        end
    end

    // i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2(ADD,195)@2 + 1
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_cin = i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_c;
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_a = { {{1{redist3_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q[0]}}, redist3_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q}, 1'b1 };
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_b = { {{1{redist2_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q[0]}}, redist2_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q}, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_cin[0] };
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_o <= $signed(i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_a) + $signed(i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_b);
        end
    end
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_q = i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_o[1:1];

    // redist7_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_q_1(DELAY,326)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_q_1_q <= i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_q;
        end
    end

    // i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitJoin_for_q(BITJOIN,196)@3
    assign i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitJoin_for_q_q = {i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p2_of_2_q, redist7_i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_p1_of_2_q_1_q};

    // i_add_ptr86_cnn2530_mult_extender_x(BITJOIN,41)@3
    assign i_add_ptr86_cnn2530_mult_extender_x_q = {i_add_ptr84_cnn2528_mult_multconst_x_q, i_add_ptr86_cnn2530_mult_x_sums_result_add_1_0_BitJoin_for_q_q[66:0]};

    // i_add_ptr86_cnn2530_trunc_sel_x(BITSELECT,43)@3
    assign i_add_ptr86_cnn2530_trunc_sel_x_b = i_add_ptr86_cnn2530_mult_extender_x_q[63:0];

    // redist12_i_add_ptr86_cnn2530_trunc_sel_x_b_1(DELAY,331)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist12_i_add_ptr86_cnn2530_trunc_sel_x_b_1_q <= i_add_ptr86_cnn2530_trunc_sel_x_b;
        end
    end

    // leftShiftStage0Idx1Rng8_uid159_i_mul83_cnn2523_shift_x(BITSELECT,158)@0
    assign leftShiftStage0Idx1Rng8_uid159_i_mul83_cnn2523_shift_x_in = in_c0_eni3916_1[55:0];
    assign leftShiftStage0Idx1Rng8_uid159_i_mul83_cnn2523_shift_x_b = leftShiftStage0Idx1Rng8_uid159_i_mul83_cnn2523_shift_x_in[55:0];

    // leftShiftStage0Idx1_uid160_i_mul83_cnn2523_shift_x(BITJOIN,159)@0
    assign leftShiftStage0Idx1_uid160_i_mul83_cnn2523_shift_x_q = {leftShiftStage0Idx1Rng8_uid159_i_mul83_cnn2523_shift_x_b, i_mul83_cnn2522_vt_const_7_q};

    // leftShiftStage0_uid162_i_mul83_cnn2523_shift_x(MUX,161)@0
    assign leftShiftStage0_uid162_i_mul83_cnn2523_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid162_i_mul83_cnn2523_shift_x_s or in_c0_eni3916_1 or leftShiftStage0Idx1_uid160_i_mul83_cnn2523_shift_x_q)
    begin
        unique case (leftShiftStage0_uid162_i_mul83_cnn2523_shift_x_s)
            1'b0 : leftShiftStage0_uid162_i_mul83_cnn2523_shift_x_q = in_c0_eni3916_1;
            1'b1 : leftShiftStage0_uid162_i_mul83_cnn2523_shift_x_q = leftShiftStage0Idx1_uid160_i_mul83_cnn2523_shift_x_q;
            default : leftShiftStage0_uid162_i_mul83_cnn2523_shift_x_q = 64'b0;
        endcase
    end

    // i_mul83_cnn2522_vt_select_63(BITSELECT,20)@0
    assign i_mul83_cnn2522_vt_select_63_b = leftShiftStage0_uid162_i_mul83_cnn2523_shift_x_q[63:8];

    // i_mul83_cnn2522_vt_const_7(CONSTANT,18)
    assign i_mul83_cnn2522_vt_const_7_q = 8'b00000000;

    // i_mul83_cnn2522_vt_join(BITJOIN,19)@0
    assign i_mul83_cnn2522_vt_join_q = {i_mul83_cnn2522_vt_select_63_b, i_mul83_cnn2522_vt_const_7_q};

    // i_add_ptr84_cnn2528_mult_x_bs1_merged_bit_select(BITSELECT,316)@0
    assign i_add_ptr84_cnn2528_mult_x_bs1_merged_bit_select_b = i_mul83_cnn2522_vt_join_q[63:54];
    assign i_add_ptr84_cnn2528_mult_x_bs1_merged_bit_select_c = i_mul83_cnn2522_vt_join_q[53:36];
    assign i_add_ptr84_cnn2528_mult_x_bs1_merged_bit_select_d = i_mul83_cnn2522_vt_join_q[35:18];
    assign i_add_ptr84_cnn2528_mult_x_bs1_merged_bit_select_e = i_mul83_cnn2522_vt_join_q[17:0];

    // i_add_ptr84_cnn2528_mult_x_bjA2(BITJOIN,66)@0
    assign i_add_ptr84_cnn2528_mult_x_bjA2_q = {GND_q, i_add_ptr84_cnn2528_mult_x_bs1_merged_bit_select_b};

    // i_add_ptr84_cnn2528_mult_x_im0_shift0(BITSHIFT,163)@0
    assign i_add_ptr84_cnn2528_mult_x_im0_shift0_qint = { i_add_ptr84_cnn2528_mult_x_bjA2_q, 2'b00 };
    assign i_add_ptr84_cnn2528_mult_x_im0_shift0_q = i_add_ptr84_cnn2528_mult_x_im0_shift0_qint[12:0];

    // i_add_ptr84_cnn2528_mult_x_sums_align_5(BITSHIFT,89)@0
    assign i_add_ptr84_cnn2528_mult_x_sums_align_5_qint = { {{2{i_add_ptr84_cnn2528_mult_x_im0_shift0_q[12]}}, i_add_ptr84_cnn2528_mult_x_im0_shift0_q}, 54'b000000000000000000000000000000000000000000000000000000 };
    assign i_add_ptr84_cnn2528_mult_x_sums_align_5_q = i_add_ptr84_cnn2528_mult_x_sums_align_5_qint[68:0];

    // i_add_ptr84_cnn2528_mult_x_bjA7(BITJOIN,71)@0
    assign i_add_ptr84_cnn2528_mult_x_bjA7_q = {GND_q, i_add_ptr84_cnn2528_mult_x_bs1_merged_bit_select_c};

    // i_add_ptr84_cnn2528_mult_x_im5_shift0(BITSHIFT,164)@0
    assign i_add_ptr84_cnn2528_mult_x_im5_shift0_qint = { i_add_ptr84_cnn2528_mult_x_bjA7_q, 2'b00 };
    assign i_add_ptr84_cnn2528_mult_x_im5_shift0_q = i_add_ptr84_cnn2528_mult_x_im5_shift0_qint[20:0];

    // i_add_ptr84_cnn2528_mult_x_sums_align_3(BITSHIFT,87)@0
    assign i_add_ptr84_cnn2528_mult_x_sums_align_3_qint = { {{2{i_add_ptr84_cnn2528_mult_x_im5_shift0_q[20]}}, i_add_ptr84_cnn2528_mult_x_im5_shift0_q}, 36'b000000000000000000000000000000000000 };
    assign i_add_ptr84_cnn2528_mult_x_sums_align_3_q = i_add_ptr84_cnn2528_mult_x_sums_align_3_qint[58:0];

    // i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1(ADD,92)@0 + 1
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1_a = {{11{i_add_ptr84_cnn2528_mult_x_sums_align_3_q[58]}}, i_add_ptr84_cnn2528_mult_x_sums_align_3_q};
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1_b = {{1{i_add_ptr84_cnn2528_mult_x_sums_align_5_q[68]}}, i_add_ptr84_cnn2528_mult_x_sums_align_5_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1_o <= $signed(i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1_a) + $signed(i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1_b);
        end
    end
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1_q = i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1_o[69:0];

    // i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1(BITSELECT,209)@1
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b = i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0_q[41:41];

    // i_add_ptr84_cnn2528_mult_x_bjA12(BITJOIN,76)@0
    assign i_add_ptr84_cnn2528_mult_x_bjA12_q = {GND_q, i_add_ptr84_cnn2528_mult_x_bs1_merged_bit_select_d};

    // i_add_ptr84_cnn2528_mult_x_im10_shift0(BITSHIFT,165)@0
    assign i_add_ptr84_cnn2528_mult_x_im10_shift0_qint = { i_add_ptr84_cnn2528_mult_x_bjA12_q, 2'b00 };
    assign i_add_ptr84_cnn2528_mult_x_im10_shift0_q = i_add_ptr84_cnn2528_mult_x_im10_shift0_qint[20:0];

    // i_add_ptr84_cnn2528_mult_x_sums_align_1(BITSHIFT,85)@0
    assign i_add_ptr84_cnn2528_mult_x_sums_align_1_qint = { {{2{i_add_ptr84_cnn2528_mult_x_im10_shift0_q[20]}}, i_add_ptr84_cnn2528_mult_x_im10_shift0_q}, 18'b000000000000000000 };
    assign i_add_ptr84_cnn2528_mult_x_sums_align_1_q = i_add_ptr84_cnn2528_mult_x_sums_align_1_qint[40:0];

    // i_add_ptr84_cnn2528_mult_x_bjA17(BITJOIN,81)@0
    assign i_add_ptr84_cnn2528_mult_x_bjA17_q = {GND_q, i_add_ptr84_cnn2528_mult_x_bs1_merged_bit_select_e};

    // i_add_ptr84_cnn2528_mult_x_im15_shift0(BITSHIFT,166)@0
    assign i_add_ptr84_cnn2528_mult_x_im15_shift0_qint = { i_add_ptr84_cnn2528_mult_x_bjA17_q, 2'b00 };
    assign i_add_ptr84_cnn2528_mult_x_im15_shift0_q = i_add_ptr84_cnn2528_mult_x_im15_shift0_qint[20:0];

    // i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0(ADD,91)@0 + 1
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0_a = {{21{i_add_ptr84_cnn2528_mult_x_im15_shift0_q[20]}}, i_add_ptr84_cnn2528_mult_x_im15_shift0_q};
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0_b = {{1{i_add_ptr84_cnn2528_mult_x_sums_align_1_q[40]}}, i_add_ptr84_cnn2528_mult_x_sums_align_1_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0_o <= $signed(i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0_a) + $signed(i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0_b);
        end
    end
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0_q = i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0_o[41:0];

    // i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,237)@1
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b_q = {i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b, i_add_ptr84_cnn2528_mult_x_sums_result_add_0_0_q};

    // i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2(ADD,183)@1 + 1
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_a = {1'b0, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_b = {1'b0, i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1_q};
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_o <= $unsigned(i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_a) + $unsigned(i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_b);
        end
    end
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_c[0] = i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_o[70];
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_q = i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_o[69:0];

    // i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0(BITSELECT,242)@1
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b = i_add_ptr84_cnn2528_mult_x_sums_result_add_0_1_q[69:69];

    // redist4_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1(DELAY,323)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q <= i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b;
        end
    end

    // redist5_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1(DELAY,324)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q <= i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel0_1_b;
        end
    end

    // i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2(ADD,184)@2 + 1
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_cin = i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_c;
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_a = { {{1{redist5_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q[0]}}, redist5_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_a_tessel1_0_b_1_q}, 1'b1 };
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_b = { {{1{redist4_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q[0]}}, redist4_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitSelect_for_b_tessel1_0_b_1_q}, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_cin[0] };
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_o <= $signed(i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_a) + $signed(i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_b);
        end
    end
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_q = i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_o[1:1];

    // redist8_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_q_1(DELAY,327)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist8_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_q_1_q <= i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_q;
        end
    end

    // i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitJoin_for_q(BITJOIN,185)@3
    assign i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitJoin_for_q_q = {i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p2_of_2_q, redist8_i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_p1_of_2_q_1_q};

    // i_add_ptr84_cnn2528_mult_extender_x(BITJOIN,31)@3
    assign i_add_ptr84_cnn2528_mult_extender_x_q = {i_add_ptr84_cnn2528_mult_multconst_x_q, i_add_ptr84_cnn2528_mult_x_sums_result_add_1_0_BitJoin_for_q_q[66:0]};

    // i_add_ptr84_cnn2528_trunc_sel_x(BITSELECT,33)@3
    assign i_add_ptr84_cnn2528_trunc_sel_x_b = i_add_ptr84_cnn2528_mult_extender_x_q[63:0];

    // valid_fanout_reg1(REG,62)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= redist9_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // i_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_cnn2524(BLACKBOX,14)@0
    // in in_i_dependence@3
    // in in_valid_in@3
    // out out_buffer_out@3
    // out out_valid_out@3
    cnn_i_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_2525 thei_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_cnn2524 (
        .in_buffer_in(in_output),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_cnn2524_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_cnn2524_vt_select_63(BITSELECT,17)@3
    assign i_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_cnn2524_vt_select_63_b = i_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_cnn2524_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_cnn2524_vt_join(BITJOIN,16)@3
    assign i_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_cnn2524_vt_join_q = {i_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_cnn2524_vt_select_63_b, i_add_ptr84_cnn2527_vt_const_9_q};

    // i_add_ptr84_cnn2528_add_x(ADD,25)@3
    assign i_add_ptr84_cnn2528_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1f32_output_sync_buffer_cnn2524_vt_join_q};
    assign i_add_ptr84_cnn2528_add_x_b = {1'b0, i_add_ptr84_cnn2528_trunc_sel_x_b};
    assign i_add_ptr84_cnn2528_add_x_o = $unsigned(i_add_ptr84_cnn2528_add_x_a) + $unsigned(i_add_ptr84_cnn2528_add_x_b);
    assign i_add_ptr84_cnn2528_add_x_q = i_add_ptr84_cnn2528_add_x_o[64:0];

    // i_add_ptr84_cnn2528_dupName_0_trunc_sel_x(BITSELECT,34)@3
    assign i_add_ptr84_cnn2528_dupName_0_trunc_sel_x_b = i_add_ptr84_cnn2528_add_x_q[63:0];

    // i_add_ptr84_cnn2527_vt_select_63(BITSELECT,6)@3
    assign i_add_ptr84_cnn2527_vt_select_63_b = i_add_ptr84_cnn2528_dupName_0_trunc_sel_x_b[63:10];

    // redist14_i_add_ptr84_cnn2527_vt_select_63_b_1(DELAY,333)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist14_i_add_ptr84_cnn2527_vt_select_63_b_1_q <= i_add_ptr84_cnn2527_vt_select_63_b;
        end
    end

    // i_add_ptr84_cnn2527_vt_const_9(CONSTANT,4)
    assign i_add_ptr84_cnn2527_vt_const_9_q = 10'b0000000000;

    // i_add_ptr84_cnn2527_vt_join(BITJOIN,5)@4
    assign i_add_ptr84_cnn2527_vt_join_q = {redist14_i_add_ptr84_cnn2527_vt_select_63_b_1_q, i_add_ptr84_cnn2527_vt_const_9_q};

    // i_add_ptr86_cnn2530_add_x(ADD,35)@4
    assign i_add_ptr86_cnn2530_add_x_a = {1'b0, i_add_ptr84_cnn2527_vt_join_q};
    assign i_add_ptr86_cnn2530_add_x_b = {1'b0, redist12_i_add_ptr86_cnn2530_trunc_sel_x_b_1_q};
    assign i_add_ptr86_cnn2530_add_x_o = $unsigned(i_add_ptr86_cnn2530_add_x_a) + $unsigned(i_add_ptr86_cnn2530_add_x_b);
    assign i_add_ptr86_cnn2530_add_x_q = i_add_ptr86_cnn2530_add_x_o[64:0];

    // i_add_ptr86_cnn2530_dupName_0_trunc_sel_x(BITSELECT,44)@4
    assign i_add_ptr86_cnn2530_dupName_0_trunc_sel_x_b = i_add_ptr86_cnn2530_add_x_q[63:0];

    // i_add_ptr86_cnn2529_vt_select_63(BITSELECT,9)@4
    assign i_add_ptr86_cnn2529_vt_select_63_b = i_add_ptr86_cnn2530_dupName_0_trunc_sel_x_b[63:2];

    // redist13_i_add_ptr86_cnn2529_vt_select_63_b_1(DELAY,332)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist13_i_add_ptr86_cnn2529_vt_select_63_b_1_q <= i_add_ptr86_cnn2529_vt_select_63_b;
        end
    end

    // i_add_ptr86_cnn2529_vt_join(BITJOIN,8)@5
    assign i_add_ptr86_cnn2529_vt_join_q = {redist13_i_add_ptr86_cnn2529_vt_select_63_b_1_q, i_add_ptr86_cnn2529_vt_const_1_q};

    // i_add_ptr87_cnn2532_add_x(ADD,45)@5
    assign i_add_ptr87_cnn2532_add_x_a = {1'b0, i_add_ptr86_cnn2529_vt_join_q};
    assign i_add_ptr87_cnn2532_add_x_b = {1'b0, redist11_i_add_ptr87_cnn2532_trunc_sel_x_b_2_q};
    assign i_add_ptr87_cnn2532_add_x_o = $unsigned(i_add_ptr87_cnn2532_add_x_a) + $unsigned(i_add_ptr87_cnn2532_add_x_b);
    assign i_add_ptr87_cnn2532_add_x_q = i_add_ptr87_cnn2532_add_x_o[64:0];

    // i_add_ptr87_cnn2532_dupName_0_trunc_sel_x(BITSELECT,54)@5
    assign i_add_ptr87_cnn2532_dupName_0_trunc_sel_x_b = i_add_ptr87_cnn2532_add_x_q[63:0];

    // i_add_ptr87_cnn2531_vt_select_63(BITSELECT,12)@5
    assign i_add_ptr87_cnn2531_vt_select_63_b = i_add_ptr87_cnn2532_dupName_0_trunc_sel_x_b[63:2];

    // i_add_ptr86_cnn2529_vt_const_1(CONSTANT,7)
    assign i_add_ptr86_cnn2529_vt_const_1_q = 2'b00;

    // i_add_ptr87_cnn2531_vt_join(BITJOIN,11)@5
    assign i_add_ptr87_cnn2531_vt_join_q = {i_add_ptr87_cnn2531_vt_select_63_b, i_add_ptr86_cnn2529_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // sync_out_aunroll_x(GPOUT,60)@5
    assign out_c0_exi2922_0 = GND_q;
    assign out_c0_exi2922_1 = i_add_ptr87_cnn2531_vt_join_q;
    assign out_c0_exi2922_2 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn174_cnn2533_out_dest_data_out_92_0;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cnn8 = GND_q;

endmodule
