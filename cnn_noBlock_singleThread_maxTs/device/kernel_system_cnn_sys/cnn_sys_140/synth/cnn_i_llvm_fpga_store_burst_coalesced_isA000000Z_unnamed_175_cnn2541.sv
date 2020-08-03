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

// SystemVerilog created from cnn_i_llvm_fpga_store_burst_coalesced_isA000000Z_unnamed_175_cnn2541
// SystemVerilog created on Thu Jun 25 10:37:46 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_i_llvm_fpga_store_burst_coalesced_isA000000Z_unnamed_175_cnn2541 (
    input wire [0:0] in_flush,
    output wire [0:0] out_lsu_unnamed_cnn175_o_active,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [511:0] in_unnamed_cnn175_avm_readdata,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total,
    input wire [63:0] in_i_address,
    input wire [0:0] in_i_predicate,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_i_writedata,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_unnamed_cnn175_avm_readdatavalid,
    output wire [31:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr,
    input wire [0:0] in_unnamed_cnn175_avm_waitrequest,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count,
    input wire [0:0] in_unnamed_cnn175_avm_writeack,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw,
    output wire [31:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid,
    output wire [0:0] out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req,
    output wire [34:0] out_unnamed_cnn175_avm_address,
    output wire [4:0] out_unnamed_cnn175_avm_burstcount,
    output wire [63:0] out_unnamed_cnn175_avm_byteenable,
    output wire [0:0] out_unnamed_cnn175_avm_enable,
    output wire [0:0] out_unnamed_cnn175_avm_read,
    output wire [0:0] out_unnamed_cnn175_avm_write,
    output wire [511:0] out_unnamed_cnn175_avm_writedata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [34:0] addr_trunc_in;
    wire [34:0] addr_trunc_q;
    wire [31:0] agg_adapt_to_ufixed_cast_b;
    wire [31:0] c_i32_0gr_q;
    wire [34:0] c_i35_0gr_q;
    wire [2:0] c_i3_0gr_q;
    wire [3:0] c_i4_1gr_q;
    wire [511:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_readdata;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_readdatavalid;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_readdatavalid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_waitrequest;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_waitrequest_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_writeack;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_writeack_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_clock2x;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_clock2x_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_flush;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_flush_bitsignaltemp;
    wire [34:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_address;
    wire [2:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_atomic_op;
    wire [34:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_bitwiseor;
    wire [3:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_byteenable;
    wire [31:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_cmpdata;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_predicate;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_stall;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_valid;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_valid_bitsignaltemp;
    wire [31:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_writedata;
    wire [34:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_stream_base_addr;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_stream_reset;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_stream_reset_bitsignaltemp;
    wire [31:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_stream_size;
    wire [34:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_address;
    wire [4:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_burstcount;
    wire [63:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_byteenable;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_enable;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_read;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_read_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_write;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_write_bitsignaltemp;
    wire [511:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_writedata;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_active;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_active_bitsignaltemp;
    wire [4:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_input_fifo_depth;
    wire [31:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_readdata;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_stall;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_valid;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_writeack;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_writeack_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_burstcount_total;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_burstcount_total_bitsignaltemp;
    wire [31:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_burstcount_total_incr;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_readwrite_count;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_readwrite_count_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_stall;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_bw;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_bw_bitsignaltemp;
    wire [31:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_bw_incr;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_total_ivalid;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_total_ivalid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_total_req;
    wire i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_total_req_bitsignaltemp;
    reg [0:0] rst_sync_rst_sclrn;


    // agg_adapt_to_ufixed_cast(BITSELECT,3)
    assign agg_adapt_to_ufixed_cast_b = in_i_writedata[31:0];

    // c_i32_0gr(CONSTANT,5)
    assign c_i32_0gr_q = 32'b00000000000000000000000000000000;

    // c_i4_1gr(CONSTANT,8)
    assign c_i4_1gr_q = 4'b1111;

    // c_i35_0gr(CONSTANT,6)
    assign c_i35_0gr_q = 35'b00000000000000000000000000000000000;

    // c_i3_0gr(CONSTANT,7)
    assign c_i3_0gr_q = 3'b000;

    // addr_trunc(ROUND,2)
    assign addr_trunc_in = in_i_address[34:0];
    assign addr_trunc_q = addr_trunc_in[34:0];

    // GND(CONSTANT,0)
    assign GND_q = 1'b0;

    // i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542(EXTIFACE,9)
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_readdata = in_unnamed_cnn175_avm_readdata;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_readdatavalid = in_unnamed_cnn175_avm_readdatavalid;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_waitrequest = in_unnamed_cnn175_avm_waitrequest;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_writeack = in_unnamed_cnn175_avm_writeack;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_clock2x = GND_q;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_flush = in_flush;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_address = addr_trunc_q;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_atomic_op = c_i3_0gr_q;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_bitwiseor = c_i35_0gr_q;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_byteenable = c_i4_1gr_q;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_cmpdata = c_i32_0gr_q;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_predicate = in_i_predicate;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_stall = in_i_stall;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_valid = in_i_valid;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_writedata = agg_adapt_to_ufixed_cast_b;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_stream_base_addr = c_i35_0gr_q;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_stream_reset = GND_q;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_stream_size = c_i32_0gr_q;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_readdatavalid_bitsignaltemp = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_readdatavalid[0];
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_waitrequest_bitsignaltemp = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_waitrequest[0];
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_writeack_bitsignaltemp = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_writeack[0];
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_clock2x_bitsignaltemp = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_clock2x[0];
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_flush_bitsignaltemp = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_flush[0];
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_predicate_bitsignaltemp = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_predicate[0];
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_stall_bitsignaltemp = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_stall[0];
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_valid_bitsignaltemp = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_valid[0];
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_stream_reset_bitsignaltemp = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_stream_reset[0];
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_enable[0] = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_enable_bitsignaltemp;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_read[0] = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_read_bitsignaltemp;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_write[0] = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_write_bitsignaltemp;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_active[0] = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_active_bitsignaltemp;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_stall[0] = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_stall_bitsignaltemp;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_valid[0] = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_valid_bitsignaltemp;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_writeack[0] = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_writeack_bitsignaltemp;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_burstcount_total[0] = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_burstcount_total_bitsignaltemp;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_readwrite_count[0] = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_readwrite_count_bitsignaltemp;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_stall[0] = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_stall_bitsignaltemp;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_bw[0] = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_bw_bitsignaltemp;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_total_ivalid[0] = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_total_ivalid_bitsignaltemp;
    assign i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_total_req[0] = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_total_req_bitsignaltemp;
    lsu_top #(
        .ABITS_PER_LMEM_BANK(0),
        .ACL_PROFILE(1),
        .ACL_PROFILE_INCREMENT_WIDTH(32),
        .ADDRSPACE(1),
        .ALIGNMENT_BYTES(4),
        .ASYNC_RESET(0),
        .ATOMIC(0),
        .ATOMIC_WIDTH(3),
        .AVM_READ_DATA_LATENESS(0),
        .AVM_WRITE_DATA_LATENESS(0),
        .AWIDTH(35),
        .BURSTCOUNT_WIDTH(5),
        .ENABLE_BANKED_MEMORY(0),
        .FORCE_NOP_SUPPORT(0),
        .HIGH_FMAX(1),
        .INPUTFIFO_USEDW_MAXBITS(5),
        .KERNEL_SIDE_MEM_LATENCY(2),
        .LMEM_ADDR_PERMUTATION_STYLE(0),
        .MEMORY_SIDE_MEM_LATENCY(256),
        .MWIDTH_BYTES(64),
        .NUMBER_BANKS(1),
        .PROFILE_ADDR_TOGGLE(0),
        .READ(0),
        .STALLFREE(0),
        .STYLE("BURST-COALESCED"),
        .SYNCHRONIZE_RESET(0),
        .USECACHING(0),
        .USEINPUTFIFO(0),
        .USEOUTPUTFIFO(1),
        .USE_BYTE_EN(0),
        .USE_STALL_LATENCY(0),
        .USE_WRITE_ACK(0),
        .WIDE_DATA_SLICING(0),
        .WIDTH_BYTES(4),
        .WRITEDATAWIDTH_BYTES(64)
    ) thei_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542 (
        .avm_readdata(in_unnamed_cnn175_avm_readdata),
        .avm_readdatavalid(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_readdatavalid_bitsignaltemp),
        .avm_waitrequest(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_waitrequest_bitsignaltemp),
        .avm_writeack(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_writeack_bitsignaltemp),
        .clock2x(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_clock2x_bitsignaltemp),
        .flush(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_flush_bitsignaltemp),
        .i_address(addr_trunc_q),
        .i_atomic_op(c_i3_0gr_q),
        .i_bitwiseor(c_i35_0gr_q),
        .i_byteenable(c_i4_1gr_q),
        .i_cmpdata(c_i32_0gr_q),
        .i_predicate(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_predicate_bitsignaltemp),
        .i_stall(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_i_valid_bitsignaltemp),
        .i_writedata(agg_adapt_to_ufixed_cast_b),
        .stream_base_addr(c_i35_0gr_q),
        .stream_reset(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_stream_reset_bitsignaltemp),
        .stream_size(c_i32_0gr_q),
        .avm_address(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_address),
        .avm_burstcount(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_burstcount),
        .avm_byteenable(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_byteenable),
        .avm_enable(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_enable_bitsignaltemp),
        .avm_read(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_read_bitsignaltemp),
        .avm_write(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_write_bitsignaltemp),
        .avm_writedata(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_writedata),
        .o_active(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_active_bitsignaltemp),
        .o_input_fifo_depth(),
        .o_readdata(),
        .o_stall(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_valid_bitsignaltemp),
        .o_writeack(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_writeack_bitsignaltemp),
        .profile_avm_burstcount_total(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_burstcount_total_bitsignaltemp),
        .profile_avm_burstcount_total_incr(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_burstcount_total_incr),
        .profile_avm_readwrite_count(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_readwrite_count_bitsignaltemp),
        .profile_avm_stall(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_stall_bitsignaltemp),
        .profile_bw(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_bw_bitsignaltemp),
        .profile_bw_incr(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_bw_incr),
        .profile_total_ivalid(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_total_ivalid_bitsignaltemp),
        .profile_total_req(i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_total_req_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // regfree_osync(GPOUT,11)
    assign out_lsu_unnamed_cnn175_o_active = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_active;

    // sync_out(GPOUT,13)@20000000
    assign out_o_stall = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_stall;

    // dupName_0_regfree_osync_x(GPOUT,17)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_burstcount_total;

    // dupName_0_sync_out_x(GPOUT,19)@13
    assign out_o_valid = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_o_valid;

    // dupName_1_regfree_osync_x(GPOUT,21)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_burstcount_total_incr = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_burstcount_total_incr;

    // dupName_2_regfree_osync_x(GPOUT,23)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_readwrite_count = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_readwrite_count;

    // dupName_3_regfree_osync_x(GPOUT,25)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_avm_stall = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_avm_stall;

    // dupName_4_regfree_osync_x(GPOUT,26)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_bw;

    // dupName_5_regfree_osync_x(GPOUT,27)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_bw_incr = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_bw_incr;

    // dupName_6_regfree_osync_x(GPOUT,28)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_ivalid = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_total_ivalid;

    // dupName_7_regfree_osync_x(GPOUT,29)
    assign out_profile_i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2540_profile_total_req = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_profile_total_req;

    // dupName_8_regfree_osync_x(GPOUT,30)
    assign out_unnamed_cnn175_avm_address = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_address;

    // dupName_9_regfree_osync_x(GPOUT,31)
    assign out_unnamed_cnn175_avm_burstcount = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_burstcount;

    // dupName_10_regfree_osync_x(GPOUT,32)
    assign out_unnamed_cnn175_avm_byteenable = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_byteenable;

    // dupName_11_regfree_osync_x(GPOUT,33)
    assign out_unnamed_cnn175_avm_enable = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_enable;

    // dupName_12_regfree_osync_x(GPOUT,34)
    assign out_unnamed_cnn175_avm_read = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_read;

    // dupName_13_regfree_osync_x(GPOUT,35)
    assign out_unnamed_cnn175_avm_write = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_write;

    // dupName_14_regfree_osync_x(GPOUT,36)
    assign out_unnamed_cnn175_avm_writedata = i_llvm_fpga_store_burst_coalesced_isvoid_f32_p1f32_i4_unnamed_cnn175_cnn2542_avm_writedata;

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
