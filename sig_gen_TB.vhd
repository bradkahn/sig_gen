-- Vhdl test bench created from schematic /home/brad/Rhino/Xilinx/brads_projects/sig_gen/sig_gen.sch - Thu May  5 09:35:48 2016
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
PORT( mode            :	IN	STD_LOGIC;
      read_nwrite     :	IN	STD_LOGIC;
      enable          :	IN	STD_LOGIC;
      peak_det_out    :	OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
      gpmc_clk        :	IN	STD_LOGIC;
      waveform_sel    :	IN	STD_LOGIC_VECTOR (2 DOWNTO 0);
      amplitude       :	IN	STD_LOGIC_VECTOR (2 DOWNTO 0));
END COMPONENT;

   SIGNAL mode	:	STD_LOGIC;
   SIGNAL read_nwrite	:	STD_LOGIC;
   SIGNAL enable	:	STD_LOGIC;
   SIGNAL sample_rate_clk	:	STD_LOGIC;
   SIGNAL threshold	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL peak_det_out	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL gpmc_clk	:	STD_LOGIC;
   SIGNAL waveform_sel	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL amplitude	:	STD_LOGIC_VECTOR (2 DOWNTO 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   constant gpmc_clk_period : time := 20 ns;

BEGIN

   UUT: sig_gen PORT MAP(
		mode => mode,
		read_nwrite => read_nwrite,
		enable => enable,
		peak_det_out => peak_det_out,
		gpmc_clk => gpmc_clk,
		waveform_sel => waveform_sel,
		amplitude => amplitude
   );

-- *** Test Bench - User Defined Section ***
-- Clock process definitions
    clk_process :process
    begin
     sample_rate_clk <= '0';
     wait for clk_period/2;
     sample_rate_clk <= '1';
     wait for clk_period/2;
    end process;

    gpmc_clk_process :process
    begin
     gpmc_clk <= '0';
     wait for gpmc_clk_period/2;
     gpmc_clk <= '1';
     wait for gpmc_clk_period/2;
    end process;


    tb : PROCESS
    BEGIN

      -- SQUARE WAVE LOAD
      mode <= '1'; -- continuous
      read_nwrite <= '0'; -- write
      enable <= '1'; -- enable fifo
      threshold <= x"FFFF"; -- set peak detector threshold
      waveform_sel <= "010"; -- square waveform
      amplitude <= "001"; -- gain of 1
      wait for 32*gpmc_clk_period;

      -- WAVE OUTPUT
      read_nwrite <= '1'; -- read
      wait for 32*clk_period;

      -- SINE WAVE LOAD
      mode <= '1';
      read_nwrite <= '0';
      enable <= '1';
      threshold <= x"FFFF";
      waveform_sel <= "001";
      amplitude <= "001";
      wait for 32*gpmc_clk_period;

      -- WAVE OUTPUT
      read_nwrite <= '1'; -- read
      wait for 32*clk_period;


      WAIT; -- will wait forever
    END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
