----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:05:58 05/11/2016 
-- Design Name: 
-- Module Name:    clk_divider - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity clk_divider is
    Port ( sys_clk_P : in  STD_LOGIC;
           sys_clk_N : in  STD_LOGIC;
           freq_set : in  STD_LOGIC_VECTOR (7 downto 0);
           sample_rate_clk : out  STD_LOGIC);
end clk_divider;

architecture Behavioral of clk_divider is

	signal sys_clk_100MHz	: std_logic;
	signal clk_prescaled		: std_logic := '0';


begin

	------------------------------------------------------------------------------------
	-- Instantiate differential input clockl buffer, for 100MHz clock 
	-----------------------------------------------------------------------------------

	IBUFGDS_sys_clk: IBUFGDS
	generic map
	(
		IOSTANDARD => "LVDS_25",
		DIFF_TERM => TRUE,
		IBUF_LOW_PWR => FALSE
	)
	port map
	(
		I => sys_clk_P,
		IB => sys_clk_N,
		O => sys_clk_100MHz
	);
	
	process(sys_clk_100MHz)
--	variable prescaler 	: integer := 25_000_000; -- hardcoded for 2Hz clk
	variable prescaler 	: integer := 5; 
	variable count			: integer := 0;
	begin
		if rising_edge(sys_clk_100MHz) then
			count := count + 1;
			if count >= prescaler then
				clk_prescaled <= not clk_prescaled;
				count := 0;
			end if;
		end if;
	end process;
	
	sample_rate_clk <= clk_prescaled;
	
end Behavioral;

