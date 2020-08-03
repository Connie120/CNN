module kernel_system_cnn_sys (
		input  wire         clock,                                       //                   clock_reset.clk
		input  wire         resetn,                                      //             clock_reset_reset.reset_n
		input  wire         clock2x,                                     //                 clock_reset2x.clk
		output wire         kernel_irq,                                  //                    kernel_irq.irq
		output wire [32:0]  avm_mem_gmem0_DDR_port_0_0_rw_address,       // avm_mem_gmem0_DDR_port_0_0_rw.address
		output wire [63:0]  avm_mem_gmem0_DDR_port_0_0_rw_byteenable,    //                              .byteenable
		input  wire         avm_mem_gmem0_DDR_port_0_0_rw_readdatavalid, //                              .readdatavalid
		output wire         avm_mem_gmem0_DDR_port_0_0_rw_read,          //                              .read
		input  wire [511:0] avm_mem_gmem0_DDR_port_0_0_rw_readdata,      //                              .readdata
		output wire         avm_mem_gmem0_DDR_port_0_0_rw_write,         //                              .write
		output wire [511:0] avm_mem_gmem0_DDR_port_0_0_rw_writedata,     //                              .writedata
		input  wire         avm_mem_gmem0_DDR_port_0_0_rw_waitrequest,   //                              .waitrequest
		output wire [4:0]   avm_mem_gmem0_DDR_port_0_0_rw_burstcount,    //                              .burstcount
		output wire [32:0]  avm_mem_gmem0_DDR_port_1_0_rw_address,       // avm_mem_gmem0_DDR_port_1_0_rw.address
		output wire [63:0]  avm_mem_gmem0_DDR_port_1_0_rw_byteenable,    //                              .byteenable
		input  wire         avm_mem_gmem0_DDR_port_1_0_rw_readdatavalid, //                              .readdatavalid
		output wire         avm_mem_gmem0_DDR_port_1_0_rw_read,          //                              .read
		input  wire [511:0] avm_mem_gmem0_DDR_port_1_0_rw_readdata,      //                              .readdata
		output wire         avm_mem_gmem0_DDR_port_1_0_rw_write,         //                              .write
		output wire [511:0] avm_mem_gmem0_DDR_port_1_0_rw_writedata,     //                              .writedata
		input  wire         avm_mem_gmem0_DDR_port_1_0_rw_waitrequest,   //                              .waitrequest
		output wire [4:0]   avm_mem_gmem0_DDR_port_1_0_rw_burstcount,    //                              .burstcount
		output wire [32:0]  avm_mem_gmem0_DDR_port_2_0_rw_address,       // avm_mem_gmem0_DDR_port_2_0_rw.address
		output wire [63:0]  avm_mem_gmem0_DDR_port_2_0_rw_byteenable,    //                              .byteenable
		input  wire         avm_mem_gmem0_DDR_port_2_0_rw_readdatavalid, //                              .readdatavalid
		output wire         avm_mem_gmem0_DDR_port_2_0_rw_read,          //                              .read
		input  wire [511:0] avm_mem_gmem0_DDR_port_2_0_rw_readdata,      //                              .readdata
		output wire         avm_mem_gmem0_DDR_port_2_0_rw_write,         //                              .write
		output wire [511:0] avm_mem_gmem0_DDR_port_2_0_rw_writedata,     //                              .writedata
		input  wire         avm_mem_gmem0_DDR_port_2_0_rw_waitrequest,   //                              .waitrequest
		output wire [4:0]   avm_mem_gmem0_DDR_port_2_0_rw_burstcount,    //                              .burstcount
		output wire [32:0]  avm_mem_gmem0_DDR_port_3_0_rw_address,       // avm_mem_gmem0_DDR_port_3_0_rw.address
		output wire [63:0]  avm_mem_gmem0_DDR_port_3_0_rw_byteenable,    //                              .byteenable
		input  wire         avm_mem_gmem0_DDR_port_3_0_rw_readdatavalid, //                              .readdatavalid
		output wire         avm_mem_gmem0_DDR_port_3_0_rw_read,          //                              .read
		input  wire [511:0] avm_mem_gmem0_DDR_port_3_0_rw_readdata,      //                              .readdata
		output wire         avm_mem_gmem0_DDR_port_3_0_rw_write,         //                              .write
		output wire [511:0] avm_mem_gmem0_DDR_port_3_0_rw_writedata,     //                              .writedata
		input  wire         avm_mem_gmem0_DDR_port_3_0_rw_waitrequest,   //                              .waitrequest
		output wire [4:0]   avm_mem_gmem0_DDR_port_3_0_rw_burstcount,    //                              .burstcount
		input  wire         cra_ring_root_avs_read,                      //             cra_ring_root_avs.read
		input  wire         cra_ring_root_avs_write,                     //                              .write
		input  wire [5:0]   cra_ring_root_avs_address,                   //                              .address
		input  wire [63:0]  cra_ring_root_avs_writedata,                 //                              .writedata
		input  wire [7:0]   cra_ring_root_avs_byteenable,                //                              .byteenable
		output wire [63:0]  cra_ring_root_avs_readdata,                  //                              .readdata
		output wire         cra_ring_root_avs_waitrequest,               //                              .waitrequest
		output wire         cra_ring_root_avs_readdatavalid              //                              .readdatavalid
	);
endmodule

