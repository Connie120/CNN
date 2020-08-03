	component kernel_system_cnn_sys is
		port (
			clock                                       : in  std_logic                      := 'X';             -- clk
			resetn                                      : in  std_logic                      := 'X';             -- reset_n
			clock2x                                     : in  std_logic                      := 'X';             -- clk
			kernel_irq                                  : out std_logic;                                         -- irq
			avm_mem_gmem0_DDR_port_0_0_rw_address       : out std_logic_vector(32 downto 0);                     -- address
			avm_mem_gmem0_DDR_port_0_0_rw_byteenable    : out std_logic_vector(63 downto 0);                     -- byteenable
			avm_mem_gmem0_DDR_port_0_0_rw_readdatavalid : in  std_logic                      := 'X';             -- readdatavalid
			avm_mem_gmem0_DDR_port_0_0_rw_read          : out std_logic;                                         -- read
			avm_mem_gmem0_DDR_port_0_0_rw_readdata      : in  std_logic_vector(511 downto 0) := (others => 'X'); -- readdata
			avm_mem_gmem0_DDR_port_0_0_rw_write         : out std_logic;                                         -- write
			avm_mem_gmem0_DDR_port_0_0_rw_writedata     : out std_logic_vector(511 downto 0);                    -- writedata
			avm_mem_gmem0_DDR_port_0_0_rw_waitrequest   : in  std_logic                      := 'X';             -- waitrequest
			avm_mem_gmem0_DDR_port_0_0_rw_burstcount    : out std_logic_vector(4 downto 0);                      -- burstcount
			avm_mem_gmem0_DDR_port_1_0_rw_address       : out std_logic_vector(32 downto 0);                     -- address
			avm_mem_gmem0_DDR_port_1_0_rw_byteenable    : out std_logic_vector(63 downto 0);                     -- byteenable
			avm_mem_gmem0_DDR_port_1_0_rw_readdatavalid : in  std_logic                      := 'X';             -- readdatavalid
			avm_mem_gmem0_DDR_port_1_0_rw_read          : out std_logic;                                         -- read
			avm_mem_gmem0_DDR_port_1_0_rw_readdata      : in  std_logic_vector(511 downto 0) := (others => 'X'); -- readdata
			avm_mem_gmem0_DDR_port_1_0_rw_write         : out std_logic;                                         -- write
			avm_mem_gmem0_DDR_port_1_0_rw_writedata     : out std_logic_vector(511 downto 0);                    -- writedata
			avm_mem_gmem0_DDR_port_1_0_rw_waitrequest   : in  std_logic                      := 'X';             -- waitrequest
			avm_mem_gmem0_DDR_port_1_0_rw_burstcount    : out std_logic_vector(4 downto 0);                      -- burstcount
			avm_mem_gmem0_DDR_port_2_0_rw_address       : out std_logic_vector(32 downto 0);                     -- address
			avm_mem_gmem0_DDR_port_2_0_rw_byteenable    : out std_logic_vector(63 downto 0);                     -- byteenable
			avm_mem_gmem0_DDR_port_2_0_rw_readdatavalid : in  std_logic                      := 'X';             -- readdatavalid
			avm_mem_gmem0_DDR_port_2_0_rw_read          : out std_logic;                                         -- read
			avm_mem_gmem0_DDR_port_2_0_rw_readdata      : in  std_logic_vector(511 downto 0) := (others => 'X'); -- readdata
			avm_mem_gmem0_DDR_port_2_0_rw_write         : out std_logic;                                         -- write
			avm_mem_gmem0_DDR_port_2_0_rw_writedata     : out std_logic_vector(511 downto 0);                    -- writedata
			avm_mem_gmem0_DDR_port_2_0_rw_waitrequest   : in  std_logic                      := 'X';             -- waitrequest
			avm_mem_gmem0_DDR_port_2_0_rw_burstcount    : out std_logic_vector(4 downto 0);                      -- burstcount
			avm_mem_gmem0_DDR_port_3_0_rw_address       : out std_logic_vector(32 downto 0);                     -- address
			avm_mem_gmem0_DDR_port_3_0_rw_byteenable    : out std_logic_vector(63 downto 0);                     -- byteenable
			avm_mem_gmem0_DDR_port_3_0_rw_readdatavalid : in  std_logic                      := 'X';             -- readdatavalid
			avm_mem_gmem0_DDR_port_3_0_rw_read          : out std_logic;                                         -- read
			avm_mem_gmem0_DDR_port_3_0_rw_readdata      : in  std_logic_vector(511 downto 0) := (others => 'X'); -- readdata
			avm_mem_gmem0_DDR_port_3_0_rw_write         : out std_logic;                                         -- write
			avm_mem_gmem0_DDR_port_3_0_rw_writedata     : out std_logic_vector(511 downto 0);                    -- writedata
			avm_mem_gmem0_DDR_port_3_0_rw_waitrequest   : in  std_logic                      := 'X';             -- waitrequest
			avm_mem_gmem0_DDR_port_3_0_rw_burstcount    : out std_logic_vector(4 downto 0);                      -- burstcount
			cra_ring_root_avs_read                      : in  std_logic                      := 'X';             -- read
			cra_ring_root_avs_write                     : in  std_logic                      := 'X';             -- write
			cra_ring_root_avs_address                   : in  std_logic_vector(5 downto 0)   := (others => 'X'); -- address
			cra_ring_root_avs_writedata                 : in  std_logic_vector(63 downto 0)  := (others => 'X'); -- writedata
			cra_ring_root_avs_byteenable                : in  std_logic_vector(7 downto 0)   := (others => 'X'); -- byteenable
			cra_ring_root_avs_readdata                  : out std_logic_vector(63 downto 0);                     -- readdata
			cra_ring_root_avs_waitrequest               : out std_logic;                                         -- waitrequest
			cra_ring_root_avs_readdatavalid             : out std_logic                                          -- readdatavalid
		);
	end component kernel_system_cnn_sys;

	u0 : component kernel_system_cnn_sys
		port map (
			clock                                       => CONNECTED_TO_clock,                                       --                   clock_reset.clk
			resetn                                      => CONNECTED_TO_resetn,                                      --             clock_reset_reset.reset_n
			clock2x                                     => CONNECTED_TO_clock2x,                                     --                 clock_reset2x.clk
			kernel_irq                                  => CONNECTED_TO_kernel_irq,                                  --                    kernel_irq.irq
			avm_mem_gmem0_DDR_port_0_0_rw_address       => CONNECTED_TO_avm_mem_gmem0_DDR_port_0_0_rw_address,       -- avm_mem_gmem0_DDR_port_0_0_rw.address
			avm_mem_gmem0_DDR_port_0_0_rw_byteenable    => CONNECTED_TO_avm_mem_gmem0_DDR_port_0_0_rw_byteenable,    --                              .byteenable
			avm_mem_gmem0_DDR_port_0_0_rw_readdatavalid => CONNECTED_TO_avm_mem_gmem0_DDR_port_0_0_rw_readdatavalid, --                              .readdatavalid
			avm_mem_gmem0_DDR_port_0_0_rw_read          => CONNECTED_TO_avm_mem_gmem0_DDR_port_0_0_rw_read,          --                              .read
			avm_mem_gmem0_DDR_port_0_0_rw_readdata      => CONNECTED_TO_avm_mem_gmem0_DDR_port_0_0_rw_readdata,      --                              .readdata
			avm_mem_gmem0_DDR_port_0_0_rw_write         => CONNECTED_TO_avm_mem_gmem0_DDR_port_0_0_rw_write,         --                              .write
			avm_mem_gmem0_DDR_port_0_0_rw_writedata     => CONNECTED_TO_avm_mem_gmem0_DDR_port_0_0_rw_writedata,     --                              .writedata
			avm_mem_gmem0_DDR_port_0_0_rw_waitrequest   => CONNECTED_TO_avm_mem_gmem0_DDR_port_0_0_rw_waitrequest,   --                              .waitrequest
			avm_mem_gmem0_DDR_port_0_0_rw_burstcount    => CONNECTED_TO_avm_mem_gmem0_DDR_port_0_0_rw_burstcount,    --                              .burstcount
			avm_mem_gmem0_DDR_port_1_0_rw_address       => CONNECTED_TO_avm_mem_gmem0_DDR_port_1_0_rw_address,       -- avm_mem_gmem0_DDR_port_1_0_rw.address
			avm_mem_gmem0_DDR_port_1_0_rw_byteenable    => CONNECTED_TO_avm_mem_gmem0_DDR_port_1_0_rw_byteenable,    --                              .byteenable
			avm_mem_gmem0_DDR_port_1_0_rw_readdatavalid => CONNECTED_TO_avm_mem_gmem0_DDR_port_1_0_rw_readdatavalid, --                              .readdatavalid
			avm_mem_gmem0_DDR_port_1_0_rw_read          => CONNECTED_TO_avm_mem_gmem0_DDR_port_1_0_rw_read,          --                              .read
			avm_mem_gmem0_DDR_port_1_0_rw_readdata      => CONNECTED_TO_avm_mem_gmem0_DDR_port_1_0_rw_readdata,      --                              .readdata
			avm_mem_gmem0_DDR_port_1_0_rw_write         => CONNECTED_TO_avm_mem_gmem0_DDR_port_1_0_rw_write,         --                              .write
			avm_mem_gmem0_DDR_port_1_0_rw_writedata     => CONNECTED_TO_avm_mem_gmem0_DDR_port_1_0_rw_writedata,     --                              .writedata
			avm_mem_gmem0_DDR_port_1_0_rw_waitrequest   => CONNECTED_TO_avm_mem_gmem0_DDR_port_1_0_rw_waitrequest,   --                              .waitrequest
			avm_mem_gmem0_DDR_port_1_0_rw_burstcount    => CONNECTED_TO_avm_mem_gmem0_DDR_port_1_0_rw_burstcount,    --                              .burstcount
			avm_mem_gmem0_DDR_port_2_0_rw_address       => CONNECTED_TO_avm_mem_gmem0_DDR_port_2_0_rw_address,       -- avm_mem_gmem0_DDR_port_2_0_rw.address
			avm_mem_gmem0_DDR_port_2_0_rw_byteenable    => CONNECTED_TO_avm_mem_gmem0_DDR_port_2_0_rw_byteenable,    --                              .byteenable
			avm_mem_gmem0_DDR_port_2_0_rw_readdatavalid => CONNECTED_TO_avm_mem_gmem0_DDR_port_2_0_rw_readdatavalid, --                              .readdatavalid
			avm_mem_gmem0_DDR_port_2_0_rw_read          => CONNECTED_TO_avm_mem_gmem0_DDR_port_2_0_rw_read,          --                              .read
			avm_mem_gmem0_DDR_port_2_0_rw_readdata      => CONNECTED_TO_avm_mem_gmem0_DDR_port_2_0_rw_readdata,      --                              .readdata
			avm_mem_gmem0_DDR_port_2_0_rw_write         => CONNECTED_TO_avm_mem_gmem0_DDR_port_2_0_rw_write,         --                              .write
			avm_mem_gmem0_DDR_port_2_0_rw_writedata     => CONNECTED_TO_avm_mem_gmem0_DDR_port_2_0_rw_writedata,     --                              .writedata
			avm_mem_gmem0_DDR_port_2_0_rw_waitrequest   => CONNECTED_TO_avm_mem_gmem0_DDR_port_2_0_rw_waitrequest,   --                              .waitrequest
			avm_mem_gmem0_DDR_port_2_0_rw_burstcount    => CONNECTED_TO_avm_mem_gmem0_DDR_port_2_0_rw_burstcount,    --                              .burstcount
			avm_mem_gmem0_DDR_port_3_0_rw_address       => CONNECTED_TO_avm_mem_gmem0_DDR_port_3_0_rw_address,       -- avm_mem_gmem0_DDR_port_3_0_rw.address
			avm_mem_gmem0_DDR_port_3_0_rw_byteenable    => CONNECTED_TO_avm_mem_gmem0_DDR_port_3_0_rw_byteenable,    --                              .byteenable
			avm_mem_gmem0_DDR_port_3_0_rw_readdatavalid => CONNECTED_TO_avm_mem_gmem0_DDR_port_3_0_rw_readdatavalid, --                              .readdatavalid
			avm_mem_gmem0_DDR_port_3_0_rw_read          => CONNECTED_TO_avm_mem_gmem0_DDR_port_3_0_rw_read,          --                              .read
			avm_mem_gmem0_DDR_port_3_0_rw_readdata      => CONNECTED_TO_avm_mem_gmem0_DDR_port_3_0_rw_readdata,      --                              .readdata
			avm_mem_gmem0_DDR_port_3_0_rw_write         => CONNECTED_TO_avm_mem_gmem0_DDR_port_3_0_rw_write,         --                              .write
			avm_mem_gmem0_DDR_port_3_0_rw_writedata     => CONNECTED_TO_avm_mem_gmem0_DDR_port_3_0_rw_writedata,     --                              .writedata
			avm_mem_gmem0_DDR_port_3_0_rw_waitrequest   => CONNECTED_TO_avm_mem_gmem0_DDR_port_3_0_rw_waitrequest,   --                              .waitrequest
			avm_mem_gmem0_DDR_port_3_0_rw_burstcount    => CONNECTED_TO_avm_mem_gmem0_DDR_port_3_0_rw_burstcount,    --                              .burstcount
			cra_ring_root_avs_read                      => CONNECTED_TO_cra_ring_root_avs_read,                      --             cra_ring_root_avs.read
			cra_ring_root_avs_write                     => CONNECTED_TO_cra_ring_root_avs_write,                     --                              .write
			cra_ring_root_avs_address                   => CONNECTED_TO_cra_ring_root_avs_address,                   --                              .address
			cra_ring_root_avs_writedata                 => CONNECTED_TO_cra_ring_root_avs_writedata,                 --                              .writedata
			cra_ring_root_avs_byteenable                => CONNECTED_TO_cra_ring_root_avs_byteenable,                --                              .byteenable
			cra_ring_root_avs_readdata                  => CONNECTED_TO_cra_ring_root_avs_readdata,                  --                              .readdata
			cra_ring_root_avs_waitrequest               => CONNECTED_TO_cra_ring_root_avs_waitrequest,               --                              .waitrequest
			cra_ring_root_avs_readdatavalid             => CONNECTED_TO_cra_ring_root_avs_readdatavalid              --                              .readdatavalid
		);

