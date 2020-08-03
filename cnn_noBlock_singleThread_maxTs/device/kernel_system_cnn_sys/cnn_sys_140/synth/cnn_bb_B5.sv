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

// SystemVerilog created from cnn_bb_B5
// SystemVerilog created on Thu Jun 25 10:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B5 (
    input wire [63:0] in_add1786_0,
    input wire [63:0] in_add1786_1,
    input wire [63:0] in_add3191_0,
    input wire [63:0] in_add3191_1,
    input wire [63:0] in_add80_0,
    input wire [63:0] in_add80_1,
    input wire [63:0] in_input,
    input wire [63:0] in_intel_reserved_ffwd_15_0,
    input wire [64:0] in_intel_reserved_ffwd_17_0,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [63:0] in_mul8597_0,
    input wire [63:0] in_mul8597_1,
    input wire [0:0] in_notcmp75100_0,
    input wire [0:0] in_notcmp75100_1,
    input wire [63:0] in_output,
    input wire [63:0] in_row_063_replace_phi94_0,
    input wire [63:0] in_row_063_replace_phi94_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [63:0] in_weights,
    output wire [63:0] out_c0_exe1825,
    output wire [0:0] out_c0_exe3827,
    output wire [63:0] out_c0_exe4828,
    output wire [63:0] out_c0_exe5829,
    output wire [63:0] out_c0_exe6830,
    output wire [63:0] out_c0_exe7831,
    output wire [63:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_cnn_B5_stall_region_out_c0_exe1825;
    wire [0:0] bb_cnn_B5_stall_region_out_c0_exe3827;
    wire [63:0] bb_cnn_B5_stall_region_out_c0_exe4828;
    wire [63:0] bb_cnn_B5_stall_region_out_c0_exe5829;
    wire [63:0] bb_cnn_B5_stall_region_out_c0_exe6830;
    wire [63:0] bb_cnn_B5_stall_region_out_c0_exe7831;
    wire [63:0] bb_cnn_B5_stall_region_out_c0_exe8;
    wire [0:0] bb_cnn_B5_stall_region_out_c0_exe9;
    wire [0:0] bb_cnn_B5_stall_region_out_stall_out;
    wire [0:0] bb_cnn_B5_stall_region_out_valid_out;
    wire [63:0] cnn_B5_branch_out_c0_exe1825;
    wire [0:0] cnn_B5_branch_out_c0_exe3827;
    wire [63:0] cnn_B5_branch_out_c0_exe4828;
    wire [63:0] cnn_B5_branch_out_c0_exe5829;
    wire [63:0] cnn_B5_branch_out_c0_exe6830;
    wire [63:0] cnn_B5_branch_out_c0_exe7831;
    wire [63:0] cnn_B5_branch_out_c0_exe8;
    wire [0:0] cnn_B5_branch_out_c0_exe9;
    wire [0:0] cnn_B5_branch_out_stall_out;
    wire [0:0] cnn_B5_branch_out_valid_out_0;
    wire [63:0] cnn_B5_merge_out_add1786;
    wire [63:0] cnn_B5_merge_out_add3191;
    wire [63:0] cnn_B5_merge_out_add80;
    wire [63:0] cnn_B5_merge_out_mul8597;
    wire [0:0] cnn_B5_merge_out_notcmp75100;
    wire [63:0] cnn_B5_merge_out_row_063_replace_phi94;
    wire [0:0] cnn_B5_merge_out_stall_out_0;
    wire [0:0] cnn_B5_merge_out_stall_out_1;
    wire [0:0] cnn_B5_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // cnn_B5_merge(BLACKBOX,4)
    cnn_B5_merge thecnn_B5_merge (
        .in_add1786_0(in_add1786_0),
        .in_add1786_1(in_add1786_1),
        .in_add3191_0(in_add3191_0),
        .in_add3191_1(in_add3191_1),
        .in_add80_0(in_add80_0),
        .in_add80_1(in_add80_1),
        .in_mul8597_0(in_mul8597_0),
        .in_mul8597_1(in_mul8597_1),
        .in_notcmp75100_0(in_notcmp75100_0),
        .in_notcmp75100_1(in_notcmp75100_1),
        .in_row_063_replace_phi94_0(in_row_063_replace_phi94_0),
        .in_row_063_replace_phi94_1(in_row_063_replace_phi94_1),
        .in_stall_in(bb_cnn_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add1786(cnn_B5_merge_out_add1786),
        .out_add3191(cnn_B5_merge_out_add3191),
        .out_add80(cnn_B5_merge_out_add80),
        .out_mul8597(cnn_B5_merge_out_mul8597),
        .out_notcmp75100(cnn_B5_merge_out_notcmp75100),
        .out_row_063_replace_phi94(cnn_B5_merge_out_row_063_replace_phi94),
        .out_stall_out_0(cnn_B5_merge_out_stall_out_0),
        .out_stall_out_1(cnn_B5_merge_out_stall_out_1),
        .out_valid_out(cnn_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_B5_stall_region(BLACKBOX,2)
    cnn_bb_B5_stall_region thebb_cnn_B5_stall_region (
        .in_add1786(cnn_B5_merge_out_add1786),
        .in_add3191(cnn_B5_merge_out_add3191),
        .in_add80(cnn_B5_merge_out_add80),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_mul8597(cnn_B5_merge_out_mul8597),
        .in_notcmp75100(cnn_B5_merge_out_notcmp75100),
        .in_row_063_replace_phi94(cnn_B5_merge_out_row_063_replace_phi94),
        .in_stall_in(cnn_B5_branch_out_stall_out),
        .in_valid_in(cnn_B5_merge_out_valid_out),
        .out_c0_exe1825(bb_cnn_B5_stall_region_out_c0_exe1825),
        .out_c0_exe3827(bb_cnn_B5_stall_region_out_c0_exe3827),
        .out_c0_exe4828(bb_cnn_B5_stall_region_out_c0_exe4828),
        .out_c0_exe5829(bb_cnn_B5_stall_region_out_c0_exe5829),
        .out_c0_exe6830(bb_cnn_B5_stall_region_out_c0_exe6830),
        .out_c0_exe7831(bb_cnn_B5_stall_region_out_c0_exe7831),
        .out_c0_exe8(bb_cnn_B5_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_cnn_B5_stall_region_out_c0_exe9),
        .out_stall_out(bb_cnn_B5_stall_region_out_stall_out),
        .out_valid_out(bb_cnn_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_B5_branch(BLACKBOX,3)
    cnn_B5_branch thecnn_B5_branch (
        .in_c0_exe1825(bb_cnn_B5_stall_region_out_c0_exe1825),
        .in_c0_exe3827(bb_cnn_B5_stall_region_out_c0_exe3827),
        .in_c0_exe4828(bb_cnn_B5_stall_region_out_c0_exe4828),
        .in_c0_exe5829(bb_cnn_B5_stall_region_out_c0_exe5829),
        .in_c0_exe6830(bb_cnn_B5_stall_region_out_c0_exe6830),
        .in_c0_exe7831(bb_cnn_B5_stall_region_out_c0_exe7831),
        .in_c0_exe8(bb_cnn_B5_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_cnn_B5_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_cnn_B5_stall_region_out_valid_out),
        .out_c0_exe1825(cnn_B5_branch_out_c0_exe1825),
        .out_c0_exe3827(cnn_B5_branch_out_c0_exe3827),
        .out_c0_exe4828(cnn_B5_branch_out_c0_exe4828),
        .out_c0_exe5829(cnn_B5_branch_out_c0_exe5829),
        .out_c0_exe6830(cnn_B5_branch_out_c0_exe6830),
        .out_c0_exe7831(cnn_B5_branch_out_c0_exe7831),
        .out_c0_exe8(cnn_B5_branch_out_c0_exe8),
        .out_c0_exe9(cnn_B5_branch_out_c0_exe9),
        .out_stall_out(cnn_B5_branch_out_stall_out),
        .out_valid_out_0(cnn_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1825(GPOUT,26)
    assign out_c0_exe1825 = cnn_B5_branch_out_c0_exe1825;

    // out_c0_exe3827(GPOUT,27)
    assign out_c0_exe3827 = cnn_B5_branch_out_c0_exe3827;

    // out_c0_exe4828(GPOUT,28)
    assign out_c0_exe4828 = cnn_B5_branch_out_c0_exe4828;

    // out_c0_exe5829(GPOUT,29)
    assign out_c0_exe5829 = cnn_B5_branch_out_c0_exe5829;

    // out_c0_exe6830(GPOUT,30)
    assign out_c0_exe6830 = cnn_B5_branch_out_c0_exe6830;

    // out_c0_exe7831(GPOUT,31)
    assign out_c0_exe7831 = cnn_B5_branch_out_c0_exe7831;

    // out_c0_exe8(GPOUT,32)
    assign out_c0_exe8 = cnn_B5_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,33)
    assign out_c0_exe9 = cnn_B5_branch_out_c0_exe9;

    // out_stall_out_0(GPOUT,34)
    assign out_stall_out_0 = cnn_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,35)
    assign out_stall_out_1 = cnn_B5_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,36)
    assign out_valid_out_0 = cnn_B5_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,37)
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
