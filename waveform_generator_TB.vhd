--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:20:23 05/04/2016
-- Design Name:   
-- Module Name:   /home/brad/Rhino/Xilinx/brads_projects/sig_gen/waveform_generator_TB.vhd
-- Project Name:  sig_gen
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: waveform_generator
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
 
ENTITY waveform_generator_TB IS
END waveform_generator_TB;
 
ARCHITECTURE behavior OF waveform_generator_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT waveform_generator
    PORT(
         waveform : IN  std_logic_vector(2 downto 0);
         amplitude : IN  std_logic_vector(2 downto 0);
         clk : IN  std_logic;
         sig_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal waveform : std_logic_vector(2 downto 0) := (others => '0');
   signal amplitude : std_logic_vector(2 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal sig_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: waveform_generator PORT MAP (
          waveform => waveform,
          amplitude => amplitude,
          clk => clk,
          sig_out => sig_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		

      -- insert stimulus here
		waveform<="010";
		amplitude <="100";
      wait;
   end process;

END;
