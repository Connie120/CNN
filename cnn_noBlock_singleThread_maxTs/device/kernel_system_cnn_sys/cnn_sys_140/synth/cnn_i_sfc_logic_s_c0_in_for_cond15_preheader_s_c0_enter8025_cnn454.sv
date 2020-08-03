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

// SystemVerilog created from cnn_i_sfc_logic_s_c0_in_for_cond15_preheader_s_c0_enter8025_cnn454
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_sfc_logic_s_c0_in_for_cond15_preheader_s_c0_enter8025_cnn454 (
    input wire [64:0] in_intel_reserved_ffwd_10_0,
    output wire [0:0] out_exiting_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_12_0,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_buffer_in,
    input wire [0:0] in_c0_eni4_0,
    input wire [0:0] in_c0_eni4_1,
    input wire [63:0] in_c0_eni4_2,
    input wire [63:0] in_c0_eni4_3,
    input wire [63:0] in_c0_eni4_4,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exi7_0,
    output wire [63:0] out_c0_exi7_1,
    output wire [63:0] out_c0_exi7_2,
    output wire [0:0] out_c0_exi7_3,
    output wire [0:0] out_c0_exi7_4,
    output wire [63:0] out_c0_exi7_5,
    output wire [63:0] out_c0_exi7_6,
    output wire [63:0] out_c0_exi7_7,
    output wire [0:0] out_cnn_B4_exited,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_1gr_q;
    wire [63:0] c_i64_undef_q;
    wire [64:0] c_i65_1gr_q;
    wire [64:0] c_i65_undef_q;
    wire [0:0] i_cnn_b4_exited_cnn462_q;
    wire [0:0] i_cnn_b4_exiting_cnn466_qi;
    reg [0:0] i_cnn_b4_exiting_cnn466_q;
    wire [0:0] i_fpgaindvars_iv1700_replace_phi_cnn475_s;
    reg [64:0] i_fpgaindvars_iv1700_replace_phi_cnn475_q;
    wire [65:0] i_fpgaindvars_iv_next1701_cnn494_a;
    wire [65:0] i_fpgaindvars_iv_next1701_cnn494_b;
    logic [65:0] i_fpgaindvars_iv_next1701_cnn494_o;
    wire [65:0] i_fpgaindvars_iv_next1701_cnn494_q;
    wire [64:0] i_inc95_cnn498_a;
    wire [64:0] i_inc95_cnn498_b;
    logic [64:0] i_inc95_cnn498_o;
    wire [64:0] i_inc95_cnn498_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp126240_cnn486_out_dest_data_out_12_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_roo_06837_cnn476_out_dest_data_out_8_0;
    wire [64:0] i_llvm_fpga_ffwd_dest_i65_unnamed_cnn103_cnn470_out_dest_data_out_10_0;
    wire [0:0] i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_cnn463_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_cnn463_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_cnn463_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going76_cnn463_out_pipeline_valid_out;
    wire [7:0] i_llvm_fpga_push_i1_notexitcond77_cnn491_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond77_cnn491_out_feedback_valid_out_8;
    wire [3:0] i_mul85_cnn482_vt_const_3_q;
    wire [63:0] i_mul85_cnn482_vt_join_q;
    wire [59:0] i_mul85_cnn482_vt_select_63_b;
    wire [0:0] i_notcmp75_cnn490_q;
    wire [0:0] i_row_063_replace_phi_cnn481_s;
    reg [63:0] i_row_063_replace_phi_cnn481_q;
    wire [0:0] i_unnamed_cnn489_q;
    wire [64:0] bgTrunc_i_fpgaindvars_iv_next1701_cnn494_sel_x_b;
    wire [63:0] bgTrunc_i_inc95_cnn498_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn461_i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn460_mux_x_s;
    reg [0:0] i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn461_i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn460_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_add1785_pop12_cnn508_i_llvm_fpga_pop_i64_add1785_pop12_cnn507_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_add1785_pop12_cnn508_i_llvm_fpga_pop_i64_add1785_pop12_cnn507_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_add3190_pop13_cnn513_i_llvm_fpga_pop_i64_add3190_pop13_cnn512_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_add3190_pop13_cnn513_i_llvm_fpga_pop_i64_add3190_pop13_cnn512_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_add79_pop11_cnn503_i_llvm_fpga_pop_i64_add79_pop11_cnn502_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_add79_pop11_cnn503_i_llvm_fpga_pop_i64_add79_pop11_cnn502_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i64_row_063_pop10_cnn480_i_llvm_fpga_pop_i64_row_063_pop10_cnn479_mux_x_s;
    reg [63:0] i_llvm_fpga_pop_i64_row_063_pop10_cnn480_i_llvm_fpga_pop_i64_row_063_pop10_cnn479_mux_x_q;
    wire [0:0] i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn474_i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn473_mux_x_s;
    reg [64:0] i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn474_i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn473_mux_x_q;
    wire [6:0] i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_c_i7_0gr_x_q;
    wire [7:0] i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_element_extension_x_q;
    wire [0:0] i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_valid;
    wire i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_stall;
    wire i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_stall_bitsignaltemp;
    wire [7:0] i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_data;
    wire [7:0] i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_o_data;
    wire [0:0] i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q;
    wire [0:0] i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_adapt_scalar_trunc_sel_x_b;
    wire [0:0] i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_valid;
    wire i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_stall;
    wire i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_valid;
    wire i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_stall;
    wire i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_valid;
    wire i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_stall;
    wire i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_o_data;
    wire [0:0] i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_valid;
    wire i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_stall;
    wire i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_stall_bitsignaltemp;
    wire [63:0] i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_data;
    wire [63:0] i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_o_data;
    wire [62:0] i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_c_i63_0gr_x_q;
    wire [127:0] i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_element_extension_x_q;
    wire [0:0] i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_valid;
    wire i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_stall;
    wire i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_stall_bitsignaltemp;
    wire [127:0] i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_data;
    wire [127:0] i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_o_data;
    wire [64:0] i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_adapt_scalar_trunc_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg7_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg9_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg10_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg11_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg12_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg13_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg14_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg16_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg17_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg19_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg20_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg22_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg23_q;
    wire [0:0] i_exitcond1702_cnn484_cmp_nsign_q;
    wire [59:0] leftShiftStage0Idx1Rng4_uid130_i_mul85_cnn483_shift_x_in;
    wire [59:0] leftShiftStage0Idx1Rng4_uid130_i_mul85_cnn483_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid131_i_mul85_cnn483_shift_x_q;
    wire [0:0] leftShiftStage0_uid133_i_mul85_cnn483_shift_x_s;
    reg [63:0] leftShiftStage0_uid133_i_mul85_cnn483_shift_x_q;
    reg [63:0] redist0_sync_in_aunroll_x_in_c0_eni4_2_4_q;
    reg [63:0] redist0_sync_in_aunroll_x_in_c0_eni4_2_4_delay_0;
    reg [63:0] redist0_sync_in_aunroll_x_in_c0_eni4_2_4_delay_1;
    reg [63:0] redist1_sync_in_aunroll_x_in_c0_eni4_3_4_q;
    reg [63:0] redist1_sync_in_aunroll_x_in_c0_eni4_3_4_delay_0;
    reg [63:0] redist1_sync_in_aunroll_x_in_c0_eni4_3_4_delay_1;
    reg [63:0] redist2_sync_in_aunroll_x_in_c0_eni4_4_4_q;
    reg [63:0] redist2_sync_in_aunroll_x_in_c0_eni4_4_4_delay_0;
    reg [63:0] redist2_sync_in_aunroll_x_in_c0_eni4_4_4_delay_1;
    reg [0:0] redist3_sync_in_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist3_sync_in_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist4_sync_in_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist5_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_2_q;
    reg [0:0] redist5_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_2_delay_0;
    reg [0:0] redist6_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_3_q;
    reg [0:0] redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_q;
    reg [0:0] redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_delay_0;
    reg [0:0] redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_delay_1;
    reg [0:0] redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_delay_2;
    reg [63:0] redist0_sync_in_aunroll_x_in_c0_eni4_2_4_inputreg0_q;
    reg [63:0] redist1_sync_in_aunroll_x_in_c0_eni4_3_4_inputreg0_q;
    reg [63:0] redist2_sync_in_aunroll_x_in_c0_eni4_4_4_inputreg0_q;


    // redist3_sync_in_aunroll_x_in_i_valid_2(DELAY,137)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_in_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_i_valid_2_delay_0 <= in_i_valid;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_in_aunroll_x_in_i_valid_2_q <= redist3_sync_in_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist4_sync_in_aunroll_x_in_i_valid_3(DELAY,138)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist4_sync_in_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist4_sync_in_aunroll_x_in_i_valid_3_q <= redist3_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // valid_fanout_reg2(REG,96)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= redist4_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // valid_fanout_reg10(REG,104)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg10_q <= redist4_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // valid_fanout_reg5(REG,99)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= redist4_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i65_unnamed_cnn103_cnn470(BLACKBOX,20)@4
    cnn_i_llvm_fpga_ffwd_dest_i65_unnamed_103_cnn471 thei_llvm_fpga_ffwd_dest_i65_unnamed_cnn103_cnn470 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i65_unnamed_cnn103_cnn470_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i65_undef(CONSTANT,11)
    assign c_i65_undef_q = 65'b00000000000000000000000000000000000000000000000000000000000000000;

    // i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_c_i63_0gr_x(CONSTANT,83)
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_c_i63_0gr_x_q = 63'b000000000000000000000000000000000000000000000000000000000000000;

    // c_i65_1gr(CONSTANT,10)
    assign c_i65_1gr_q = 65'b11111111111111111111111111111111111111111111111111111111111111111;

    // i_fpgaindvars_iv_next1701_cnn494(ADD,16)@4
    assign i_fpgaindvars_iv_next1701_cnn494_a = {1'b0, i_fpgaindvars_iv1700_replace_phi_cnn475_q};
    assign i_fpgaindvars_iv_next1701_cnn494_b = {1'b0, c_i65_1gr_q};
    assign i_fpgaindvars_iv_next1701_cnn494_o = $unsigned(i_fpgaindvars_iv_next1701_cnn494_a) + $unsigned(i_fpgaindvars_iv_next1701_cnn494_b);
    assign i_fpgaindvars_iv_next1701_cnn494_q = i_fpgaindvars_iv_next1701_cnn494_o[65:0];

    // bgTrunc_i_fpgaindvars_iv_next1701_cnn494_sel_x(BITSELECT,35)@4
    assign bgTrunc_i_fpgaindvars_iv_next1701_cnn494_sel_x_b = i_fpgaindvars_iv_next1701_cnn494_q[64:0];

    // i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_element_extension_x(BITJOIN,84)@4
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_element_extension_x_q = {i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_c_i63_0gr_x_q, bgTrunc_i_fpgaindvars_iv_next1701_cnn494_sel_x_b};

    // i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x(LOGICAL,68)@1
    assign i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg12(REG,106)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg12_q <= in_i_valid;
        end
    end

    // redist5_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_2(DELAY,139)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_2_delay_0 <= i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q;
            redist5_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_2_q <= redist5_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg11(REG,105)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg11_q <= redist3_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x(FIFODELAY,85)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_stall = ~ (valid_fanout_reg12_q & i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q);
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_valid = valid_fanout_reg11_q & redist5_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_data = i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_element_extension_x_q;
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_valid[0];
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(128),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x (
        .i_valid(i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_element_extension_x_q),
        .o_data(i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_adapt_scalar_trunc_sel_x(BITSELECT,87)@4
    assign i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_adapt_scalar_trunc_sel_x_b = i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn497_x_o_data[64:0];

    // i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn474_i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn473_mux_x(MUX,63)@4
    assign i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn474_i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn473_mux_x_s = redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn474_i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn473_mux_x_s or i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_adapt_scalar_trunc_sel_x_b or c_i65_undef_q)
    begin
        unique case (i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn474_i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn473_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn474_i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn473_mux_x_q = i_llvm_fpga_push_i65_fpgaindvars_iv1700_push9_cnn496_adapt_scalar_trunc_sel_x_b;
            1'b1 : i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn474_i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn473_mux_x_q = c_i65_undef_q;
            default : i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn474_i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn473_mux_x_q = 65'b0;
        endcase
    end

    // i_llvm_fpga_forked_cnn_b4_forked_cnn457(BLACKBOX,21)@0
    // in in_stall_in@20000000
    cnn_i_llvm_fpga_forked_b4_forked_cnn458 thei_llvm_fpga_forked_cnn_b4_forked_cnn457 (
        .in_buffer_in(in_buffer_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_buffer_out(i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4(DELAY,141)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_delay_0 <= i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out;
            redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_delay_1 <= redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_delay_0;
            redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_delay_2 <= redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_delay_1;
            redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_q <= redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_delay_2;
        end
    end

    // i_fpgaindvars_iv1700_replace_phi_cnn475(MUX,15)@4
    assign i_fpgaindvars_iv1700_replace_phi_cnn475_s = redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_q;
    always @(i_fpgaindvars_iv1700_replace_phi_cnn475_s or i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn474_i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn473_mux_x_q or i_llvm_fpga_ffwd_dest_i65_unnamed_cnn103_cnn470_out_dest_data_out_10_0)
    begin
        unique case (i_fpgaindvars_iv1700_replace_phi_cnn475_s)
            1'b0 : i_fpgaindvars_iv1700_replace_phi_cnn475_q = i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn474_i_llvm_fpga_pop_i65_fpgaindvars_iv1700_pop9_cnn473_mux_x_q;
            1'b1 : i_fpgaindvars_iv1700_replace_phi_cnn475_q = i_llvm_fpga_ffwd_dest_i65_unnamed_cnn103_cnn470_out_dest_data_out_10_0;
            default : i_fpgaindvars_iv1700_replace_phi_cnn475_q = 65'b0;
        endcase
    end

    // i_exitcond1702_cnn484_cmp_nsign(LOGICAL,122)@4
    assign i_exitcond1702_cnn484_cmp_nsign_q = ~ (i_fpgaindvars_iv1700_replace_phi_cnn475_q[64:64]);

    // valid_fanout_reg9(REG,103)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg9_q <= redist4_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp126240_cnn486(BLACKBOX,18)@4
    cnn_i_llvm_fpga_ffwd_dest_i1_cmp126240_487 thei_llvm_fpga_ffwd_dest_i1_cmp126240_cnn486 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_i1_cmp126240_cnn486_out_dest_data_out_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_cnn489(LOGICAL,29)@4
    assign i_unnamed_cnn489_q = i_llvm_fpga_ffwd_dest_i1_cmp126240_cnn486_out_dest_data_out_12_0 & i_exitcond1702_cnn484_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond77_cnn491(BLACKBOX,23)@4
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    cnn_i_llvm_fpga_push_i1_notexitcond77_492 thei_llvm_fpga_push_i1_notexitcond77_cnn491 (
        .in_data_in(i_unnamed_cnn489_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going76_cnn463_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_notexitcond77_cnn491_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_notexitcond77_cnn491_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = 1'b1;

    // i_llvm_fpga_pipeline_keep_going76_cnn463(BLACKBOX,22)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_i_llvm_fpga_pipeline_keep_going76_464 thei_llvm_fpga_pipeline_keep_going76_cnn463 (
        .in_data_in(VCC_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond77_cnn491_out_feedback_out_8),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond77_cnn491_out_feedback_valid_out_8),
        .in_pipeline_stall_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going76_cnn463_out_data_out),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going76_cnn463_out_exiting_valid_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going76_cnn463_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going76_cnn463_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,32)
    assign out_exiting_valid_out = i_llvm_fpga_pipeline_keep_going76_cnn463_out_exiting_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,39)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going76_cnn463_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,94)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= redist4_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_c_i7_0gr_x(CONSTANT,65)
    assign i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_c_i7_0gr_x_q = 7'b0000000;

    // i_cnn_b4_exiting_cnn466(LOGICAL,13)@4 + 1
    assign i_cnn_b4_exiting_cnn466_qi = i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn461_i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn460_mux_x_q & i_llvm_fpga_pipeline_keep_going76_cnn463_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("NONE"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cnn_b4_exiting_cnn466_delay ( .xin(i_cnn_b4_exiting_cnn466_qi), .xout(i_cnn_b4_exiting_cnn466_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_element_extension_x(BITJOIN,66)@5
    assign i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_element_extension_x_q = {i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_c_i7_0gr_x_q, i_cnn_b4_exiting_cnn466_q};

    // valid_fanout_reg4(REG,98)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= in_i_valid;
        end
    end

    // redist6_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_3(DELAY,140)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_3_q <= redist5_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_2_q;
        end
    end

    // valid_fanout_reg3(REG,97)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= redist4_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x(FIFODELAY,67)@1
    // in i_valid@4
    // in i_write_pred@4
    // in i_data@5
    // out o_data@4
    assign i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_stall = ~ (valid_fanout_reg4_q & i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q);
    assign i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_valid = valid_fanout_reg3_q & redist6_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_3_q;
    assign i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_data = i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_element_extension_x_q;
    assign i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_valid[0];
    assign i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(8),
        .STYLE("zl"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x (
        .i_valid(i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_element_extension_x_q),
        .o_data(i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_adapt_scalar_trunc_sel_x(BITSELECT,69)@4
    assign i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_adapt_scalar_trunc_sel_x_b = i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn469_x_o_data[0:0];

    // i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn461_i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn460_mux_x(MUX,58)@4
    assign i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn461_i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn460_mux_x_s = redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn461_i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn460_mux_x_s or i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_adapt_scalar_trunc_sel_x_b or VCC_q)
    begin
        unique case (i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn461_i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn460_mux_x_s)
            1'b0 : i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn461_i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn460_mux_x_q = i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_adapt_scalar_trunc_sel_x_b;
            1'b1 : i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn461_i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn460_mux_x_q = VCC_q;
            default : i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn461_i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn460_mux_x_q = 1'b0;
        endcase
    end

    // i_cnn_b4_exited_cnn462(LOGICAL,12)@4
    assign i_cnn_b4_exited_cnn462_q = i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn461_i_llvm_fpga_pop_coalesce_i1_cnn_b4_not_exited_cnn460_mux_x_q ^ VCC_q;

    // redist2_sync_in_aunroll_x_in_c0_eni4_4_4_inputreg0(DELAY,144)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_in_aunroll_x_in_c0_eni4_4_4_inputreg0_q <= in_c0_eni4_4;
        end
    end

    // redist2_sync_in_aunroll_x_in_c0_eni4_4_4(DELAY,136)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_in_aunroll_x_in_c0_eni4_4_4_delay_0 <= redist2_sync_in_aunroll_x_in_c0_eni4_4_4_inputreg0_q;
            redist2_sync_in_aunroll_x_in_c0_eni4_4_4_delay_1 <= redist2_sync_in_aunroll_x_in_c0_eni4_4_4_delay_0;
            redist2_sync_in_aunroll_x_in_c0_eni4_4_4_q <= redist2_sync_in_aunroll_x_in_c0_eni4_4_4_delay_1;
        end
    end

    // valid_fanout_reg23(REG,117)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg23_q <= in_i_valid;
        end
    end

    // valid_fanout_reg22(REG,116)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg22_q <= redist3_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x(FIFODELAY,73)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_stall = ~ (valid_fanout_reg23_q & i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_valid = valid_fanout_reg22_q & redist5_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_data = i_llvm_fpga_pop_i64_add3190_pop13_cnn513_i_llvm_fpga_pop_i64_add3190_pop13_cnn512_mux_x_q;
    assign i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_valid[0];
    assign i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x (
        .i_valid(i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_add3190_pop13_cnn513_i_llvm_fpga_pop_i64_add3190_pop13_cnn512_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_add3190_pop13_cnn513_i_llvm_fpga_pop_i64_add3190_pop13_cnn512_mux_x(MUX,60)@4
    assign i_llvm_fpga_pop_i64_add3190_pop13_cnn513_i_llvm_fpga_pop_i64_add3190_pop13_cnn512_mux_x_s = redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_add3190_pop13_cnn513_i_llvm_fpga_pop_i64_add3190_pop13_cnn512_mux_x_s or i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_o_data or redist2_sync_in_aunroll_x_in_c0_eni4_4_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_add3190_pop13_cnn513_i_llvm_fpga_pop_i64_add3190_pop13_cnn512_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_add3190_pop13_cnn513_i_llvm_fpga_pop_i64_add3190_pop13_cnn512_mux_x_q = i_llvm_fpga_push_i64_add3190_push13_cnn515_i_llvm_fpga_push_i64_add3190_push13_cnn516_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_add3190_pop13_cnn513_i_llvm_fpga_pop_i64_add3190_pop13_cnn512_mux_x_q = redist2_sync_in_aunroll_x_in_c0_eni4_4_4_q;
            default : i_llvm_fpga_pop_i64_add3190_pop13_cnn513_i_llvm_fpga_pop_i64_add3190_pop13_cnn512_mux_x_q = 64'b0;
        endcase
    end

    // redist1_sync_in_aunroll_x_in_c0_eni4_3_4_inputreg0(DELAY,143)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_in_aunroll_x_in_c0_eni4_3_4_inputreg0_q <= in_c0_eni4_3;
        end
    end

    // redist1_sync_in_aunroll_x_in_c0_eni4_3_4(DELAY,135)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_in_aunroll_x_in_c0_eni4_3_4_delay_0 <= redist1_sync_in_aunroll_x_in_c0_eni4_3_4_inputreg0_q;
            redist1_sync_in_aunroll_x_in_c0_eni4_3_4_delay_1 <= redist1_sync_in_aunroll_x_in_c0_eni4_3_4_delay_0;
            redist1_sync_in_aunroll_x_in_c0_eni4_3_4_q <= redist1_sync_in_aunroll_x_in_c0_eni4_3_4_delay_1;
        end
    end

    // valid_fanout_reg20(REG,114)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg20_q <= in_i_valid;
        end
    end

    // valid_fanout_reg19(REG,113)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg19_q <= redist3_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x(FIFODELAY,70)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_stall = ~ (valid_fanout_reg20_q & i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_valid = valid_fanout_reg19_q & redist5_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_data = i_llvm_fpga_pop_i64_add1785_pop12_cnn508_i_llvm_fpga_pop_i64_add1785_pop12_cnn507_mux_x_q;
    assign i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_valid[0];
    assign i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x (
        .i_valid(i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_add1785_pop12_cnn508_i_llvm_fpga_pop_i64_add1785_pop12_cnn507_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_add1785_pop12_cnn508_i_llvm_fpga_pop_i64_add1785_pop12_cnn507_mux_x(MUX,59)@4
    assign i_llvm_fpga_pop_i64_add1785_pop12_cnn508_i_llvm_fpga_pop_i64_add1785_pop12_cnn507_mux_x_s = redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_add1785_pop12_cnn508_i_llvm_fpga_pop_i64_add1785_pop12_cnn507_mux_x_s or i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_o_data or redist1_sync_in_aunroll_x_in_c0_eni4_3_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_add1785_pop12_cnn508_i_llvm_fpga_pop_i64_add1785_pop12_cnn507_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_add1785_pop12_cnn508_i_llvm_fpga_pop_i64_add1785_pop12_cnn507_mux_x_q = i_llvm_fpga_push_i64_add1785_push12_cnn510_i_llvm_fpga_push_i64_add1785_push12_cnn511_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_add1785_pop12_cnn508_i_llvm_fpga_pop_i64_add1785_pop12_cnn507_mux_x_q = redist1_sync_in_aunroll_x_in_c0_eni4_3_4_q;
            default : i_llvm_fpga_pop_i64_add1785_pop12_cnn508_i_llvm_fpga_pop_i64_add1785_pop12_cnn507_mux_x_q = 64'b0;
        endcase
    end

    // redist0_sync_in_aunroll_x_in_c0_eni4_2_4_inputreg0(DELAY,142)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_in_aunroll_x_in_c0_eni4_2_4_inputreg0_q <= in_c0_eni4_2;
        end
    end

    // redist0_sync_in_aunroll_x_in_c0_eni4_2_4(DELAY,134)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_in_aunroll_x_in_c0_eni4_2_4_delay_0 <= redist0_sync_in_aunroll_x_in_c0_eni4_2_4_inputreg0_q;
            redist0_sync_in_aunroll_x_in_c0_eni4_2_4_delay_1 <= redist0_sync_in_aunroll_x_in_c0_eni4_2_4_delay_0;
            redist0_sync_in_aunroll_x_in_c0_eni4_2_4_q <= redist0_sync_in_aunroll_x_in_c0_eni4_2_4_delay_1;
        end
    end

    // valid_fanout_reg17(REG,111)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg17_q <= in_i_valid;
        end
    end

    // valid_fanout_reg16(REG,110)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg16_q <= redist3_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x(FIFODELAY,76)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_stall = ~ (valid_fanout_reg17_q & i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_valid = valid_fanout_reg16_q & redist5_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_data = i_llvm_fpga_pop_i64_add79_pop11_cnn503_i_llvm_fpga_pop_i64_add79_pop11_cnn502_mux_x_q;
    assign i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_valid[0];
    assign i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x (
        .i_valid(i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_i_stall_bitsignaltemp),
        .i_data(i_llvm_fpga_pop_i64_add79_pop11_cnn503_i_llvm_fpga_pop_i64_add79_pop11_cnn502_mux_x_q),
        .o_data(i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_add79_pop11_cnn503_i_llvm_fpga_pop_i64_add79_pop11_cnn502_mux_x(MUX,61)@4
    assign i_llvm_fpga_pop_i64_add79_pop11_cnn503_i_llvm_fpga_pop_i64_add79_pop11_cnn502_mux_x_s = redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_add79_pop11_cnn503_i_llvm_fpga_pop_i64_add79_pop11_cnn502_mux_x_s or i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_o_data or redist0_sync_in_aunroll_x_in_c0_eni4_2_4_q)
    begin
        unique case (i_llvm_fpga_pop_i64_add79_pop11_cnn503_i_llvm_fpga_pop_i64_add79_pop11_cnn502_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_add79_pop11_cnn503_i_llvm_fpga_pop_i64_add79_pop11_cnn502_mux_x_q = i_llvm_fpga_push_i64_add79_push11_cnn505_i_llvm_fpga_push_i64_add79_push11_cnn506_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_add79_pop11_cnn503_i_llvm_fpga_pop_i64_add79_pop11_cnn502_mux_x_q = redist0_sync_in_aunroll_x_in_c0_eni4_2_4_q;
            default : i_llvm_fpga_pop_i64_add79_pop11_cnn503_i_llvm_fpga_pop_i64_add79_pop11_cnn502_mux_x_q = 64'b0;
        endcase
    end

    // i_notcmp75_cnn490(LOGICAL,27)@4
    assign i_notcmp75_cnn490_q = i_unnamed_cnn489_q ^ VCC_q;

    // leftShiftStage0Idx1Rng4_uid130_i_mul85_cnn483_shift_x(BITSELECT,129)@4
    assign leftShiftStage0Idx1Rng4_uid130_i_mul85_cnn483_shift_x_in = i_row_063_replace_phi_cnn481_q[59:0];
    assign leftShiftStage0Idx1Rng4_uid130_i_mul85_cnn483_shift_x_b = leftShiftStage0Idx1Rng4_uid130_i_mul85_cnn483_shift_x_in[59:0];

    // leftShiftStage0Idx1_uid131_i_mul85_cnn483_shift_x(BITJOIN,130)@4
    assign leftShiftStage0Idx1_uid131_i_mul85_cnn483_shift_x_q = {leftShiftStage0Idx1Rng4_uid130_i_mul85_cnn483_shift_x_b, i_mul85_cnn482_vt_const_3_q};

    // leftShiftStage0_uid133_i_mul85_cnn483_shift_x(MUX,132)@4
    assign leftShiftStage0_uid133_i_mul85_cnn483_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid133_i_mul85_cnn483_shift_x_s or i_row_063_replace_phi_cnn481_q or leftShiftStage0Idx1_uid131_i_mul85_cnn483_shift_x_q)
    begin
        unique case (leftShiftStage0_uid133_i_mul85_cnn483_shift_x_s)
            1'b0 : leftShiftStage0_uid133_i_mul85_cnn483_shift_x_q = i_row_063_replace_phi_cnn481_q;
            1'b1 : leftShiftStage0_uid133_i_mul85_cnn483_shift_x_q = leftShiftStage0Idx1_uid131_i_mul85_cnn483_shift_x_q;
            default : leftShiftStage0_uid133_i_mul85_cnn483_shift_x_q = 64'b0;
        endcase
    end

    // i_mul85_cnn482_vt_select_63(BITSELECT,26)@4
    assign i_mul85_cnn482_vt_select_63_b = leftShiftStage0_uid133_i_mul85_cnn483_shift_x_q[63:4];

    // i_mul85_cnn482_vt_const_3(CONSTANT,24)
    assign i_mul85_cnn482_vt_const_3_q = 4'b0000;

    // i_mul85_cnn482_vt_join(BITJOIN,25)@4
    assign i_mul85_cnn482_vt_join_q = {i_mul85_cnn482_vt_select_63_b, i_mul85_cnn482_vt_const_3_q};

    // valid_fanout_reg7(REG,101)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg7_q <= redist4_sync_in_aunroll_x_in_i_valid_3_q;
        end
    end

    // i_llvm_fpga_ffwd_dest_i64_roo_06837_cnn476(BLACKBOX,19)@4
    cnn_i_llvm_fpga_ffwd_dest_i64_roo_06837_477 thei_llvm_fpga_ffwd_dest_i64_roo_06837_cnn476 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i64_roo_06837_cnn476_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_undef(CONSTANT,8)
    assign c_i64_undef_q = 64'b0000000000000000000000000000000000000000000000000000000000000000;

    // c_i64_1gr(CONSTANT,6)
    assign c_i64_1gr_q = 64'b0000000000000000000000000000000000000000000000000000000000000001;

    // i_inc95_cnn498(ADD,17)@4
    assign i_inc95_cnn498_a = {1'b0, i_row_063_replace_phi_cnn481_q};
    assign i_inc95_cnn498_b = {1'b0, c_i64_1gr_q};
    assign i_inc95_cnn498_o = $unsigned(i_inc95_cnn498_a) + $unsigned(i_inc95_cnn498_b);
    assign i_inc95_cnn498_q = i_inc95_cnn498_o[64:0];

    // bgTrunc_i_inc95_cnn498_sel_x(BITSELECT,36)@4
    assign bgTrunc_i_inc95_cnn498_sel_x_b = i_inc95_cnn498_q[63:0];

    // valid_fanout_reg14(REG,108)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg14_q <= in_i_valid;
        end
    end

    // valid_fanout_reg13(REG,107)@2 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg13_q <= redist3_sync_in_aunroll_x_in_i_valid_2_q;
        end
    end

    // i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x(FIFODELAY,79)@1 + 1
    // in i_valid@3
    // in i_write_pred@3
    // in i_data@4
    // out o_data@4
    assign i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_stall = ~ (valid_fanout_reg14_q & i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q);
    assign i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_valid = valid_fanout_reg13_q & redist5_i_llvm_fpga_push_i1_cnn_b4_exited4_cnn468_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_data = bgTrunc_i_inc95_cnn498_sel_x_b;
    assign i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_valid[0];
    assign i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(64),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x (
        .i_valid(i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc95_cnn498_sel_x_b),
        .o_data(i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i64_row_063_pop10_cnn480_i_llvm_fpga_pop_i64_row_063_pop10_cnn479_mux_x(MUX,62)@4
    assign i_llvm_fpga_pop_i64_row_063_pop10_cnn480_i_llvm_fpga_pop_i64_row_063_pop10_cnn479_mux_x_s = redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_q;
    always @(i_llvm_fpga_pop_i64_row_063_pop10_cnn480_i_llvm_fpga_pop_i64_row_063_pop10_cnn479_mux_x_s or i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_o_data or c_i64_undef_q)
    begin
        unique case (i_llvm_fpga_pop_i64_row_063_pop10_cnn480_i_llvm_fpga_pop_i64_row_063_pop10_cnn479_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i64_row_063_pop10_cnn480_i_llvm_fpga_pop_i64_row_063_pop10_cnn479_mux_x_q = i_llvm_fpga_push_i64_row_063_push10_cnn500_i_llvm_fpga_push_i64_row_063_push10_cnn501_x_o_data;
            1'b1 : i_llvm_fpga_pop_i64_row_063_pop10_cnn480_i_llvm_fpga_pop_i64_row_063_pop10_cnn479_mux_x_q = c_i64_undef_q;
            default : i_llvm_fpga_pop_i64_row_063_pop10_cnn480_i_llvm_fpga_pop_i64_row_063_pop10_cnn479_mux_x_q = 64'b0;
        endcase
    end

    // i_row_063_replace_phi_cnn481(MUX,28)@4
    assign i_row_063_replace_phi_cnn481_s = redist7_i_llvm_fpga_forked_cnn_b4_forked_cnn457_out_buffer_out_4_q;
    always @(i_row_063_replace_phi_cnn481_s or i_llvm_fpga_pop_i64_row_063_pop10_cnn480_i_llvm_fpga_pop_i64_row_063_pop10_cnn479_mux_x_q or i_llvm_fpga_ffwd_dest_i64_roo_06837_cnn476_out_dest_data_out_8_0)
    begin
        unique case (i_row_063_replace_phi_cnn481_s)
            1'b0 : i_row_063_replace_phi_cnn481_q = i_llvm_fpga_pop_i64_row_063_pop10_cnn480_i_llvm_fpga_pop_i64_row_063_pop10_cnn479_mux_x_q;
            1'b1 : i_row_063_replace_phi_cnn481_q = i_llvm_fpga_ffwd_dest_i64_roo_06837_cnn476_out_dest_data_out_8_0;
            default : i_row_063_replace_phi_cnn481_q = 64'b0;
        endcase
    end

    // sync_out_aunroll_x(GPOUT,93)@4
    assign out_c0_exi7_0 = GND_q;
    assign out_c0_exi7_1 = i_row_063_replace_phi_cnn481_q;
    assign out_c0_exi7_2 = i_mul85_cnn482_vt_join_q;
    assign out_c0_exi7_3 = i_unnamed_cnn489_q;
    assign out_c0_exi7_4 = i_notcmp75_cnn490_q;
    assign out_c0_exi7_5 = i_llvm_fpga_pop_i64_add79_pop11_cnn503_i_llvm_fpga_pop_i64_add79_pop11_cnn502_mux_x_q;
    assign out_c0_exi7_6 = i_llvm_fpga_pop_i64_add1785_pop12_cnn508_i_llvm_fpga_pop_i64_add1785_pop12_cnn507_mux_x_q;
    assign out_c0_exi7_7 = i_llvm_fpga_pop_i64_add3190_pop13_cnn513_i_llvm_fpga_pop_i64_add3190_pop13_cnn512_mux_x_q;
    assign out_cnn_B4_exited = i_cnn_b4_exited_cnn462_q;
    assign out_o_valid = valid_fanout_reg0_q;

endmodule
