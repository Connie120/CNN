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

// SystemVerilog created from cnn_bb_B8
// SystemVerilog created on Thu Jun 25 10:37:46 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_bb_B8 (
    input wire [63:0] in_add1788_push36761_0,
    input wire [63:0] in_add3193_push37766_0,
    input wire [63:0] in_add82_push35756_0,
    input wire [63:0] in_col_060_replace_phi104_pop41750_0,
    input wire [31:0] in_dot_prod748751_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_input,
    input wire [0:0] in_intel_reserved_ffwd_92_0,
    input wire [63:0] in_mul8599_pop39749_0,
    input wire [0:0] in_notcmp67110_pop45773_0,
    input wire [0:0] in_notcmp71106_pop42771_0,
    input wire [0:0] in_notcmp75102_pop40769_0,
    input wire [63:0] in_output,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_to_058_replace_phi108_pop43772_0,
    input wire [511:0] in_unnamed_cnn175_avm_readdata,
    input wire [0:0] in_unnamed_cnn175_avm_readdatavalid,
    input wire [0:0] in_unnamed_cnn175_avm_waitrequest,
    input wire [0:0] in_unnamed_cnn175_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [63:0] in_weights,
    output wire [63:0] out_add1788_push36761,
    output wire [63:0] out_add3193_push37766,
    output wire [63:0] out_add82_push35756,
    output wire [0:0] out_lsu_unnamed_cnn175_o_active,
    output wire [0:0] out_notcmp71106_pop42771,
    output wire [0:0] out_notcmp75102_pop40769,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total,
    output wire [31:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw,
    output wire [31:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req,
    output wire [0:0] out_stall_out_0,
    output wire [34:0] out_unnamed_cnn175_avm_address,
    output wire [4:0] out_unnamed_cnn175_avm_burstcount,
    output wire [63:0] out_unnamed_cnn175_avm_byteenable,
    output wire [0:0] out_unnamed_cnn175_avm_enable,
    output wire [0:0] out_unnamed_cnn175_avm_read,
    output wire [0:0] out_unnamed_cnn175_avm_write,
    output wire [511:0] out_unnamed_cnn175_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_cnn_B8_stall_region_out_add1788_push36761;
    wire [63:0] bb_cnn_B8_stall_region_out_add3193_push37766;
    wire [63:0] bb_cnn_B8_stall_region_out_add82_push35756;
    wire [0:0] bb_cnn_B8_stall_region_out_lsu_unnamed_cnn175_o_active;
    wire [0:0] bb_cnn_B8_stall_region_out_notcmp67110_pop45773;
    wire [0:0] bb_cnn_B8_stall_region_out_notcmp71106_pop42771;
    wire [0:0] bb_cnn_B8_stall_region_out_notcmp75102_pop40769;
    wire [0:0] bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total;
    wire [31:0] bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr;
    wire [0:0] bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count;
    wire [0:0] bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall;
    wire [0:0] bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw;
    wire [31:0] bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr;
    wire [0:0] bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid;
    wire [0:0] bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req;
    wire [0:0] bb_cnn_B8_stall_region_out_stall_out;
    wire [34:0] bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_address;
    wire [4:0] bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_burstcount;
    wire [63:0] bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_byteenable;
    wire [0:0] bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_enable;
    wire [0:0] bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_read;
    wire [0:0] bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_write;
    wire [511:0] bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_writedata;
    wire [0:0] bb_cnn_B8_stall_region_out_valid_out;
    wire [63:0] cnn_B8_branch_out_add1788_push36761;
    wire [63:0] cnn_B8_branch_out_add3193_push37766;
    wire [63:0] cnn_B8_branch_out_add82_push35756;
    wire [0:0] cnn_B8_branch_out_notcmp71106_pop42771;
    wire [0:0] cnn_B8_branch_out_notcmp75102_pop40769;
    wire [0:0] cnn_B8_branch_out_stall_out;
    wire [0:0] cnn_B8_branch_out_valid_out_0;
    wire [0:0] cnn_B8_branch_out_valid_out_1;
    wire [63:0] cnn_B8_merge_out_add1788_push36761;
    wire [63:0] cnn_B8_merge_out_add3193_push37766;
    wire [63:0] cnn_B8_merge_out_add82_push35756;
    wire [63:0] cnn_B8_merge_out_col_060_replace_phi104_pop41750;
    wire [31:0] cnn_B8_merge_out_dot_prod748751;
    wire [63:0] cnn_B8_merge_out_mul8599_pop39749;
    wire [0:0] cnn_B8_merge_out_notcmp67110_pop45773;
    wire [0:0] cnn_B8_merge_out_notcmp71106_pop42771;
    wire [0:0] cnn_B8_merge_out_notcmp75102_pop40769;
    wire [0:0] cnn_B8_merge_out_stall_out_0;
    wire [63:0] cnn_B8_merge_out_to_058_replace_phi108_pop43772;
    wire [0:0] cnn_B8_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // cnn_B8_merge(BLACKBOX,4)
    cnn_B8_merge thecnn_B8_merge (
        .in_add1788_push36761_0(in_add1788_push36761_0),
        .in_add3193_push37766_0(in_add3193_push37766_0),
        .in_add82_push35756_0(in_add82_push35756_0),
        .in_col_060_replace_phi104_pop41750_0(in_col_060_replace_phi104_pop41750_0),
        .in_dot_prod748751_0(in_dot_prod748751_0),
        .in_mul8599_pop39749_0(in_mul8599_pop39749_0),
        .in_notcmp67110_pop45773_0(in_notcmp67110_pop45773_0),
        .in_notcmp71106_pop42771_0(in_notcmp71106_pop42771_0),
        .in_notcmp75102_pop40769_0(in_notcmp75102_pop40769_0),
        .in_stall_in(bb_cnn_B8_stall_region_out_stall_out),
        .in_to_058_replace_phi108_pop43772_0(in_to_058_replace_phi108_pop43772_0),
        .in_valid_in_0(in_valid_in_0),
        .out_add1788_push36761(cnn_B8_merge_out_add1788_push36761),
        .out_add3193_push37766(cnn_B8_merge_out_add3193_push37766),
        .out_add82_push35756(cnn_B8_merge_out_add82_push35756),
        .out_col_060_replace_phi104_pop41750(cnn_B8_merge_out_col_060_replace_phi104_pop41750),
        .out_dot_prod748751(cnn_B8_merge_out_dot_prod748751),
        .out_mul8599_pop39749(cnn_B8_merge_out_mul8599_pop39749),
        .out_notcmp67110_pop45773(cnn_B8_merge_out_notcmp67110_pop45773),
        .out_notcmp71106_pop42771(cnn_B8_merge_out_notcmp71106_pop42771),
        .out_notcmp75102_pop40769(cnn_B8_merge_out_notcmp75102_pop40769),
        .out_stall_out_0(cnn_B8_merge_out_stall_out_0),
        .out_to_058_replace_phi108_pop43772(cnn_B8_merge_out_to_058_replace_phi108_pop43772),
        .out_valid_out(cnn_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_B8_stall_region(BLACKBOX,2)
    cnn_bb_B8_stall_region thebb_cnn_B8_stall_region (
        .in_add1788_push36761(cnn_B8_merge_out_add1788_push36761),
        .in_add3193_push37766(cnn_B8_merge_out_add3193_push37766),
        .in_add82_push35756(cnn_B8_merge_out_add82_push35756),
        .in_col_060_replace_phi104_pop41750(cnn_B8_merge_out_col_060_replace_phi104_pop41750),
        .in_dot_prod748751(cnn_B8_merge_out_dot_prod748751),
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_92_0(in_intel_reserved_ffwd_92_0),
        .in_mul8599_pop39749(cnn_B8_merge_out_mul8599_pop39749),
        .in_notcmp67110_pop45773(cnn_B8_merge_out_notcmp67110_pop45773),
        .in_notcmp71106_pop42771(cnn_B8_merge_out_notcmp71106_pop42771),
        .in_notcmp75102_pop40769(cnn_B8_merge_out_notcmp75102_pop40769),
        .in_output(in_output),
        .in_stall_in(cnn_B8_branch_out_stall_out),
        .in_to_058_replace_phi108_pop43772(cnn_B8_merge_out_to_058_replace_phi108_pop43772),
        .in_unnamed_cnn175_avm_readdata(in_unnamed_cnn175_avm_readdata),
        .in_unnamed_cnn175_avm_readdatavalid(in_unnamed_cnn175_avm_readdatavalid),
        .in_unnamed_cnn175_avm_waitrequest(in_unnamed_cnn175_avm_waitrequest),
        .in_unnamed_cnn175_avm_writeack(in_unnamed_cnn175_avm_writeack),
        .in_valid_in(cnn_B8_merge_out_valid_out),
        .out_add1788_push36761(bb_cnn_B8_stall_region_out_add1788_push36761),
        .out_add3193_push37766(bb_cnn_B8_stall_region_out_add3193_push37766),
        .out_add82_push35756(bb_cnn_B8_stall_region_out_add82_push35756),
        .out_lsu_unnamed_cnn175_o_active(bb_cnn_B8_stall_region_out_lsu_unnamed_cnn175_o_active),
        .out_notcmp67110_pop45773(bb_cnn_B8_stall_region_out_notcmp67110_pop45773),
        .out_notcmp71106_pop42771(bb_cnn_B8_stall_region_out_notcmp71106_pop42771),
        .out_notcmp75102_pop40769(bb_cnn_B8_stall_region_out_notcmp75102_pop40769),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total(bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr(bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count(bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall(bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw(bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr(bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid(bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid),
        .out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req(bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req),
        .out_stall_out(bb_cnn_B8_stall_region_out_stall_out),
        .out_unnamed_cnn175_avm_address(bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_address),
        .out_unnamed_cnn175_avm_burstcount(bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_burstcount),
        .out_unnamed_cnn175_avm_byteenable(bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_byteenable),
        .out_unnamed_cnn175_avm_enable(bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_enable),
        .out_unnamed_cnn175_avm_read(bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_read),
        .out_unnamed_cnn175_avm_write(bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_write),
        .out_unnamed_cnn175_avm_writedata(bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_writedata),
        .out_valid_out(bb_cnn_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_B8_branch(BLACKBOX,3)
    cnn_B8_branch thecnn_B8_branch (
        .in_add1788_push36761(bb_cnn_B8_stall_region_out_add1788_push36761),
        .in_add3193_push37766(bb_cnn_B8_stall_region_out_add3193_push37766),
        .in_add82_push35756(bb_cnn_B8_stall_region_out_add82_push35756),
        .in_notcmp67110_pop45773(bb_cnn_B8_stall_region_out_notcmp67110_pop45773),
        .in_notcmp71106_pop42771(bb_cnn_B8_stall_region_out_notcmp71106_pop42771),
        .in_notcmp75102_pop40769(bb_cnn_B8_stall_region_out_notcmp75102_pop40769),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_cnn_B8_stall_region_out_valid_out),
        .out_add1788_push36761(cnn_B8_branch_out_add1788_push36761),
        .out_add3193_push37766(cnn_B8_branch_out_add3193_push37766),
        .out_add82_push35756(cnn_B8_branch_out_add82_push35756),
        .out_notcmp71106_pop42771(cnn_B8_branch_out_notcmp71106_pop42771),
        .out_notcmp75102_pop40769(cnn_B8_branch_out_notcmp75102_pop40769),
        .out_stall_out(cnn_B8_branch_out_stall_out),
        .out_valid_out_0(cnn_B8_branch_out_valid_out_0),
        .out_valid_out_1(cnn_B8_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add1788_push36761(GPOUT,27)
    assign out_add1788_push36761 = cnn_B8_branch_out_add1788_push36761;

    // out_add3193_push37766(GPOUT,28)
    assign out_add3193_push37766 = cnn_B8_branch_out_add3193_push37766;

    // out_add82_push35756(GPOUT,29)
    assign out_add82_push35756 = cnn_B8_branch_out_add82_push35756;

    // out_lsu_unnamed_cnn175_o_active(GPOUT,30)
    assign out_lsu_unnamed_cnn175_o_active = bb_cnn_B8_stall_region_out_lsu_unnamed_cnn175_o_active;

    // out_notcmp71106_pop42771(GPOUT,31)
    assign out_notcmp71106_pop42771 = cnn_B8_branch_out_notcmp71106_pop42771;

    // out_notcmp75102_pop40769(GPOUT,32)
    assign out_notcmp75102_pop40769 = cnn_B8_branch_out_notcmp75102_pop40769;

    // out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total(GPOUT,33)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total = bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total;

    // out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr(GPOUT,34)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr = bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr;

    // out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count(GPOUT,35)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count = bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count;

    // out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall(GPOUT,36)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall = bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall;

    // out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw(GPOUT,37)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw = bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw;

    // out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr(GPOUT,38)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr = bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr;

    // out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid(GPOUT,39)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid = bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid;

    // out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req(GPOUT,40)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req = bb_cnn_B8_stall_region_out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = cnn_B8_merge_out_stall_out_0;

    // out_unnamed_cnn175_avm_address(GPOUT,42)
    assign out_unnamed_cnn175_avm_address = bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_address;

    // out_unnamed_cnn175_avm_burstcount(GPOUT,43)
    assign out_unnamed_cnn175_avm_burstcount = bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_burstcount;

    // out_unnamed_cnn175_avm_byteenable(GPOUT,44)
    assign out_unnamed_cnn175_avm_byteenable = bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_byteenable;

    // out_unnamed_cnn175_avm_enable(GPOUT,45)
    assign out_unnamed_cnn175_avm_enable = bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_enable;

    // out_unnamed_cnn175_avm_read(GPOUT,46)
    assign out_unnamed_cnn175_avm_read = bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_read;

    // out_unnamed_cnn175_avm_write(GPOUT,47)
    assign out_unnamed_cnn175_avm_write = bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_write;

    // out_unnamed_cnn175_avm_writedata(GPOUT,48)
    assign out_unnamed_cnn175_avm_writedata = bb_cnn_B8_stall_region_out_unnamed_cnn175_avm_writedata;

    // out_valid_out_0(GPOUT,49)
    assign out_valid_out_0 = cnn_B8_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,50)
    assign out_valid_out_1 = cnn_B8_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,51)
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
