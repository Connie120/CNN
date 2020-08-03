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

// SystemVerilog created from cnn_function_cra_slave
// SystemVerilog created on Thu Jun 25 10:37:42 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_function_cra_slave (
    input wire [0:0] acl_counter_full,
    input wire [31:0] acl_counter_size,
    input wire [4:0] avs_cra_address,
    input wire [7:0] avs_cra_byteenable,
    input wire [0:0] avs_cra_enable,
    input wire [0:0] avs_cra_read,
    input wire [0:0] avs_cra_write,
    input wire [63:0] avs_cra_writedata,
    input wire [0:0] finish,
    input wire [0:0] has_a_lsu_active,
    input wire [0:0] has_a_write_pending,
    input wire [63:0] profile_data_wire,
    input wire [0:0] valid_in,
    output wire [0:0] acl_counter_reset,
    output wire [63:0] avs_cra_readdata,
    output wire [0:0] avs_cra_readdatavalid,
    output wire [0:0] cra_irq,
    output wire [31:0] global_offset_0,
    output wire [31:0] global_offset_1,
    output wire [31:0] global_offset_2,
    output wire [31:0] global_size_0,
    output wire [31:0] global_size_1,
    output wire [31:0] global_size_2,
    output wire [319:0] kernel_arguments,
    output wire [31:0] local_size_0,
    output wire [31:0] local_size_1,
    output wire [31:0] local_size_2,
    output wire [31:0] num_groups_0,
    output wire [31:0] num_groups_1,
    output wire [31:0] num_groups_2,
    output wire [0:0] profile_enable,
    output wire [0:0] profile_reset_n,
    output wire [0:0] profile_shift,
    output wire [0:0] start,
    output wire [31:0] status,
    output wire [31:0] work_dim,
    output wire [31:0] workgroup_size,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] NO_NAME_q;
    wire [4:0] address_ref_q;
    wire [63:0] arg_bit_join_q;
    reg [31:0] arguments_0_q;
    reg [31:0] arguments_1_q;
    reg [31:0] arguments_2_q;
    reg [31:0] arguments_3_q;
    reg [31:0] arguments_4_q;
    reg [31:0] arguments_5_q;
    reg [31:0] arguments_6_q;
    reg [31:0] arguments_7_q;
    reg [31:0] arguments_8_q;
    reg [31:0] arguments_9_q;
    wire [63:0] bit_enable_q;
    wire [63:0] bit_enable_bar_q;
    wire [31:0] bit_enable_bottom_b;
    wire [31:0] bit_enable_bottom_bar_b;
    wire [31:0] bit_enable_top_b;
    wire [31:0] bit_enable_top_bar_b;
    wire [31:0] bus_high_b;
    wire [31:0] bus_low_b;
    wire [0:0] can_write_q;
    wire [0:0] compute_finished_q;
    wire [0:0] compute_running_q;
    wire [0:0] compute_running_done_q;
    wire [28:0] const_0_29_q;
    wire [31:0] const_padding_q;
    reg [63:0] cra_output_readdata_reg_q;
    reg [0:0] cra_output_readdatavalid_reg_q;
    reg [0:0] cra_output_was_profiler_data_address_reg_q;
    reg [63:0] cra_stage1_data_reg_q;
    wire [0:0] done_or_printf_irq_signal_q;
    wire [31:0] extracted_high_b;
    wire [0:0] finished_bit_b;
    reg [31:0] global_offset_reg_0_q;
    reg [31:0] global_offset_reg_1_q;
    reg [31:0] global_offset_reg_2_q;
    reg [31:0] global_size_reg_0_q;
    reg [31:0] global_size_reg_1_q;
    reg [31:0] global_size_reg_2_q;
    wire [0:0] is_profiler_data_addr_q;
    wire [319:0] kernel_arg_bit_join_q;
    reg [31:0] local_size_reg_0_q;
    reg [31:0] local_size_reg_1_q;
    reg [31:0] local_size_reg_2_q;
    wire [31:0] mask0_q;
    wire [31:0] mask1_q;
    wire [0:0] mask_finished_when_not_running_q;
    wire [31:0] new_data_q;
    wire [0:0] next_start_reg_value_q;
    wire [0:0] next_started_value_q;
    wire [0:0] not_finished_q;
    wire [0:0] not_reset_state_reg_q;
    wire [0:0] not_start_q;
    wire [0:0] not_started_q;
    reg [31:0] num_groups_reg_0_q;
    reg [31:0] num_groups_reg_1_q;
    reg [31:0] num_groups_reg_2_q;
    reg [319:0] pipe_reg0_kernel_arguments_q;
    reg [0:0] pipe_reg0_start_q;
    reg [319:0] pipe_reg1_kernel_arguments_q;
    reg [0:0] pipe_reg1_start_q;
    wire [0:0] printf_bit_b;
    wire [0:0] printf_bit_mux_s;
    reg [0:0] printf_bit_mux_q;
    wire [0:0] printf_counter_reset_mux_s;
    reg [0:0] printf_counter_reset_mux_q;
    wire [0:0] printf_reset_bit_b;
    wire [0:0] prof_ctrl_readback_mux_s;
    reg [31:0] prof_ctrl_readback_mux_q;
    wire [0:0] profile_ctrl_address_cmp_q;
    wire [0:0] profile_ctrl_feedback_mux_s;
    reg [31:0] profile_ctrl_feedback_mux_q;
    reg [31:0] profile_ctrl_reg_q;
    wire [0:0] profile_ctrl_reset_bit_next_value_s;
    reg [0:0] profile_ctrl_reset_bit_next_value_q;
    reg [63:0] profile_data_reg_q;
    wire [0:0] profile_enable_bit_b;
    wire [0:0] profile_reset_bit_b;
    reg [0:0] profile_reset_state_reg_q;
    wire [0:0] profile_shift_bit_b;
    wire [4:0] profiler_data_addr_q;
    wire [0:0] profiler_enable_and_q;
    wire [31:0] profiler_self_update_q;
    wire [63:0] readdata_bus_out_q;
    wire [0:0] readdata_output_mux_s;
    reg [63:0] readdata_output_mux_q;
    wire [0:0] readdata_upper_bits_mux_s;
    reg [31:0] readdata_upper_bits_mux_q;
    reg [0:0] readdata_valid_reg_q;
    wire [0:0] running_bit_b;
    wire [0:0] select_0_b;
    wire [0:0] select_1_b;
    wire [0:0] select_2_b;
    wire [0:0] select_3_b;
    wire [0:0] select_4_b;
    wire [0:0] select_5_b;
    wire [0:0] select_6_b;
    wire [0:0] select_7_b;
    reg [0:0] start_NO_SHIFT_REG_q;
    wire [0:0] start_bit_b;
    wire [0:0] start_bit_computation_q;
    wire [0:0] start_is_or_going_high_q;
    reg [0:0] started_NO_SHIFT_REG_q;
    reg [31:0] status_NO_SHIFT_REG_q;
    wire [0:0] status_bit_2_b;
    wire [31:0] status_from_cra_q;
    wire [15:0] status_low_b;
    wire [0:0] status_select_s;
    reg [31:0] status_select_q;
    wire [31:0] status_self_update_q;
    wire [6:0] unchanged_status_data_b;
    wire [15:0] version_number_q;
    wire [0:0] will_be_started_q;
    reg [31:0] work_dim_NO_SHIFT_REG_q;
    reg [31:0] workgroup_size_NO_SHIFT_REG_q;
    wire [4:0] dupName_0_address_ref_x_q;
    wire [63:0] dupName_0_arg_bit_join_x_q;
    wire [0:0] dupName_0_can_write_x_q;
    wire [31:0] dupName_0_extracted_high_x_b;
    wire [31:0] dupName_0_mask0_x_q;
    wire [31:0] dupName_0_mask1_x_q;
    wire [31:0] dupName_0_new_data_x_q;
    wire [63:0] dupName_1_arg_bit_join_x_q;
    wire [31:0] dupName_1_extracted_high_x_b;
    wire [31:0] dupName_1_mask0_x_q;
    wire [31:0] dupName_1_new_data_x_q;
    wire [31:0] dupName_2_mask0_x_q;
    wire [31:0] dupName_2_new_data_x_q;
    wire [31:0] dupName_3_mask0_x_q;
    wire [31:0] dupName_3_new_data_x_q;
    wire [0:0] dupName_4_NO_NAME_x_q;
    wire [4:0] dupName_4_address_ref_x_q;
    wire [0:0] dupName_4_can_write_x_q;
    wire [31:0] dupName_4_mask0_x_q;
    wire [31:0] dupName_4_new_data_x_q;
    wire [0:0] dupName_5_NO_NAME_x_q;
    wire [4:0] dupName_5_address_ref_x_q;
    wire [0:0] dupName_5_can_write_x_q;
    wire [31:0] dupName_5_mask0_x_q;
    wire [31:0] dupName_5_new_data_x_q;
    wire [0:0] dupName_6_NO_NAME_x_q;
    wire [4:0] dupName_6_address_ref_x_q;
    wire [0:0] dupName_6_can_write_x_q;
    wire [31:0] dupName_6_mask0_x_q;
    wire [31:0] dupName_6_new_data_x_q;
    wire [0:0] dupName_7_NO_NAME_x_q;
    wire [4:0] dupName_7_address_ref_x_q;
    wire [0:0] dupName_7_can_write_x_q;
    wire [31:0] dupName_7_mask0_x_q;
    wire [31:0] dupName_7_new_data_x_q;
    wire [0:0] dupName_8_NO_NAME_x_q;
    wire [4:0] dupName_8_address_ref_x_q;
    wire [0:0] dupName_8_can_write_x_q;
    wire [31:0] dupName_8_mask0_x_q;
    wire [31:0] dupName_8_new_data_x_q;
    wire [0:0] dupName_9_NO_NAME_x_q;
    wire [4:0] dupName_9_address_ref_x_q;
    wire [0:0] dupName_9_can_write_x_q;
    wire [31:0] dupName_9_mask0_x_q;
    wire [31:0] dupName_9_new_data_x_q;
    wire [0:0] dupName_10_NO_NAME_x_q;
    wire [4:0] dupName_10_address_ref_x_q;
    wire [0:0] dupName_10_can_write_x_q;
    wire [31:0] dupName_10_mask0_x_q;
    wire [31:0] dupName_10_new_data_x_q;
    wire [0:0] dupName_11_NO_NAME_x_q;
    wire [4:0] dupName_11_address_ref_x_q;
    wire [0:0] dupName_11_can_write_x_q;
    wire [31:0] dupName_11_mask0_x_q;
    wire [31:0] dupName_11_new_data_x_q;
    wire [0:0] dupName_12_NO_NAME_x_q;
    wire [4:0] dupName_12_address_ref_x_q;
    wire [0:0] dupName_12_can_write_x_q;
    wire [31:0] dupName_12_mask0_x_q;
    wire [31:0] dupName_12_new_data_x_q;
    wire [0:0] dupName_13_NO_NAME_x_q;
    wire [4:0] dupName_13_address_ref_x_q;
    wire [0:0] dupName_13_can_write_x_q;
    wire [31:0] dupName_13_mask0_x_q;
    wire [31:0] dupName_13_new_data_x_q;
    wire [0:0] dupName_14_NO_NAME_x_q;
    wire [4:0] dupName_14_address_ref_x_q;
    wire [0:0] dupName_14_can_write_x_q;
    wire [31:0] dupName_14_mask0_x_q;
    wire [31:0] dupName_14_new_data_x_q;
    wire [0:0] dupName_15_NO_NAME_x_q;
    wire [4:0] dupName_15_address_ref_x_q;
    wire [0:0] dupName_15_can_write_x_q;
    wire [31:0] dupName_15_mask0_x_q;
    wire [31:0] dupName_15_new_data_x_q;
    wire [31:0] dupName_16_mask0_x_q;
    wire [31:0] dupName_16_new_data_x_q;
    wire [31:0] dupName_17_mask0_x_q;
    wire [31:0] dupName_17_new_data_x_q;
    wire [31:0] dupName_18_mask0_x_q;
    wire [31:0] dupName_18_new_data_x_q;
    wire [31:0] dupName_19_mask0_x_q;
    wire [31:0] dupName_19_new_data_x_q;
    wire [31:0] dupName_20_mask0_x_q;
    wire [31:0] dupName_20_new_data_x_q;
    wire [31:0] dupName_21_mask0_x_q;
    wire [31:0] dupName_21_new_data_x_q;
    wire [31:0] dupName_22_mask0_x_q;
    wire [31:0] dupName_22_new_data_x_q;
    wire [31:0] dupName_23_mask0_x_q;
    wire [31:0] dupName_23_new_data_x_q;
    wire [31:0] dupName_24_mask0_x_q;
    wire [31:0] dupName_24_new_data_x_q;


    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // version_number(CONSTANT,150)
    assign version_number_q = 16'b0000000000000011;

    // bus_low(BITSELECT,23)
    assign bus_low_b = avs_cra_writedata[31:0];

    // select_7(BITSELECT,135)
    assign select_7_b = avs_cra_byteenable[7:7];

    // select_6(BITSELECT,134)
    assign select_6_b = avs_cra_byteenable[6:6];

    // select_5(BITSELECT,133)
    assign select_5_b = avs_cra_byteenable[5:5];

    // select_4(BITSELECT,132)
    assign select_4_b = avs_cra_byteenable[4:4];

    // select_3(BITSELECT,131)
    assign select_3_b = avs_cra_byteenable[3:3];

    // select_2(BITSELECT,130)
    assign select_2_b = avs_cra_byteenable[2:2];

    // select_1(BITSELECT,129)
    assign select_1_b = avs_cra_byteenable[1:1];

    // select_0(BITSELECT,128)
    assign select_0_b = avs_cra_byteenable[0:0];

    // bit_enable(BITJOIN,16)
    assign bit_enable_q = {select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b};

    // bit_enable_bottom(BITSELECT,18)
    assign bit_enable_bottom_b = bit_enable_q[31:0];

    // mask1(LOGICAL,65)
    assign mask1_q = bit_enable_bottom_b & bus_low_b;

    // bit_enable_bar(LOGICAL,17)
    assign bit_enable_bar_q = ~ (bit_enable_q);

    // bit_enable_bottom_bar(BITSELECT,19)
    assign bit_enable_bottom_bar_b = bit_enable_bar_q[31:0];

    // mask0(LOGICAL,64)
    assign mask0_q = bit_enable_bottom_bar_b & status_NO_SHIFT_REG_q;

    // new_data(LOGICAL,67)
    assign new_data_q = mask0_q | mask1_q;

    // status_low(BITSELECT,145)
    assign status_low_b = new_data_q[15:0];

    // status_from_cra(BITJOIN,144)
    assign status_from_cra_q = {version_number_q, status_low_b};

    // running_bit(BITSELECT,127)
    assign running_bit_b = status_NO_SHIFT_REG_q[15:15];

    // not_finished(LOGICAL,70)
    assign not_finished_q = ~ (finish);

    // compute_running_done(LOGICAL,28)
    assign compute_running_done_q = not_finished_q & running_bit_b;

    // start_bit(BITSELECT,137)
    assign start_bit_b = status_NO_SHIFT_REG_q[0:0];

    // compute_running(LOGICAL,27)
    assign compute_running_q = start_bit_b | compute_running_done_q;

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // unchanged_status_data(BITSELECT,149)
    assign unchanged_status_data_b = status_NO_SHIFT_REG_q[11:5];

    // printf_counter_reset_mux(MUX,107)
    assign printf_counter_reset_mux_s = printf_reset_bit_b;
    always @(printf_counter_reset_mux_s or printf_reset_bit_b or GND_q)
    begin
        unique case (printf_counter_reset_mux_s)
            1'b0 : printf_counter_reset_mux_q = printf_reset_bit_b;
            1'b1 : printf_counter_reset_mux_q = GND_q;
            default : printf_counter_reset_mux_q = 1'b0;
        endcase
    end

    // printf_bit(BITSELECT,105)
    assign printf_bit_b = status_NO_SHIFT_REG_q[3:3];

    // printf_bit_mux(MUX,106)
    assign printf_bit_mux_s = acl_counter_full;
    always @(printf_bit_mux_s or printf_bit_b or VCC_q)
    begin
        unique case (printf_bit_mux_s)
            1'b0 : printf_bit_mux_q = printf_bit_b;
            1'b1 : printf_bit_mux_q = VCC_q;
            default : printf_bit_mux_q = 1'b0;
        endcase
    end

    // status_bit_2(BITSELECT,142)
    assign status_bit_2_b = status_NO_SHIFT_REG_q[2:2];

    // finished_bit(BITSELECT,39)
    assign finished_bit_b = status_NO_SHIFT_REG_q[1:1];

    // mask_finished_when_not_running(LOGICAL,66)
    assign mask_finished_when_not_running_q = finish & running_bit_b;

    // compute_finished(LOGICAL,26)
    assign compute_finished_q = mask_finished_when_not_running_q | finished_bit_b;

    // not_start(LOGICAL,72)
    assign not_start_q = ~ (start_bit_b);

    // start_bit_computation(LOGICAL,138)
    assign start_bit_computation_q = not_start_q & start_bit_b;

    // status_self_update(BITJOIN,148)
    assign status_self_update_q = {version_number_q, compute_running_q, GND_q, has_a_write_pending, has_a_lsu_active, unchanged_status_data_b, printf_counter_reset_mux_q, printf_bit_mux_q, status_bit_2_b, compute_finished_q, start_bit_computation_q};

    // address_ref(CONSTANT,4)
    assign address_ref_q = 5'b00000;

    // NO_NAME(LOGICAL,2)
    assign NO_NAME_q = avs_cra_address == address_ref_q ? 1'b1 : 1'b0;

    // can_write(LOGICAL,24)
    assign can_write_q = NO_NAME_q & avs_cra_write;

    // status_select(MUX,147)
    assign status_select_s = can_write_q;
    always @(status_select_s or status_self_update_q or status_from_cra_q)
    begin
        unique case (status_select_s)
            1'b0 : status_select_q = status_self_update_q;
            1'b1 : status_select_q = status_from_cra_q;
            default : status_select_q = 32'b0;
        endcase
    end

    // status_NO_SHIFT_REG(REG,141)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            status_NO_SHIFT_REG_q <= 32'b00000000000000110000000000000000;
        end
        else
        begin
            status_NO_SHIFT_REG_q <= status_select_q;
        end
    end

    // printf_reset_bit(BITSELECT,108)
    assign printf_reset_bit_b = status_NO_SHIFT_REG_q[4:4];

    // acl_counter_reset(GPOUT,77)
    assign acl_counter_reset = printf_reset_bit_b;

    // bus_high(BITSELECT,22)
    assign bus_high_b = avs_cra_writedata[63:32];

    // bit_enable_top(BITSELECT,20)
    assign bit_enable_top_b = bit_enable_q[63:32];

    // dupName_0_mask1_x(LOGICAL,163)
    assign dupName_0_mask1_x_q = bit_enable_top_b & bus_high_b;

    // bit_enable_top_bar(BITSELECT,21)
    assign bit_enable_top_bar_b = bit_enable_bar_q[63:32];

    // dupName_0_mask0_x(LOGICAL,162)
    assign dupName_0_mask0_x_q = bit_enable_top_bar_b & profile_ctrl_reg_q;

    // dupName_0_new_data_x(LOGICAL,164)
    assign dupName_0_new_data_x_q = dupName_0_mask0_x_q | dupName_0_mask1_x_q;

    // const_0_29(CONSTANT,30)
    assign const_0_29_q = 29'b00000000000000000000000000001;

    // profile_enable_bit(BITSELECT,115)
    assign profile_enable_bit_b = profile_ctrl_reg_q[2:2];

    // profile_reset_bit(BITSELECT,117)
    assign profile_reset_bit_b = profile_ctrl_reg_q[1:1];

    // profile_reset_state_reg(REG,118)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            profile_reset_state_reg_q <= 1'b0;
        end
        else
        begin
            profile_reset_state_reg_q <= profile_reset_bit_b;
        end
    end

    // profile_ctrl_reset_bit_next_value(MUX,113)
    assign profile_ctrl_reset_bit_next_value_s = profile_reset_state_reg_q;
    always @(profile_ctrl_reset_bit_next_value_s or profile_reset_bit_b or GND_q)
    begin
        unique case (profile_ctrl_reset_bit_next_value_s)
            1'b0 : profile_ctrl_reset_bit_next_value_q = profile_reset_bit_b;
            1'b1 : profile_ctrl_reset_bit_next_value_q = GND_q;
            default : profile_ctrl_reset_bit_next_value_q = 1'b0;
        endcase
    end

    // profiler_self_update(BITJOIN,122)
    assign profiler_self_update_q = {const_0_29_q, profile_enable_bit_b, profile_ctrl_reset_bit_next_value_q, GND_q};

    // dupName_0_address_ref_x(CONSTANT,155)
    assign dupName_0_address_ref_x_q = 5'b00001;

    // profile_ctrl_address_cmp(LOGICAL,110)
    assign profile_ctrl_address_cmp_q = avs_cra_address == dupName_0_address_ref_x_q ? 1'b1 : 1'b0;

    // dupName_0_can_write_x(LOGICAL,157)
    assign dupName_0_can_write_x_q = profile_ctrl_address_cmp_q & avs_cra_write;

    // profile_ctrl_feedback_mux(MUX,111)
    assign profile_ctrl_feedback_mux_s = dupName_0_can_write_x_q;
    always @(profile_ctrl_feedback_mux_s or profiler_self_update_q or dupName_0_new_data_x_q)
    begin
        unique case (profile_ctrl_feedback_mux_s)
            1'b0 : profile_ctrl_feedback_mux_q = profiler_self_update_q;
            1'b1 : profile_ctrl_feedback_mux_q = dupName_0_new_data_x_q;
            default : profile_ctrl_feedback_mux_q = 32'b0;
        endcase
    end

    // profile_ctrl_reg(REG,112)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            profile_ctrl_reg_q <= 32'b00000000000000000000000000000110;
        end
        else
        begin
            profile_ctrl_reg_q <= profile_ctrl_feedback_mux_q;
        end
    end

    // profile_shift_bit(BITSELECT,119)
    assign profile_shift_bit_b = profile_ctrl_reg_q[0:0];

    // profile_data_reg(REG,114)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            profile_data_reg_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (profile_shift_bit_b == 1'b1)
        begin
            profile_data_reg_q <= profile_data_wire;
        end
    end

    // const_padding(CONSTANT,32)
    assign const_padding_q = 32'b00000000000000000000000000000000;

    // readdata_upper_bits_mux(MUX,125)
    assign readdata_upper_bits_mux_s = NO_NAME_q;
    always @(readdata_upper_bits_mux_s or const_padding_q or acl_counter_size)
    begin
        unique case (readdata_upper_bits_mux_s)
            1'b0 : readdata_upper_bits_mux_q = const_padding_q;
            1'b1 : readdata_upper_bits_mux_q = acl_counter_size;
            default : readdata_upper_bits_mux_q = 32'b0;
        endcase
    end

    // prof_ctrl_readback_mux(MUX,109)
    assign prof_ctrl_readback_mux_s = profile_ctrl_address_cmp_q;
    always @(prof_ctrl_readback_mux_s or readdata_upper_bits_mux_q or profile_ctrl_reg_q)
    begin
        unique case (prof_ctrl_readback_mux_s)
            1'b0 : prof_ctrl_readback_mux_q = readdata_upper_bits_mux_q;
            1'b1 : prof_ctrl_readback_mux_q = profile_ctrl_reg_q;
            default : prof_ctrl_readback_mux_q = 32'b0;
        endcase
    end

    // readdata_bus_out(BITJOIN,123)
    assign readdata_bus_out_q = {prof_ctrl_readback_mux_q, status_NO_SHIFT_REG_q};

    // cra_stage1_data_reg(REG,36)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cra_stage1_data_reg_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else
        begin
            cra_stage1_data_reg_q <= readdata_bus_out_q;
        end
    end

    // profiler_data_addr(CONSTANT,120)
    assign profiler_data_addr_q = 5'b00010;

    // is_profiler_data_addr(LOGICAL,59)
    assign is_profiler_data_addr_q = avs_cra_address == profiler_data_addr_q ? 1'b1 : 1'b0;

    // cra_output_was_profiler_data_address_reg(REG,35)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cra_output_was_profiler_data_address_reg_q <= 1'b0;
        end
        else
        begin
            cra_output_was_profiler_data_address_reg_q <= is_profiler_data_addr_q;
        end
    end

    // readdata_output_mux(MUX,124)
    assign readdata_output_mux_s = cra_output_was_profiler_data_address_reg_q;
    always @(readdata_output_mux_s or cra_stage1_data_reg_q or profile_data_reg_q)
    begin
        unique case (readdata_output_mux_s)
            1'b0 : readdata_output_mux_q = cra_stage1_data_reg_q;
            1'b1 : readdata_output_mux_q = profile_data_reg_q;
            default : readdata_output_mux_q = 64'b0;
        endcase
    end

    // cra_output_readdata_reg(REG,33)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cra_output_readdata_reg_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else
        begin
            cra_output_readdata_reg_q <= readdata_output_mux_q;
        end
    end

    // avs_cra_readdata(GPOUT,78)
    assign avs_cra_readdata = cra_output_readdata_reg_q;

    // readdata_valid_reg(REG,126)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            readdata_valid_reg_q <= 1'b0;
        end
        else
        begin
            readdata_valid_reg_q <= avs_cra_read;
        end
    end

    // cra_output_readdatavalid_reg(REG,34)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cra_output_readdatavalid_reg_q <= 1'b0;
        end
        else
        begin
            cra_output_readdatavalid_reg_q <= readdata_valid_reg_q;
        end
    end

    // avs_cra_readdatavalid(GPOUT,79)
    assign avs_cra_readdatavalid = cra_output_readdatavalid_reg_q;

    // done_or_printf_irq_signal(LOGICAL,37)
    assign done_or_printf_irq_signal_q = finished_bit_b | printf_bit_b;

    // cra_irq(GPOUT,80)
    assign cra_irq = done_or_printf_irq_signal_q;

    // dupName_9_address_ref_x(CONSTANT,208)
    assign dupName_9_address_ref_x_q = 5'b01010;

    // dupName_9_NO_NAME_x(LOGICAL,207)
    assign dupName_9_NO_NAME_x_q = avs_cra_address == dupName_9_address_ref_x_q ? 1'b1 : 1'b0;

    // dupName_9_can_write_x(LOGICAL,209)
    assign dupName_9_can_write_x_q = dupName_9_NO_NAME_x_q & avs_cra_write;

    // dupName_12_mask0_x(LOGICAL,228)
    assign dupName_12_mask0_x_q = bit_enable_top_bar_b & global_offset_reg_0_q;

    // dupName_12_new_data_x(LOGICAL,230)
    assign dupName_12_new_data_x_q = dupName_12_mask0_x_q | dupName_0_mask1_x_q;

    // global_offset_reg_0(REG,40)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_0_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_9_can_write_x_q == 1'b1)
        begin
            global_offset_reg_0_q <= dupName_12_new_data_x_q;
        end
    end

    // global_offset_0(GPOUT,81)
    assign global_offset_0 = global_offset_reg_0_q;

    // dupName_10_address_ref_x(CONSTANT,214)
    assign dupName_10_address_ref_x_q = 5'b01011;

    // dupName_10_NO_NAME_x(LOGICAL,213)
    assign dupName_10_NO_NAME_x_q = avs_cra_address == dupName_10_address_ref_x_q ? 1'b1 : 1'b0;

    // dupName_10_can_write_x(LOGICAL,215)
    assign dupName_10_can_write_x_q = dupName_10_NO_NAME_x_q & avs_cra_write;

    // dupName_13_mask0_x(LOGICAL,234)
    assign dupName_13_mask0_x_q = bit_enable_bottom_bar_b & global_offset_reg_1_q;

    // dupName_13_new_data_x(LOGICAL,236)
    assign dupName_13_new_data_x_q = dupName_13_mask0_x_q | mask1_q;

    // global_offset_reg_1(REG,41)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_1_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_10_can_write_x_q == 1'b1)
        begin
            global_offset_reg_1_q <= dupName_13_new_data_x_q;
        end
    end

    // global_offset_1(GPOUT,82)
    assign global_offset_1 = global_offset_reg_1_q;

    // dupName_14_mask0_x(LOGICAL,240)
    assign dupName_14_mask0_x_q = bit_enable_top_bar_b & global_offset_reg_2_q;

    // dupName_14_new_data_x(LOGICAL,242)
    assign dupName_14_new_data_x_q = dupName_14_mask0_x_q | dupName_0_mask1_x_q;

    // global_offset_reg_2(REG,42)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_2_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_10_can_write_x_q == 1'b1)
        begin
            global_offset_reg_2_q <= dupName_14_new_data_x_q;
        end
    end

    // global_offset_2(GPOUT,83)
    assign global_offset_2 = global_offset_reg_2_q;

    // dupName_5_address_ref_x(CONSTANT,184)
    assign dupName_5_address_ref_x_q = 5'b00110;

    // dupName_5_NO_NAME_x(LOGICAL,183)
    assign dupName_5_NO_NAME_x_q = avs_cra_address == dupName_5_address_ref_x_q ? 1'b1 : 1'b0;

    // dupName_5_can_write_x(LOGICAL,185)
    assign dupName_5_can_write_x_q = dupName_5_NO_NAME_x_q & avs_cra_write;

    // dupName_3_mask0_x(LOGICAL,174)
    assign dupName_3_mask0_x_q = bit_enable_bottom_bar_b & global_size_reg_0_q;

    // dupName_3_new_data_x(LOGICAL,176)
    assign dupName_3_new_data_x_q = dupName_3_mask0_x_q | mask1_q;

    // global_size_reg_0(REG,43)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_0_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_5_can_write_x_q == 1'b1)
        begin
            global_size_reg_0_q <= dupName_3_new_data_x_q;
        end
    end

    // global_size_0(GPOUT,84)
    assign global_size_0 = global_size_reg_0_q;

    // dupName_4_mask0_x(LOGICAL,180)
    assign dupName_4_mask0_x_q = bit_enable_top_bar_b & global_size_reg_1_q;

    // dupName_4_new_data_x(LOGICAL,182)
    assign dupName_4_new_data_x_q = dupName_4_mask0_x_q | dupName_0_mask1_x_q;

    // global_size_reg_1(REG,44)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_1_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_5_can_write_x_q == 1'b1)
        begin
            global_size_reg_1_q <= dupName_4_new_data_x_q;
        end
    end

    // global_size_1(GPOUT,85)
    assign global_size_1 = global_size_reg_1_q;

    // dupName_6_address_ref_x(CONSTANT,190)
    assign dupName_6_address_ref_x_q = 5'b00111;

    // dupName_6_NO_NAME_x(LOGICAL,189)
    assign dupName_6_NO_NAME_x_q = avs_cra_address == dupName_6_address_ref_x_q ? 1'b1 : 1'b0;

    // dupName_6_can_write_x(LOGICAL,191)
    assign dupName_6_can_write_x_q = dupName_6_NO_NAME_x_q & avs_cra_write;

    // dupName_5_mask0_x(LOGICAL,186)
    assign dupName_5_mask0_x_q = bit_enable_bottom_bar_b & global_size_reg_2_q;

    // dupName_5_new_data_x(LOGICAL,188)
    assign dupName_5_new_data_x_q = dupName_5_mask0_x_q | mask1_q;

    // global_size_reg_2(REG,45)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_2_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_6_can_write_x_q == 1'b1)
        begin
            global_size_reg_2_q <= dupName_5_new_data_x_q;
        end
    end

    // global_size_2(GPOUT,86)
    assign global_size_2 = global_size_reg_2_q;

    // dupName_15_address_ref_x(CONSTANT,244)
    assign dupName_15_address_ref_x_q = 5'b10000;

    // dupName_15_NO_NAME_x(LOGICAL,243)
    assign dupName_15_NO_NAME_x_q = avs_cra_address == dupName_15_address_ref_x_q ? 1'b1 : 1'b0;

    // dupName_15_can_write_x(LOGICAL,245)
    assign dupName_15_can_write_x_q = dupName_15_NO_NAME_x_q & avs_cra_write;

    // dupName_24_mask0_x(LOGICAL,273)
    assign dupName_24_mask0_x_q = bit_enable_top_bar_b & arguments_9_q;

    // dupName_24_new_data_x(LOGICAL,275)
    assign dupName_24_new_data_x_q = dupName_24_mask0_x_q | dupName_0_mask1_x_q;

    // arguments_9(REG,15)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_9_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_15_can_write_x_q == 1'b1)
        begin
            arguments_9_q <= dupName_24_new_data_x_q;
        end
    end

    // dupName_23_mask0_x(LOGICAL,270)
    assign dupName_23_mask0_x_q = bit_enable_bottom_bar_b & arguments_8_q;

    // dupName_23_new_data_x(LOGICAL,272)
    assign dupName_23_new_data_x_q = dupName_23_mask0_x_q | mask1_q;

    // arguments_8(REG,14)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_8_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_15_can_write_x_q == 1'b1)
        begin
            arguments_8_q <= dupName_23_new_data_x_q;
        end
    end

    // dupName_14_address_ref_x(CONSTANT,238)
    assign dupName_14_address_ref_x_q = 5'b01111;

    // dupName_14_NO_NAME_x(LOGICAL,237)
    assign dupName_14_NO_NAME_x_q = avs_cra_address == dupName_14_address_ref_x_q ? 1'b1 : 1'b0;

    // dupName_14_can_write_x(LOGICAL,239)
    assign dupName_14_can_write_x_q = dupName_14_NO_NAME_x_q & avs_cra_write;

    // dupName_22_mask0_x(LOGICAL,267)
    assign dupName_22_mask0_x_q = bit_enable_top_bar_b & arguments_7_q;

    // dupName_22_new_data_x(LOGICAL,269)
    assign dupName_22_new_data_x_q = dupName_22_mask0_x_q | dupName_0_mask1_x_q;

    // arguments_7(REG,13)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_7_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_14_can_write_x_q == 1'b1)
        begin
            arguments_7_q <= dupName_22_new_data_x_q;
        end
    end

    // dupName_21_mask0_x(LOGICAL,264)
    assign dupName_21_mask0_x_q = bit_enable_bottom_bar_b & arguments_6_q;

    // dupName_21_new_data_x(LOGICAL,266)
    assign dupName_21_new_data_x_q = dupName_21_mask0_x_q | mask1_q;

    // arguments_6(REG,12)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_6_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_14_can_write_x_q == 1'b1)
        begin
            arguments_6_q <= dupName_21_new_data_x_q;
        end
    end

    // dupName_13_address_ref_x(CONSTANT,232)
    assign dupName_13_address_ref_x_q = 5'b01110;

    // dupName_13_NO_NAME_x(LOGICAL,231)
    assign dupName_13_NO_NAME_x_q = avs_cra_address == dupName_13_address_ref_x_q ? 1'b1 : 1'b0;

    // dupName_13_can_write_x(LOGICAL,233)
    assign dupName_13_can_write_x_q = dupName_13_NO_NAME_x_q & avs_cra_write;

    // dupName_20_mask0_x(LOGICAL,261)
    assign dupName_20_mask0_x_q = bit_enable_top_bar_b & arguments_5_q;

    // dupName_20_new_data_x(LOGICAL,263)
    assign dupName_20_new_data_x_q = dupName_20_mask0_x_q | dupName_0_mask1_x_q;

    // arguments_5(REG,11)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_5_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_13_can_write_x_q == 1'b1)
        begin
            arguments_5_q <= dupName_20_new_data_x_q;
        end
    end

    // dupName_1_extracted_high_x(BITSELECT,167)
    assign dupName_1_extracted_high_x_b = arguments_5_q[31:0];

    // dupName_19_mask0_x(LOGICAL,258)
    assign dupName_19_mask0_x_q = bit_enable_bottom_bar_b & arguments_4_q;

    // dupName_19_new_data_x(LOGICAL,260)
    assign dupName_19_new_data_x_q = dupName_19_mask0_x_q | mask1_q;

    // arguments_4(REG,10)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_4_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_13_can_write_x_q == 1'b1)
        begin
            arguments_4_q <= dupName_19_new_data_x_q;
        end
    end

    // dupName_1_arg_bit_join_x(BITJOIN,165)
    assign dupName_1_arg_bit_join_x_q = {dupName_1_extracted_high_x_b, arguments_4_q};

    // dupName_12_address_ref_x(CONSTANT,226)
    assign dupName_12_address_ref_x_q = 5'b01101;

    // dupName_12_NO_NAME_x(LOGICAL,225)
    assign dupName_12_NO_NAME_x_q = avs_cra_address == dupName_12_address_ref_x_q ? 1'b1 : 1'b0;

    // dupName_12_can_write_x(LOGICAL,227)
    assign dupName_12_can_write_x_q = dupName_12_NO_NAME_x_q & avs_cra_write;

    // dupName_18_mask0_x(LOGICAL,255)
    assign dupName_18_mask0_x_q = bit_enable_top_bar_b & arguments_3_q;

    // dupName_18_new_data_x(LOGICAL,257)
    assign dupName_18_new_data_x_q = dupName_18_mask0_x_q | dupName_0_mask1_x_q;

    // arguments_3(REG,9)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_3_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_12_can_write_x_q == 1'b1)
        begin
            arguments_3_q <= dupName_18_new_data_x_q;
        end
    end

    // dupName_0_extracted_high_x(BITSELECT,161)
    assign dupName_0_extracted_high_x_b = arguments_3_q[31:0];

    // dupName_17_mask0_x(LOGICAL,252)
    assign dupName_17_mask0_x_q = bit_enable_bottom_bar_b & arguments_2_q;

    // dupName_17_new_data_x(LOGICAL,254)
    assign dupName_17_new_data_x_q = dupName_17_mask0_x_q | mask1_q;

    // arguments_2(REG,8)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_2_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_12_can_write_x_q == 1'b1)
        begin
            arguments_2_q <= dupName_17_new_data_x_q;
        end
    end

    // dupName_0_arg_bit_join_x(BITJOIN,156)
    assign dupName_0_arg_bit_join_x_q = {dupName_0_extracted_high_x_b, arguments_2_q};

    // dupName_11_address_ref_x(CONSTANT,220)
    assign dupName_11_address_ref_x_q = 5'b01100;

    // dupName_11_NO_NAME_x(LOGICAL,219)
    assign dupName_11_NO_NAME_x_q = avs_cra_address == dupName_11_address_ref_x_q ? 1'b1 : 1'b0;

    // dupName_11_can_write_x(LOGICAL,221)
    assign dupName_11_can_write_x_q = dupName_11_NO_NAME_x_q & avs_cra_write;

    // dupName_16_mask0_x(LOGICAL,249)
    assign dupName_16_mask0_x_q = bit_enable_top_bar_b & arguments_1_q;

    // dupName_16_new_data_x(LOGICAL,251)
    assign dupName_16_new_data_x_q = dupName_16_mask0_x_q | dupName_0_mask1_x_q;

    // arguments_1(REG,7)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_1_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_11_can_write_x_q == 1'b1)
        begin
            arguments_1_q <= dupName_16_new_data_x_q;
        end
    end

    // extracted_high(BITSELECT,38)
    assign extracted_high_b = arguments_1_q[31:0];

    // dupName_15_mask0_x(LOGICAL,246)
    assign dupName_15_mask0_x_q = bit_enable_bottom_bar_b & arguments_0_q;

    // dupName_15_new_data_x(LOGICAL,248)
    assign dupName_15_new_data_x_q = dupName_15_mask0_x_q | mask1_q;

    // arguments_0(REG,6)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_0_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_11_can_write_x_q == 1'b1)
        begin
            arguments_0_q <= dupName_15_new_data_x_q;
        end
    end

    // arg_bit_join(BITJOIN,5)
    assign arg_bit_join_q = {extracted_high_b, arguments_0_q};

    // kernel_arg_bit_join(BITJOIN,60)
    assign kernel_arg_bit_join_q = {arguments_9_q, arguments_8_q, arguments_7_q, arguments_6_q, dupName_1_arg_bit_join_x_q, dupName_0_arg_bit_join_x_q, arg_bit_join_q};

    // pipe_reg0_kernel_arguments(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            pipe_reg0_kernel_arguments_q <= kernel_arg_bit_join_q;
        end
    end

    // pipe_reg1_kernel_arguments(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            pipe_reg1_kernel_arguments_q <= pipe_reg0_kernel_arguments_q;
        end
    end

    // kernel_arguments(GPOUT,87)
    assign kernel_arguments = pipe_reg1_kernel_arguments_q;

    // dupName_8_address_ref_x(CONSTANT,202)
    assign dupName_8_address_ref_x_q = 5'b01001;

    // dupName_8_NO_NAME_x(LOGICAL,201)
    assign dupName_8_NO_NAME_x_q = avs_cra_address == dupName_8_address_ref_x_q ? 1'b1 : 1'b0;

    // dupName_8_can_write_x(LOGICAL,203)
    assign dupName_8_can_write_x_q = dupName_8_NO_NAME_x_q & avs_cra_write;

    // dupName_9_mask0_x(LOGICAL,210)
    assign dupName_9_mask0_x_q = bit_enable_bottom_bar_b & local_size_reg_0_q;

    // dupName_9_new_data_x(LOGICAL,212)
    assign dupName_9_new_data_x_q = dupName_9_mask0_x_q | mask1_q;

    // local_size_reg_0(REG,61)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_0_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_8_can_write_x_q == 1'b1)
        begin
            local_size_reg_0_q <= dupName_9_new_data_x_q;
        end
    end

    // local_size_0(GPOUT,88)
    assign local_size_0 = local_size_reg_0_q;

    // dupName_10_mask0_x(LOGICAL,216)
    assign dupName_10_mask0_x_q = bit_enable_top_bar_b & local_size_reg_1_q;

    // dupName_10_new_data_x(LOGICAL,218)
    assign dupName_10_new_data_x_q = dupName_10_mask0_x_q | dupName_0_mask1_x_q;

    // local_size_reg_1(REG,62)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_1_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_8_can_write_x_q == 1'b1)
        begin
            local_size_reg_1_q <= dupName_10_new_data_x_q;
        end
    end

    // local_size_1(GPOUT,89)
    assign local_size_1 = local_size_reg_1_q;

    // dupName_11_mask0_x(LOGICAL,222)
    assign dupName_11_mask0_x_q = bit_enable_bottom_bar_b & local_size_reg_2_q;

    // dupName_11_new_data_x(LOGICAL,224)
    assign dupName_11_new_data_x_q = dupName_11_mask0_x_q | mask1_q;

    // local_size_reg_2(REG,63)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_2_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_9_can_write_x_q == 1'b1)
        begin
            local_size_reg_2_q <= dupName_11_new_data_x_q;
        end
    end

    // local_size_2(GPOUT,90)
    assign local_size_2 = local_size_reg_2_q;

    // dupName_6_mask0_x(LOGICAL,192)
    assign dupName_6_mask0_x_q = bit_enable_top_bar_b & num_groups_reg_0_q;

    // dupName_6_new_data_x(LOGICAL,194)
    assign dupName_6_new_data_x_q = dupName_6_mask0_x_q | dupName_0_mask1_x_q;

    // num_groups_reg_0(REG,74)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_0_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_6_can_write_x_q == 1'b1)
        begin
            num_groups_reg_0_q <= dupName_6_new_data_x_q;
        end
    end

    // num_groups_0(GPOUT,91)
    assign num_groups_0 = num_groups_reg_0_q;

    // dupName_7_address_ref_x(CONSTANT,196)
    assign dupName_7_address_ref_x_q = 5'b01000;

    // dupName_7_NO_NAME_x(LOGICAL,195)
    assign dupName_7_NO_NAME_x_q = avs_cra_address == dupName_7_address_ref_x_q ? 1'b1 : 1'b0;

    // dupName_7_can_write_x(LOGICAL,197)
    assign dupName_7_can_write_x_q = dupName_7_NO_NAME_x_q & avs_cra_write;

    // dupName_7_mask0_x(LOGICAL,198)
    assign dupName_7_mask0_x_q = bit_enable_bottom_bar_b & num_groups_reg_1_q;

    // dupName_7_new_data_x(LOGICAL,200)
    assign dupName_7_new_data_x_q = dupName_7_mask0_x_q | mask1_q;

    // num_groups_reg_1(REG,75)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_1_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_7_can_write_x_q == 1'b1)
        begin
            num_groups_reg_1_q <= dupName_7_new_data_x_q;
        end
    end

    // num_groups_1(GPOUT,92)
    assign num_groups_1 = num_groups_reg_1_q;

    // dupName_8_mask0_x(LOGICAL,204)
    assign dupName_8_mask0_x_q = bit_enable_top_bar_b & num_groups_reg_2_q;

    // dupName_8_new_data_x(LOGICAL,206)
    assign dupName_8_new_data_x_q = dupName_8_mask0_x_q | dupName_0_mask1_x_q;

    // num_groups_reg_2(REG,76)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_2_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_7_can_write_x_q == 1'b1)
        begin
            num_groups_reg_2_q <= dupName_8_new_data_x_q;
        end
    end

    // num_groups_2(GPOUT,93)
    assign num_groups_2 = num_groups_reg_2_q;

    // not_started(LOGICAL,73)
    assign not_started_q = ~ (started_NO_SHIFT_REG_q);

    // start_is_or_going_high(LOGICAL,139)
    assign start_is_or_going_high_q = start_bit_b | start_NO_SHIFT_REG_q;

    // next_start_reg_value(LOGICAL,68)
    assign next_start_reg_value_q = start_is_or_going_high_q & not_started_q;

    // start_NO_SHIFT_REG(REG,136)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            start_NO_SHIFT_REG_q <= 1'b0;
        end
        else
        begin
            start_NO_SHIFT_REG_q <= next_start_reg_value_q;
        end
    end

    // will_be_started(LOGICAL,151)
    assign will_be_started_q = start_NO_SHIFT_REG_q | started_NO_SHIFT_REG_q;

    // next_started_value(LOGICAL,69)
    assign next_started_value_q = will_be_started_q & not_finished_q;

    // started_NO_SHIFT_REG(REG,140)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            started_NO_SHIFT_REG_q <= 1'b0;
        end
        else
        begin
            started_NO_SHIFT_REG_q <= next_started_value_q;
        end
    end

    // profiler_enable_and(LOGICAL,121)
    assign profiler_enable_and_q = profile_enable_bit_b & started_NO_SHIFT_REG_q;

    // profile_enable(GPOUT,94)
    assign profile_enable = profiler_enable_and_q;

    // not_reset_state_reg(LOGICAL,71)
    assign not_reset_state_reg_q = ~ (profile_reset_state_reg_q);

    // profile_reset_n(GPOUT,95)
    assign profile_reset_n = not_reset_state_reg_q;

    // profile_shift(GPOUT,96)
    assign profile_shift = profile_shift_bit_b;

    // pipe_reg0_start(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            pipe_reg0_start_q <= start_NO_SHIFT_REG_q;
        end
    end

    // pipe_reg1_start(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            pipe_reg1_start_q <= pipe_reg0_start_q;
        end
    end

    // start(GPOUT,97)
    assign start = pipe_reg1_start_q;

    // status(GPOUT,98)
    assign status = status_NO_SHIFT_REG_q;

    // dupName_4_address_ref_x(CONSTANT,178)
    assign dupName_4_address_ref_x_q = 5'b00101;

    // dupName_4_NO_NAME_x(LOGICAL,177)
    assign dupName_4_NO_NAME_x_q = avs_cra_address == dupName_4_address_ref_x_q ? 1'b1 : 1'b0;

    // dupName_4_can_write_x(LOGICAL,179)
    assign dupName_4_can_write_x_q = dupName_4_NO_NAME_x_q & avs_cra_write;

    // dupName_1_mask0_x(LOGICAL,168)
    assign dupName_1_mask0_x_q = bit_enable_bottom_bar_b & work_dim_NO_SHIFT_REG_q;

    // dupName_1_new_data_x(LOGICAL,170)
    assign dupName_1_new_data_x_q = dupName_1_mask0_x_q | mask1_q;

    // work_dim_NO_SHIFT_REG(REG,152)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            work_dim_NO_SHIFT_REG_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_4_can_write_x_q == 1'b1)
        begin
            work_dim_NO_SHIFT_REG_q <= dupName_1_new_data_x_q;
        end
    end

    // work_dim(GPOUT,99)
    assign work_dim = work_dim_NO_SHIFT_REG_q;

    // dupName_2_mask0_x(LOGICAL,171)
    assign dupName_2_mask0_x_q = bit_enable_top_bar_b & workgroup_size_NO_SHIFT_REG_q;

    // dupName_2_new_data_x(LOGICAL,173)
    assign dupName_2_new_data_x_q = dupName_2_mask0_x_q | dupName_0_mask1_x_q;

    // workgroup_size_NO_SHIFT_REG(REG,153)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            workgroup_size_NO_SHIFT_REG_q <= 32'b00000000000000000000000000000000;
        end
        else if (dupName_4_can_write_x_q == 1'b1)
        begin
            workgroup_size_NO_SHIFT_REG_q <= dupName_2_new_data_x_q;
        end
    end

    // workgroup_size(GPOUT,100)
    assign workgroup_size = workgroup_size_NO_SHIFT_REG_q;

endmodule
