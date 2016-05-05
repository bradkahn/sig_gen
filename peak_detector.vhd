library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity peak_detector is
    Port ( sig_in 	: in  STD_LOGIC_VECTOR (15 downto 0);
           threshold : in  STD_LOGIC_VECTOR (15 downto 0);
           sig_out 	: out  STD_LOGIC_VECTOR (15 downto 0));
end peak_detector;

architecture Behavioral of peak_detector is

begin
	sig_out <= 	X"FFFF" when sig_in >= threshold else
					X"0000";
end Behavioral;
