--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:21:43 05/11/2016
-- Design Name:   
-- Module Name:   /home/brad/Rhino/Xilinx/brads_projects/sig_gen/clk_divider_TB.vhd
-- Project Name:  sig_gen
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clk_divider
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY clk_divider_TB IS
END clk_divider_TB;
 
ARCHITECTURE behavior OF clk_divider_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clk_divider
    PORT(
         sys_clk_P : IN  std_logic;
         sys_clk_N : IN  std_logic;
         freq_set : IN  std_logic_vector(7 downto 0);
         sample_rate_clk : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal sys_clk_P : std_logic := '0';
   signal sys_clk_N : std_logic := '0';
   signal freq_set : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal sample_rate_clk : std_logic;
signal   sys_clk: std_logic:='0';
   -- Clock period definitions
   constant sys_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clk_divider PORT MAP (
          sys_clk_P => sys_clk_P,
          sys_clk_N => sys_clk_N,
          freq_set => freq_set,
          sample_rate_clk => sample_rate_clk
        );

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

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      --wait for sample_rate_clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
