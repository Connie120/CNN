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

// SystemVerilog created from cnn_bb_B13_stall_region
// SystemVerilog created on Thu Jun 25 10:37:43 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B13_stall_region (
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    output wire [63:0] out_intel_reserved_ffwd_100_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_intel_reserved_ffwd_11_0,
    output wire [63:0] out_intel_reserved_ffwd_101_0,
    input wire [63:0] in_add82_push35757,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_add82_push35757,
    output wire [0:0] out_c0_exe1937,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    output wire [63:0] out_intel_reserved_ffwd_99_0,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_intel_reserved_ffwd_100_0;
    wire [63:0] i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_intel_reserved_ffwd_101_0;
    wire [63:0] i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_intel_reserved_ffwd_99_0;
    wire [0:0] i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_c0_exit936_1;
    reg [63:0] redist0_stall_entry_o4_7_0_q;
    reg [63:0] redist0_stall_entry_o4_7_1_q;
    reg [63:0] redist0_stall_entry_o4_7_2_q;
    reg [63:0] redist0_stall_entry_o4_7_3_q;
    reg [63:0] redist0_stall_entry_o4_7_4_q;
    reg [63:0] redist0_stall_entry_o4_7_5_q;
    reg [63:0] redist0_stall_entry_o4_7_6_q;
    wire [63:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_V0;
    reg [0:0] SE_redist0_stall_entry_o4_7_0_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_0_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_0_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_0_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_7_0_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_7_0_V0;
    reg [0:0] SE_redist0_stall_entry_o4_7_1_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_1_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_1_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_1_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_7_1_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_7_1_V0;
    reg [0:0] SE_redist0_stall_entry_o4_7_2_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_2_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_2_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_2_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_7_2_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_7_2_V0;
    reg [0:0] SE_redist0_stall_entry_o4_7_3_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_3_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_3_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_3_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_7_3_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_7_3_V0;
    reg [0:0] SE_redist0_stall_entry_o4_7_4_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_4_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_4_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_4_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_7_4_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_7_4_V0;
    reg [0:0] SE_redist0_stall_entry_o4_7_5_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_5_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_5_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_5_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_7_5_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_7_5_V0;
    reg [0:0] SE_redist0_stall_entry_o4_7_6_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_6_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_6_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_7_6_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_7_6_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_7_6_V0;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_2_i_valid;
    reg [0:0] SR_SE_redist0_stall_entry_o4_7_2_r_valid;
    reg [63:0] SR_SE_redist0_stall_entry_o4_7_2_r_data0;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_2_backStall;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_2_V;
    wire [63:0] SR_SE_redist0_stall_entry_o4_7_2_D0;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_3_i_valid;
    reg [0:0] SR_SE_redist0_stall_entry_o4_7_3_r_valid;
    reg [63:0] SR_SE_redist0_stall_entry_o4_7_3_r_data0;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_3_backStall;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_3_V;
    wire [63:0] SR_SE_redist0_stall_entry_o4_7_3_D0;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_4_i_valid;
    reg [0:0] SR_SE_redist0_stall_entry_o4_7_4_r_valid;
    reg [63:0] SR_SE_redist0_stall_entry_o4_7_4_r_data0;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_4_backStall;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_4_V;
    wire [63:0] SR_SE_redist0_stall_entry_o4_7_4_D0;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_5_i_valid;
    reg [0:0] SR_SE_redist0_stall_entry_o4_7_5_r_valid;
    reg [63:0] SR_SE_redist0_stall_entry_o4_7_5_r_data0;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_5_backStall;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_5_V;
    wire [63:0] SR_SE_redist0_stall_entry_o4_7_5_D0;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_6_i_valid;
    reg [0:0] SR_SE_redist0_stall_entry_o4_7_6_r_valid;
    reg [63:0] SR_SE_redist0_stall_entry_o4_7_6_r_data0;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_6_backStall;
    wire [0:0] SR_SE_redist0_stall_entry_o4_7_6_V;
    wire [63:0] SR_SE_redist0_stall_entry_o4_7_6_D0;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // bubble_join_stall_entry(BITJOIN,31)
    assign bubble_join_stall_entry_q = in_add82_push35757;

    // bubble_select_stall_entry(BITSELECT,32)
    assign bubble_select_stall_entry_b = bubble_join_stall_entry_q[63:0];

    // redist0_stall_entry_o4_7_0(REG,23)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_stall_entry_o4_7_0_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (SE_redist0_stall_entry_o4_7_0_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_7_0_q <= bubble_select_stall_entry_b;
        end
    end

    // redist0_stall_entry_o4_7_1(REG,24)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_stall_entry_o4_7_1_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (SE_redist0_stall_entry_o4_7_1_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_7_1_q <= redist0_stall_entry_o4_7_0_q;
        end
    end

    // redist0_stall_entry_o4_7_2(REG,25)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_stall_entry_o4_7_2_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (SE_redist0_stall_entry_o4_7_2_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_7_2_q <= SR_SE_redist0_stall_entry_o4_7_2_D0;
        end
    end

    // redist0_stall_entry_o4_7_3(REG,26)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_stall_entry_o4_7_3_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (SE_redist0_stall_entry_o4_7_3_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_7_3_q <= SR_SE_redist0_stall_entry_o4_7_3_D0;
        end
    end

    // redist0_stall_entry_o4_7_4(REG,27)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_stall_entry_o4_7_4_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (SE_redist0_stall_entry_o4_7_4_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_7_4_q <= SR_SE_redist0_stall_entry_o4_7_4_D0;
        end
    end

    // redist0_stall_entry_o4_7_5(REG,28)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_stall_entry_o4_7_5_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (SE_redist0_stall_entry_o4_7_5_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_7_5_q <= SR_SE_redist0_stall_entry_o4_7_5_D0;
        end
    end

    // SE_redist0_stall_entry_o4_7_6(STALLENABLE,47)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_7_6_V0 = SE_redist0_stall_entry_o4_7_6_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_7_6_s_tv_0 = SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_backStall & SE_redist0_stall_entry_o4_7_6_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_7_6_backEN = ~ (SE_redist0_stall_entry_o4_7_6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_7_6_v_s_0 = SE_redist0_stall_entry_o4_7_6_backEN & SR_SE_redist0_stall_entry_o4_7_6_V;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_7_6_backStall = ~ (SE_redist0_stall_entry_o4_7_6_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_stall_entry_o4_7_6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_7_6_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_7_6_R_v_0 <= SE_redist0_stall_entry_o4_7_6_R_v_0 & SE_redist0_stall_entry_o4_7_6_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_7_6_R_v_0 <= SE_redist0_stall_entry_o4_7_6_v_s_0;
            end

        end
    end

    // SR_SE_redist0_stall_entry_o4_7_6(STALLREG,62)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist0_stall_entry_o4_7_6_r_valid <= 1'b0;
            SR_SE_redist0_stall_entry_o4_7_6_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_stall_entry_o4_7_6_r_valid <= SE_redist0_stall_entry_o4_7_6_backStall & (SR_SE_redist0_stall_entry_o4_7_6_r_valid | SR_SE_redist0_stall_entry_o4_7_6_i_valid);

            if (SR_SE_redist0_stall_entry_o4_7_6_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_stall_entry_o4_7_6_r_data0 <= redist0_stall_entry_o4_7_5_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_stall_entry_o4_7_6_i_valid = SE_redist0_stall_entry_o4_7_5_V0;
    // Stall signal propagation
    assign SR_SE_redist0_stall_entry_o4_7_6_backStall = SR_SE_redist0_stall_entry_o4_7_6_r_valid | ~ (SR_SE_redist0_stall_entry_o4_7_6_i_valid);

    // Valid
    assign SR_SE_redist0_stall_entry_o4_7_6_V = SR_SE_redist0_stall_entry_o4_7_6_r_valid == 1'b1 ? SR_SE_redist0_stall_entry_o4_7_6_r_valid : SR_SE_redist0_stall_entry_o4_7_6_i_valid;

    assign SR_SE_redist0_stall_entry_o4_7_6_D0 = SR_SE_redist0_stall_entry_o4_7_6_r_valid == 1'b1 ? SR_SE_redist0_stall_entry_o4_7_6_r_data0 : redist0_stall_entry_o4_7_5_q;

    // SE_redist0_stall_entry_o4_7_5(STALLENABLE,46)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_7_5_V0 = SE_redist0_stall_entry_o4_7_5_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_7_5_s_tv_0 = SR_SE_redist0_stall_entry_o4_7_6_backStall & SE_redist0_stall_entry_o4_7_5_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_7_5_backEN = ~ (SE_redist0_stall_entry_o4_7_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_7_5_v_s_0 = SE_redist0_stall_entry_o4_7_5_backEN & SR_SE_redist0_stall_entry_o4_7_5_V;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_7_5_backStall = ~ (SE_redist0_stall_entry_o4_7_5_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_stall_entry_o4_7_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_7_5_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_7_5_R_v_0 <= SE_redist0_stall_entry_o4_7_5_R_v_0 & SE_redist0_stall_entry_o4_7_5_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_7_5_R_v_0 <= SE_redist0_stall_entry_o4_7_5_v_s_0;
            end

        end
    end

    // SR_SE_redist0_stall_entry_o4_7_5(STALLREG,61)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist0_stall_entry_o4_7_5_r_valid <= 1'b0;
            SR_SE_redist0_stall_entry_o4_7_5_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_stall_entry_o4_7_5_r_valid <= SE_redist0_stall_entry_o4_7_5_backStall & (SR_SE_redist0_stall_entry_o4_7_5_r_valid | SR_SE_redist0_stall_entry_o4_7_5_i_valid);

            if (SR_SE_redist0_stall_entry_o4_7_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_stall_entry_o4_7_5_r_data0 <= redist0_stall_entry_o4_7_4_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_stall_entry_o4_7_5_i_valid = SE_redist0_stall_entry_o4_7_4_V0;
    // Stall signal propagation
    assign SR_SE_redist0_stall_entry_o4_7_5_backStall = SR_SE_redist0_stall_entry_o4_7_5_r_valid | ~ (SR_SE_redist0_stall_entry_o4_7_5_i_valid);

    // Valid
    assign SR_SE_redist0_stall_entry_o4_7_5_V = SR_SE_redist0_stall_entry_o4_7_5_r_valid == 1'b1 ? SR_SE_redist0_stall_entry_o4_7_5_r_valid : SR_SE_redist0_stall_entry_o4_7_5_i_valid;

    assign SR_SE_redist0_stall_entry_o4_7_5_D0 = SR_SE_redist0_stall_entry_o4_7_5_r_valid == 1'b1 ? SR_SE_redist0_stall_entry_o4_7_5_r_data0 : redist0_stall_entry_o4_7_4_q;

    // SE_redist0_stall_entry_o4_7_4(STALLENABLE,45)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_7_4_V0 = SE_redist0_stall_entry_o4_7_4_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_7_4_s_tv_0 = SR_SE_redist0_stall_entry_o4_7_5_backStall & SE_redist0_stall_entry_o4_7_4_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_7_4_backEN = ~ (SE_redist0_stall_entry_o4_7_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_7_4_v_s_0 = SE_redist0_stall_entry_o4_7_4_backEN & SR_SE_redist0_stall_entry_o4_7_4_V;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_7_4_backStall = ~ (SE_redist0_stall_entry_o4_7_4_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_stall_entry_o4_7_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_7_4_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_7_4_R_v_0 <= SE_redist0_stall_entry_o4_7_4_R_v_0 & SE_redist0_stall_entry_o4_7_4_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_7_4_R_v_0 <= SE_redist0_stall_entry_o4_7_4_v_s_0;
            end

        end
    end

    // SR_SE_redist0_stall_entry_o4_7_4(STALLREG,60)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist0_stall_entry_o4_7_4_r_valid <= 1'b0;
            SR_SE_redist0_stall_entry_o4_7_4_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_stall_entry_o4_7_4_r_valid <= SE_redist0_stall_entry_o4_7_4_backStall & (SR_SE_redist0_stall_entry_o4_7_4_r_valid | SR_SE_redist0_stall_entry_o4_7_4_i_valid);

            if (SR_SE_redist0_stall_entry_o4_7_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_stall_entry_o4_7_4_r_data0 <= redist0_stall_entry_o4_7_3_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_stall_entry_o4_7_4_i_valid = SE_redist0_stall_entry_o4_7_3_V0;
    // Stall signal propagation
    assign SR_SE_redist0_stall_entry_o4_7_4_backStall = SR_SE_redist0_stall_entry_o4_7_4_r_valid | ~ (SR_SE_redist0_stall_entry_o4_7_4_i_valid);

    // Valid
    assign SR_SE_redist0_stall_entry_o4_7_4_V = SR_SE_redist0_stall_entry_o4_7_4_r_valid == 1'b1 ? SR_SE_redist0_stall_entry_o4_7_4_r_valid : SR_SE_redist0_stall_entry_o4_7_4_i_valid;

    assign SR_SE_redist0_stall_entry_o4_7_4_D0 = SR_SE_redist0_stall_entry_o4_7_4_r_valid == 1'b1 ? SR_SE_redist0_stall_entry_o4_7_4_r_data0 : redist0_stall_entry_o4_7_3_q;

    // SE_redist0_stall_entry_o4_7_3(STALLENABLE,44)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_7_3_V0 = SE_redist0_stall_entry_o4_7_3_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_7_3_s_tv_0 = SR_SE_redist0_stall_entry_o4_7_4_backStall & SE_redist0_stall_entry_o4_7_3_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_7_3_backEN = ~ (SE_redist0_stall_entry_o4_7_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_7_3_v_s_0 = SE_redist0_stall_entry_o4_7_3_backEN & SR_SE_redist0_stall_entry_o4_7_3_V;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_7_3_backStall = ~ (SE_redist0_stall_entry_o4_7_3_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_stall_entry_o4_7_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_7_3_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_7_3_R_v_0 <= SE_redist0_stall_entry_o4_7_3_R_v_0 & SE_redist0_stall_entry_o4_7_3_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_7_3_R_v_0 <= SE_redist0_stall_entry_o4_7_3_v_s_0;
            end

        end
    end

    // SR_SE_redist0_stall_entry_o4_7_3(STALLREG,59)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist0_stall_entry_o4_7_3_r_valid <= 1'b0;
            SR_SE_redist0_stall_entry_o4_7_3_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_stall_entry_o4_7_3_r_valid <= SE_redist0_stall_entry_o4_7_3_backStall & (SR_SE_redist0_stall_entry_o4_7_3_r_valid | SR_SE_redist0_stall_entry_o4_7_3_i_valid);

            if (SR_SE_redist0_stall_entry_o4_7_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_stall_entry_o4_7_3_r_data0 <= redist0_stall_entry_o4_7_2_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_stall_entry_o4_7_3_i_valid = SE_redist0_stall_entry_o4_7_2_V0;
    // Stall signal propagation
    assign SR_SE_redist0_stall_entry_o4_7_3_backStall = SR_SE_redist0_stall_entry_o4_7_3_r_valid | ~ (SR_SE_redist0_stall_entry_o4_7_3_i_valid);

    // Valid
    assign SR_SE_redist0_stall_entry_o4_7_3_V = SR_SE_redist0_stall_entry_o4_7_3_r_valid == 1'b1 ? SR_SE_redist0_stall_entry_o4_7_3_r_valid : SR_SE_redist0_stall_entry_o4_7_3_i_valid;

    assign SR_SE_redist0_stall_entry_o4_7_3_D0 = SR_SE_redist0_stall_entry_o4_7_3_r_valid == 1'b1 ? SR_SE_redist0_stall_entry_o4_7_3_r_data0 : redist0_stall_entry_o4_7_2_q;

    // SE_redist0_stall_entry_o4_7_2(STALLENABLE,43)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_7_2_V0 = SE_redist0_stall_entry_o4_7_2_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_7_2_s_tv_0 = SR_SE_redist0_stall_entry_o4_7_3_backStall & SE_redist0_stall_entry_o4_7_2_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_7_2_backEN = ~ (SE_redist0_stall_entry_o4_7_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_7_2_v_s_0 = SE_redist0_stall_entry_o4_7_2_backEN & SR_SE_redist0_stall_entry_o4_7_2_V;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_7_2_backStall = ~ (SE_redist0_stall_entry_o4_7_2_backEN);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_stall_entry_o4_7_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_7_2_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_7_2_R_v_0 <= SE_redist0_stall_entry_o4_7_2_R_v_0 & SE_redist0_stall_entry_o4_7_2_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_7_2_R_v_0 <= SE_redist0_stall_entry_o4_7_2_v_s_0;
            end

        end
    end

    // SR_SE_redist0_stall_entry_o4_7_2(STALLREG,58)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SR_SE_redist0_stall_entry_o4_7_2_r_valid <= 1'b0;
            SR_SE_redist0_stall_entry_o4_7_2_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_stall_entry_o4_7_2_r_valid <= SE_redist0_stall_entry_o4_7_2_backStall & (SR_SE_redist0_stall_entry_o4_7_2_r_valid | SR_SE_redist0_stall_entry_o4_7_2_i_valid);

            if (SR_SE_redist0_stall_entry_o4_7_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_stall_entry_o4_7_2_r_data0 <= redist0_stall_entry_o4_7_1_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_stall_entry_o4_7_2_i_valid = SE_redist0_stall_entry_o4_7_1_V0;
    // Stall signal propagation
    assign SR_SE_redist0_stall_entry_o4_7_2_backStall = SR_SE_redist0_stall_entry_o4_7_2_r_valid | ~ (SR_SE_redist0_stall_entry_o4_7_2_i_valid);

    // Valid
    assign SR_SE_redist0_stall_entry_o4_7_2_V = SR_SE_redist0_stall_entry_o4_7_2_r_valid == 1'b1 ? SR_SE_redist0_stall_entry_o4_7_2_r_valid : SR_SE_redist0_stall_entry_o4_7_2_i_valid;

    assign SR_SE_redist0_stall_entry_o4_7_2_D0 = SR_SE_redist0_stall_entry_o4_7_2_r_valid == 1'b1 ? SR_SE_redist0_stall_entry_o4_7_2_r_data0 : redist0_stall_entry_o4_7_1_q;

    // SE_redist0_stall_entry_o4_7_1(STALLENABLE,42)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_7_1_V0 = SE_redist0_stall_entry_o4_7_1_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_7_1_s_tv_0 = SR_SE_redist0_stall_entry_o4_7_2_backStall & SE_redist0_stall_entry_o4_7_1_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_7_1_backEN = ~ (SE_redist0_stall_entry_o4_7_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_7_1_v_s_0 = SE_redist0_stall_entry_o4_7_1_backEN & SE_redist0_stall_entry_o4_7_0_V0;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_7_1_backStall = ~ (SE_redist0_stall_entry_o4_7_1_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_stall_entry_o4_7_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_7_1_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_7_1_R_v_0 <= SE_redist0_stall_entry_o4_7_1_R_v_0 & SE_redist0_stall_entry_o4_7_1_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_7_1_R_v_0 <= SE_redist0_stall_entry_o4_7_1_v_s_0;
            end

        end
    end

    // SE_redist0_stall_entry_o4_7_0(STALLENABLE,41)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_7_0_V0 = SE_redist0_stall_entry_o4_7_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_7_0_s_tv_0 = SE_redist0_stall_entry_o4_7_1_backStall & SE_redist0_stall_entry_o4_7_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_7_0_backEN = ~ (SE_redist0_stall_entry_o4_7_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_7_0_v_s_0 = SE_redist0_stall_entry_o4_7_0_backEN & SE_stall_entry_V1;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_7_0_backStall = ~ (SE_redist0_stall_entry_o4_7_0_v_s_0);
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_redist0_stall_entry_o4_7_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_7_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_7_0_R_v_0 <= SE_redist0_stall_entry_o4_7_0_R_v_0 & SE_redist0_stall_entry_o4_7_0_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_7_0_R_v_0 <= SE_redist0_stall_entry_o4_7_0_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,37)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_redist0_stall_entry_o4_7_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x(STALLENABLE,40)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_and0 = i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_wireValid = SE_redist0_stall_entry_o4_7_6_V0 & SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_and0;

    // i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x(BLACKBOX,21)@0
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_100_0@20000000
    // out out_intel_reserved_ffwd_101_0@20000000
    // out out_intel_reserved_ffwd_99_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_c0_exit936_0@7
    // out out_c0_exit936_1@7
    cnn_i_sfc_s_c0_in_for_inc105_s_c0_enter934_cnn2624 thei_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_unnamed_cnn184_0(GND_q),
        .out_intel_reserved_ffwd_100_0(i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_intel_reserved_ffwd_100_0),
        .out_intel_reserved_ffwd_101_0(i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_intel_reserved_ffwd_101_0),
        .out_intel_reserved_ffwd_99_0(i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_intel_reserved_ffwd_99_0),
        .out_o_stall(i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_o_valid),
        .out_c0_exit936_0(),
        .out_c0_exit936_1(i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_c0_exit936_1),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,8)
    assign out_intel_reserved_ffwd_100_0 = i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_intel_reserved_ffwd_100_0;

    // sync_out(GPOUT,12)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_101_0 = i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_intel_reserved_ffwd_101_0;

    // bubble_join_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x(BITJOIN,35)
    assign bubble_join_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_q = i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_c0_exit936_1;

    // bubble_select_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x(BITSELECT,36)
    assign bubble_select_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_b = bubble_join_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_q[0:0];

    // redist0_stall_entry_o4_7_6(REG,29)
    always @ (posedge clock)
    begin
        if (!rst_sync_rst_sclrn[0])
        begin
            redist0_stall_entry_o4_7_6_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
        end
        else if (SE_redist0_stall_entry_o4_7_6_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_7_6_q <= SR_SE_redist0_stall_entry_o4_7_6_D0;
        end
    end

    // dupName_0_sync_out_x(GPOUT,16)@7
    assign out_add82_push35757 = redist0_stall_entry_o4_7_6_q;
    assign out_c0_exe1937 = bubble_select_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_99_0 = i_sfc_s_c0_in_for_inc105_cnns_c0_enter934_cnn2624_aunroll_x_out_intel_reserved_ffwd_99_0;

    // rst_sync(RESETSYNC,63)
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
