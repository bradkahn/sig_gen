library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity peak_detector is
    Port ( sig_in 	: in  STD_LOGIC_VECTOR (7 downto 0);
           threshold : in  STD_LOGIC_VECTOR (7 downto 0);
           sig_out 	: out  STD_LOGIC_VECTOR (7 downto 0));
end peak_detector;

architecture Behavioral of peak_detector is

begin
	sig_out <= 	X"FF" when sig_in >= threshold else
					X"00";
end Behavioral;

