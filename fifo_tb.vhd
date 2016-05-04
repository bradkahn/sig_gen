--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:27:48 05/03/2016
-- Design Name:   
-- Module Name:   /home/brad/Rhino/Xilinx/brads_projects/sig_gen/fifo_tb.vhd
-- Project Name:  sig_gen
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fifo
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
USE ieee.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fifo_tb IS
END fifo_tb;
 
ARCHITECTURE behavior OF fifo_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fifo
    PORT(
         clk : IN  std_logic;
         gpmc_clk : IN  std_logic;
			enable : IN  std_logic;
         read_nwrite : IN  std_logic;
         mode : IN  std_logic;
         sample_in : IN  std_logic_vector(15 downto 0);
         sample_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal gpmc_clk : std_logic := '0';
   signal read_nwrite : std_logic := '0';
	signal enable : std_logic := '0';
   signal mode : std_logic := '0';
   signal sample_in : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal sample_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   constant gpmc_clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fifo PORT MAP (
          clk => clk,
          gpmc_clk => gpmc_clk,
			 enable => enable,
          read_nwrite => read_nwrite,
          mode => mode,
          sample_in => sample_in,
          sample_out => sample_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   gpmc_clk_process :process
   begin
		gpmc_clk <= '0';
		wait for gpmc_clk_period/2;
		gpmc_clk <= '1';
		wait for gpmc_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
 
      -- insert stimulus here
		read_nwrite <= '0';
		enable <= '1';
		
		sample_in <= X"0000";
		wait for gpmc_clk_period;
		
		sample_in <= X"0001";
		wait for gpmc_clk_period;
		
		sample_in <= X"0002";
		wait for gpmc_clk_period;
		
		sample_in <= X"0003";
		wait for gpmc_clk_period;
				
		sample_in <= X"0004";
		wait for gpmc_clk_period;
				
		sample_in <= X"0005";
		wait for gpmc_clk_period;
				
		sample_in <= X"0006";
		wait for gpmc_clk_period;
				
		sample_in <= X"0007";
		wait for gpmc_clk_period;
				
		sample_in <= X"0008";
		wait for gpmc_clk_period;
				
		sample_in <= X"0009";
		wait for gpmc_clk_period;
				
		sample_in <= X"000a";
		wait for gpmc_clk_period;
				
		sample_in <= X"000b";
		wait for gpmc_clk_period;
				
		sample_in <= X"000c";
		wait for gpmc_clk_period;
				
		sample_in <= X"000d";
		wait for gpmc_clk_period;
				
		sample_in <= X"000e";
		wait for gpmc_clk_period;
				
		sample_in <= X"000f";
		wait for gpmc_clk_period;
				
		sample_in <= X"0010";
		wait for gpmc_clk_period;
				
		sample_in <= X"0011";
		wait for gpmc_clk_period;
				
		sample_in <= X"0012";
		wait for gpmc_clk_period;
				
		sample_in <= X"0013";
		wait for gpmc_clk_period;
				
		sample_in <= X"0014";
		wait for gpmc_clk_period;
				
		sample_in <= X"0015";
		wait for gpmc_clk_period;
				
		sample_in <= X"0016";
		wait for gpmc_clk_period;
				
		sample_in <= X"0017";
		wait for gpmc_clk_period;
				
		sample_in <= X"0018";
		wait for gpmc_clk_period;
				
		sample_in <= X"0019";
		wait for gpmc_clk_period;
				
		sample_in <= X"001a";
		wait for gpmc_clk_period;
				
		sample_in <= X"001b";
		wait for gpmc_clk_period;
				
		sample_in <= X"001c";
		wait for gpmc_clk_period;
				
		sample_in <= X"001d";
		wait for gpmc_clk_period;
				
		sample_in <= X"001e";
		wait for gpmc_clk_period;
				
		sample_in <= X"001f";
		
		wait for gpmc_clk_period;
		
		read_nwrite <= '1';
		--enable <= '0';
		mode<='0';
		--wait for clk_period*5;
		enable <= '1';
--		wait for clk_period*32;
--		enable <= '0';
		
		
      wait;
   end process;

END;
