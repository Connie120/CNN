	component kernel_system is
		port (
			cc_snoop_data              : in  std_logic_vector(34 downto 0)  := (others => 'X'); -- data
			cc_snoop_valid             : in  std_logic                      := 'X';             -- valid
			cc_snoop_ready             : out std_logic;                                         -- ready
			clock_reset_clk            : in  std_logic                      := 'X';             -- clk
			clock_reset2x_clk          : in  std_logic                      := 'X';             -- clk
			cc_snoop_clk_clk           : in  std_logic                      := 'X';             -- clk
			kernel_ddr4a_address       : out std_logic_vector(32 downto 0);                     -- address
			kernel_ddr4a_byteenable    : out std_logic_vector(63 downto 0);                     -- byteenable
			kernel_ddr4a_readdatavalid : in  std_logic                      := 'X';             -- readdatavalid
			kernel_ddr4a_read          : out std_logic;                                         -- read
			kernel_ddr4a_readdata      : in  std_logic_vector(511 downto 0) := (others => 'X'); -- readdata
			kernel_ddr4a_write         : out std_logic;                                         -- write
			kernel_ddr4a_writedata     : out std_logic_vector(511 downto 0);                    -- writedata
			kernel_ddr4a_waitrequest   : in  std_logic                      := 'X';             -- waitrequest
			kernel_ddr4a_burstcount    : out std_logic_vector(4 downto 0);                      -- burstcount
			kernel_ddr4b_address       : out std_logic_vector(32 downto 0);                     -- address
			kernel_ddr4b_byteenable    : out std_logic_vector(63 downto 0);                     -- byteenable
			kernel_ddr4b_readdatavalid : in  std_logic                      := 'X';             -- readdatavalid
			kernel_ddr4b_read          : out std_logic;                                         -- read
			kernel_ddr4b_readdata      : in  std_logic_vector(511 downto 0) := (others => 'X'); -- readdata
			kernel_ddr4b_write         : out std_logic;                                         -- write
			kernel_ddr4b_writedata     : out std_logic_vector(511 downto 0);                    -- writedata
			kernel_ddr4b_waitrequest   : in  std_logic                      := 'X';             -- waitrequest
			kernel_ddr4b_burstcount    : out std_logic_vector(4 downto 0);                      -- burstcount
			kernel_ddr4c_address       : out std_logic_vector(32 downto 0);                     -- address
			kernel_ddr4c_byteenable    : out std_logic_vector(63 downto 0);                     -- byteenable
			kernel_ddr4c_readdatavalid : in  std_logic                      := 'X';             -- readdatavalid
			kernel_ddr4c_read          : out std_logic;                                         -- read
			kernel_ddr4c_readdata      : in  std_logic_vector(511 downto 0) := (others => 'X'); -- readdata
			kernel_ddr4c_write         : out std_logic;                                         -- write
			kernel_ddr4c_writedata     : out std_logic_vector(511 downto 0);                    -- writedata
			kernel_ddr4c_waitrequest   : in  std_logic                      := 'X';             -- waitrequest
			kernel_ddr4c_burstcount    : out std_logic_vector(4 downto 0);                      -- burstcount
			kernel_ddr4d_address       : out std_logic_vector(32 downto 0);                     -- address
			kernel_ddr4d_byteenable    : out std_logic_vector(63 downto 0);                     -- byteenable
			kernel_ddr4d_readdatavalid : in  std_logic                      := 'X';             -- readdatavalid
			kernel_ddr4d_read          : out std_logic;                                         -- read
			kernel_ddr4d_readdata      : in  std_logic_vector(511 downto 0) := (others => 'X'); -- readdata
			kernel_ddr4d_write         : out std_logic;                                         -- write
			kernel_ddr4d_writedata     : out std_logic_vector(511 downto 0);                    -- writedata
			kernel_ddr4d_waitrequest   : in  std_logic                      := 'X';             -- waitrequest
			kernel_ddr4d_burstcount    : out std_logic_vector(4 downto 0);                      -- burstcount
			kernel_cra_waitrequest     : out std_logic;                                         -- waitrequest
			kernel_cra_readdata        : out std_logic_vector(63 downto 0);                     -- readdata
			kernel_cra_readdatavalid   : out std_logic;                                         -- readdatavalid
			kernel_cra_burstcount      : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- burstcount
			kernel_cra_writedata       : in  std_logic_vector(63 downto 0)  := (others => 'X'); -- writedata
			kernel_cra_address         : in  std_logic_vector(29 downto 0)  := (others => 'X'); -- address
			kernel_cra_write           : in  std_logic                      := 'X';             -- write
			kernel_cra_read            : in  std_logic                      := 'X';             -- read
			kernel_cra_byteenable      : in  std_logic_vector(7 downto 0)   := (others => 'X'); -- byteenable
			kernel_cra_debugaccess     : in  std_logic                      := 'X';             -- debugaccess
			kernel_irq_irq             : out std_logic;                                         -- irq
			clock_reset_reset_reset_n  : in  std_logic                      := 'X'              -- reset_n
		);
	end component kernel_system;

	u0 : component kernel_system
		port map (
			cc_snoop_data              => CONNECTED_TO_cc_snoop_data,              --          cc_snoop.data
			cc_snoop_valid             => CONNECTED_TO_cc_snoop_valid,             --                  .valid
			cc_snoop_ready             => CONNECTED_TO_cc_snoop_ready,             --                  .ready
			clock_reset_clk            => CONNECTED_TO_clock_reset_clk,            --       clock_reset.clk
			clock_reset2x_clk          => CONNECTED_TO_clock_reset2x_clk,          --     clock_reset2x.clk
			cc_snoop_clk_clk           => CONNECTED_TO_cc_snoop_clk_clk,           --      cc_snoop_clk.clk
			kernel_ddr4a_address       => CONNECTED_TO_kernel_ddr4a_address,       --      kernel_ddr4a.address
			kernel_ddr4a_byteenable    => CONNECTED_TO_kernel_ddr4a_byteenable,    --                  .byteenable
			kernel_ddr4a_readdatavalid => CONNECTED_TO_kernel_ddr4a_readdatavalid, --                  .readdatavalid
			kernel_ddr4a_read          => CONNECTED_TO_kernel_ddr4a_read,          --                  .read
			kernel_ddr4a_readdata      => CONNECTED_TO_kernel_ddr4a_readdata,      --                  .readdata
			kernel_ddr4a_write         => CONNECTED_TO_kernel_ddr4a_write,         --                  .write
			kernel_ddr4a_writedata     => CONNECTED_TO_kernel_ddr4a_writedata,     --                  .writedata
			kernel_ddr4a_waitrequest   => CONNECTED_TO_kernel_ddr4a_waitrequest,   --                  .waitrequest
			kernel_ddr4a_burstcount    => CONNECTED_TO_kernel_ddr4a_burstcount,    --                  .burstcount
			kernel_ddr4b_address       => CONNECTED_TO_kernel_ddr4b_address,       --      kernel_ddr4b.address
			kernel_ddr4b_byteenable    => CONNECTED_TO_kernel_ddr4b_byteenable,    --                  .byteenable
			kernel_ddr4b_readdatavalid => CONNECTED_TO_kernel_ddr4b_readdatavalid, --                  .readdatavalid
			kernel_ddr4b_read          => CONNECTED_TO_kernel_ddr4b_read,          --                  .read
			kernel_ddr4b_readdata      => CONNECTED_TO_kernel_ddr4b_readdata,      --                  .readdata
			kernel_ddr4b_write         => CONNECTED_TO_kernel_ddr4b_write,         --                  .write
			kernel_ddr4b_writedata     => CONNECTED_TO_kernel_ddr4b_writedata,     --                  .writedata
			kernel_ddr4b_waitrequest   => CONNECTED_TO_kernel_ddr4b_waitrequest,   --                  .waitrequest
			kernel_ddr4b_burstcount    => CONNECTED_TO_kernel_ddr4b_burstcount,    --                  .burstcount
			kernel_ddr4c_address       => CONNECTED_TO_kernel_ddr4c_address,       --      kernel_ddr4c.address
			kernel_ddr4c_byteenable    => CONNECTED_TO_kernel_ddr4c_byteenable,    --                  .byteenable
			kernel_ddr4c_readdatavalid => CONNECTED_TO_kernel_ddr4c_readdatavalid, --                  .readdatavalid
			kernel_ddr4c_read          => CONNECTED_TO_kernel_ddr4c_read,          --                  .read
			kernel_ddr4c_readdata      => CONNECTED_TO_kernel_ddr4c_readdata,      --                  .readdata
			kernel_ddr4c_write         => CONNECTED_TO_kernel_ddr4c_write,         --                  .write
			kernel_ddr4c_writedata     => CONNECTED_TO_kernel_ddr4c_writedata,     --                  .writedata
			kernel_ddr4c_waitrequest   => CONNECTED_TO_kernel_ddr4c_waitrequest,   --                  .waitrequest
			kernel_ddr4c_burstcount    => CONNECTED_TO_kernel_ddr4c_burstcount,    --                  .burstcount
			kernel_ddr4d_address       => CONNECTED_TO_kernel_ddr4d_address,       --      kernel_ddr4d.address
			kernel_ddr4d_byteenable    => CONNECTED_TO_kernel_ddr4d_byteenable,    --                  .byteenable
			kernel_ddr4d_readdatavalid => CONNECTED_TO_kernel_ddr4d_readdatavalid, --                  .readdatavalid
			kernel_ddr4d_read          => CONNECTED_TO_kernel_ddr4d_read,          --                  .read
			kernel_ddr4d_readdata      => CONNECTED_TO_kernel_ddr4d_readdata,      --                  .readdata
			kernel_ddr4d_write         => CONNECTED_TO_kernel_ddr4d_write,         --                  .write
			kernel_ddr4d_writedata     => CONNECTED_TO_kernel_ddr4d_writedata,     --                  .writedata
			kernel_ddr4d_waitrequest   => CONNECTED_TO_kernel_ddr4d_waitrequest,   --                  .waitrequest
			kernel_ddr4d_burstcount    => CONNECTED_TO_kernel_ddr4d_burstcount,    --                  .burstcount
			kernel_cra_waitrequest     => CONNECTED_TO_kernel_cra_waitrequest,     --        kernel_cra.waitrequest
			kernel_cra_readdata        => CONNECTED_TO_kernel_cra_readdata,        --                  .readdata
			kernel_cra_readdatavalid   => CONNECTED_TO_kernel_cra_readdatavalid,   --                  .readdatavalid
			kernel_cra_burstcount      => CONNECTED_TO_kernel_cra_burstcount,      --                  .burstcount
			kernel_cra_writedata       => CONNECTED_TO_kernel_cra_writedata,       --                  .writedata
			kernel_cra_address         => CONNECTED_TO_kernel_cra_address,         --                  .address
			kernel_cra_write           => CONNECTED_TO_kernel_cra_write,           --                  .write
			kernel_cra_read            => CONNECTED_TO_kernel_cra_read,            --                  .read
			kernel_cra_byteenable      => CONNECTED_TO_kernel_cra_byteenable,      --                  .byteenable
			kernel_cra_debugaccess     => CONNECTED_TO_kernel_cra_debugaccess,     --                  .debugaccess
			kernel_irq_irq             => CONNECTED_TO_kernel_irq_irq,             --        kernel_irq.irq
			clock_reset_reset_reset_n  => CONNECTED_TO_clock_reset_reset_reset_n   -- clock_reset_reset.reset_n
		);

