module kernel_system (
		input  wire [34:0]  cc_snoop_data,              //          cc_snoop.data
		input  wire         cc_snoop_valid,             //                  .valid
		output wire         cc_snoop_ready,             //                  .ready
		input  wire         clock_reset_clk,            //       clock_reset.clk
		input  wire         clock_reset2x_clk,          //     clock_reset2x.clk
		input  wire         cc_snoop_clk_clk,           //      cc_snoop_clk.clk
		output wire [32:0]  kernel_ddr4a_address,       //      kernel_ddr4a.address
		output wire [63:0]  kernel_ddr4a_byteenable,    //                  .byteenable
		input  wire         kernel_ddr4a_readdatavalid, //                  .readdatavalid
		output wire         kernel_ddr4a_read,          //                  .read
		input  wire [511:0] kernel_ddr4a_readdata,      //                  .readdata
		output wire         kernel_ddr4a_write,         //                  .write
		output wire [511:0] kernel_ddr4a_writedata,     //                  .writedata
		input  wire         kernel_ddr4a_waitrequest,   //                  .waitrequest
		output wire [4:0]   kernel_ddr4a_burstcount,    //                  .burstcount
		output wire [32:0]  kernel_ddr4b_address,       //      kernel_ddr4b.address
		output wire [63:0]  kernel_ddr4b_byteenable,    //                  .byteenable
		input  wire         kernel_ddr4b_readdatavalid, //                  .readdatavalid
		output wire         kernel_ddr4b_read,          //                  .read
		input  wire [511:0] kernel_ddr4b_readdata,      //                  .readdata
		output wire         kernel_ddr4b_write,         //                  .write
		output wire [511:0] kernel_ddr4b_writedata,     //                  .writedata
		input  wire         kernel_ddr4b_waitrequest,   //                  .waitrequest
		output wire [4:0]   kernel_ddr4b_burstcount,    //                  .burstcount
		output wire [32:0]  kernel_ddr4c_address,       //      kernel_ddr4c.address
		output wire [63:0]  kernel_ddr4c_byteenable,    //                  .byteenable
		input  wire         kernel_ddr4c_readdatavalid, //                  .readdatavalid
		output wire         kernel_ddr4c_read,          //                  .read
		input  wire [511:0] kernel_ddr4c_readdata,      //                  .readdata
		output wire         kernel_ddr4c_write,         //                  .write
		output wire [511:0] kernel_ddr4c_writedata,     //                  .writedata
		input  wire         kernel_ddr4c_waitrequest,   //                  .waitrequest
		output wire [4:0]   kernel_ddr4c_burstcount,    //                  .burstcount
		output wire [32:0]  kernel_ddr4d_address,       //      kernel_ddr4d.address
		output wire [63:0]  kernel_ddr4d_byteenable,    //                  .byteenable
		input  wire         kernel_ddr4d_readdatavalid, //                  .readdatavalid
		output wire         kernel_ddr4d_read,          //                  .read
		input  wire [511:0] kernel_ddr4d_readdata,      //                  .readdata
		output wire         kernel_ddr4d_write,         //                  .write
		output wire [511:0] kernel_ddr4d_writedata,     //                  .writedata
		input  wire         kernel_ddr4d_waitrequest,   //                  .waitrequest
		output wire [4:0]   kernel_ddr4d_burstcount,    //                  .burstcount
		output wire         kernel_cra_waitrequest,     //        kernel_cra.waitrequest
		output wire [63:0]  kernel_cra_readdata,        //                  .readdata
		output wire         kernel_cra_readdatavalid,   //                  .readdatavalid
		input  wire [0:0]   kernel_cra_burstcount,      //                  .burstcount
		input  wire [63:0]  kernel_cra_writedata,       //                  .writedata
		input  wire [29:0]  kernel_cra_address,         //                  .address
		input  wire         kernel_cra_write,           //                  .write
		input  wire         kernel_cra_read,            //                  .read
		input  wire [7:0]   kernel_cra_byteenable,      //                  .byteenable
		input  wire         kernel_cra_debugaccess,     //                  .debugaccess
		output wire         kernel_irq_irq,             //        kernel_irq.irq
		input  wire         clock_reset_reset_reset_n   // clock_reset_reset.reset_n
	);
endmodule

