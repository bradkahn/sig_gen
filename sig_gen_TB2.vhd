
  -- Vhdl test bench created from schematic /home/brad/Rhino/Xilinx/brads_projects/sig_gen/sig_gen.sch - Wed May 11 10:34:30 2016
--
-- Notes:
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY sig_gen_sig_gen_sch_tb IS
END sig_gen_sig_gen_sch_tb;
ARCHITECTURE behavioral OF sig_gen_sig_gen_sch_tb IS

   COMPONENT sig_gen
   PORT( mode	:	IN	STD_LOGIC;
          read_nwrite	:	IN	STD_LOGIC;
          enable	:	IN	STD_LOGIC;
          peak_det_out	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0);
          sys_clk_P	:	IN	STD_LOGIC;
          sys_clk_N	:	IN	STD_LOGIC;
          gpmc_clk_i	:	IN	STD_LOGIC;
          gpmc_n_we	:	IN	STD_LOGIC;
          gpmc_n_oe	:	IN	STD_LOGIC;
          gpmc_n_adv_ale	:	IN	STD_LOGIC;
          gpmc_n_wp	:	IN	STD_LOGIC;
          gpmc_a	:	IN	STD_LOGIC_VECTOR (10 DOWNTO 1);
          gpmc_n_cs	:	IN	STD_LOGIC_VECTOR (6 DOWNTO 0);
          gpmc_d	:	INOUT	STD_LOGIC_VECTOR (15 DOWNTO 0));
   END COMPONENT;

   SIGNAL mode	:	STD_LOGIC;
   SIGNAL read_nwrite	:	STD_LOGIC;
   SIGNAL enable	:	STD_LOGIC;
   SIGNAL peak_det_out	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL sys_clk_P	:	STD_LOGIC;
   SIGNAL sys_clk_N	:	STD_LOGIC;
   SIGNAL gpmc_clk_i	:	STD_LOGIC;
   SIGNAL gpmc_n_we	:	STD_LOGIC;
   SIGNAL gpmc_n_oe	:	STD_LOGIC;
   SIGNAL gpmc_n_adv_ale	:	STD_LOGIC;
   SIGNAL gpmc_n_wp	:	STD_LOGIC;
   SIGNAL gpmc_a	:	STD_LOGIC_VECTOR (10 DOWNTO 1);
   SIGNAL gpmc_n_cs	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL gpmc_d	:	STD_LOGIC_VECTOR (15 DOWNTO 0);

	signal   gpmc_fclk: std_logic:='0';  -- internal bus clock
   constant gpmc_fclk_period: time := 12 ns;
	signal   sys_clk: std_logic:='0'; -- internal system clock for FPGA
	constant sys_clk_period : time := 10 ns;

BEGIN

   UUT: sig_gen PORT MAP(
		mode => mode,
		read_nwrite => read_nwrite,
		enable => enable,
		peak_det_out => peak_det_out,
		sys_clk_P => sys_clk_P,
		sys_clk_N => sys_clk_N,
		gpmc_clk_i => gpmc_clk_i,
		gpmc_n_we => gpmc_n_we,
		gpmc_n_oe => gpmc_n_oe,
		gpmc_n_adv_ale => gpmc_n_adv_ale,
		gpmc_n_wp => gpmc_n_wp,
		gpmc_a => gpmc_a,
		gpmc_n_cs => gpmc_n_cs,
		gpmc_d => gpmc_d
   );
   -- Clock process definitions FCLK
   gpmc_fclk_process :process
   begin
		gpmc_fclk <= '0';
		wait for gpmc_fclk_period/2;
		gpmc_fclk <= '1';
		wait for gpmc_fclk_period/2;
   end process;
	gpmc_clk_i <= gpmc_fclk;
	   -- Clock process definitions FCLK
   sys_clk_process :process
   begin
		sys_clk <= '0';
		wait for sys_clk_period/2;
		sys_clk <= '1';
		wait for sys_clk_period/2;
   end process;

	-- Generate dff clock
		sys_clk_P <= sys_clk;
		sys_clk_N <= not(sys_clk);

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
				mode<='1';
				read_nwrite<='0';
				enable<='1';
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
