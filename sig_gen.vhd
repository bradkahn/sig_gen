----------------------------------------------------------------------------------
-- Company: UCT
-- Engineer: Brad Kahn
-- 
-- Create Date:    09:13:27 04/22/2016 
-- Design Name: 
-- Module Name:    sig_gen - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any X"ilinX" primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sig_gen is
port	(
			clk 				: in std_logic;
			sig_out			: out std_logic_vector (7 downto 0)
		);
end sig_gen;

architecture Behavioral of sig_gen is
-- 32x8 ROM
type ROM is array (0 to 31) of std_logic_vector (7 downto 0);
-- Creating a LUT for sine wave using 32 samples
-- Range of waveform is from 0 to 256
signal sine_lut : ROM := (X"7F",X"98",X"B0",X"C6",X"D9",X"E9"
,X"F4",X"FC",X"FE",X"FC",X"F4",X"E9",X"D9",X"C6",X"B0",X"98"
,X"7F",X"66",X"4E",X"38",X"25",X"15",X"0A",X"02",X"00",X"02"
,X"0A",X"15",X"25",X"38",X"4E",X"66");
begin
	process (clk)
	variable i : integer range 0 to 31 :=0;
	begin
		if rising_edge(clk) then
			sig_out <= sine_lut(i);
			i := i + 1;		
		end if;
	end process;
end Behavioral;

