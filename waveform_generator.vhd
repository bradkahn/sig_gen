library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity waveform_generator is
port(
			waveform			: in std_logic_vector (2 downto 0);
			amplitude		: in std_logic_vector (2 downto 0);
--			custom_waveform: in std_logic_vector (15 downto 0); <-- TODO. Implement state machine for "load waveform"
			clk 				: in std_logic;
			sig_out			: out std_logic_vector (15 downto 0)
		);
end waveform_generator;

architecture Behavioral of waveform_generator is
-- 32x16 ROM
type ROM is array (0 to 31) of std_logic_vector (15 downto 0);

signal sin_lut : ROM := (x"7fff", x"98f8", x"b0fb", x"c71c", x"da81", x"ea6c",
x"f640", x"fd89", x"ffff", x"fd89", x"f640", x"ea6c", x"da81", x"c71c", x"b0fb",
x"98f8", x"7fff", x"6706", x"4f03", x"38e2", x"257d", x"1592", x"09be", x"0275",
x"0000", x"0275", x"09be", x"1592", x"257d", x"38e2", x"4f03", x"6706");

signal sqr_lut : ROM := (x"ffff", x"ffff", x"ffff", x"ffff", x"ffff", x"ffff",
x"ffff", x"ffff", x"ffff", x"ffff", x"ffff", x"ffff", x"ffff", x"ffff", x"ffff",
x"ffff", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000",
x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000", x"0000");

signal tri_lut : ROM := (x"0000", x"0fff", x"1ffe", x"2ffd", x"3ffc", x"4ffb",
x"5ffa", x"6ff9", x"7ff8", x"8ff7", x"9ff6", x"aff5", x"bff4", x"cff3", x"dff2",
x"eff1", x"eff1", x"dff2", x"cff3", x"bff4", x"aff5", x"9ff6", x"8ff7", x"7ff8",
x"6ff9", x"5ffa", x"4ffb", x"3ffc", x"2ffd", x"1ffe", x"0fff", x"0000");

signal rmp_lut : ROM := (x"0000", x"07ff", x"0ffe", x"17fd", x"1ffc", x"27fb",
x"2ffa", x"37f9", x"3ff8", x"47f7", x"4ff6", x"57f5", x"5ff4", x"67f3", x"6ff2",
x"77f1", x"7ff0", x"87ef", x"8fee", x"97ed", x"9fec", x"a7eb", x"afea", x"b7e9",
x"bfe8", x"c7e7", x"cfe6", x"d7e5", x"dfe4", x"e7e3", x"efe2", x"f7e1");

signal sample : std_logic_vector (15 downto 0);

begin

	-- amplifying the sample (requires a lot of conversion functions...)
	-- http://www.bitweenie.com/listings/vhdl-type-conversion/
	sig_out <= STD_LOGIC_VECTOR(TO_UNSIGNED(TO_INTEGER(UNSIGNED(sample)) * TO_INTEGER(UNSIGNED(amplitude)), 16));

	process (clk)
	variable i : integer range 0 to 31 :=0;
	begin
		if rising_edge(clk) then
			case waveform is
				when "001" => -- sine wave
					sample <= sin_lut(i);
				when "010" => -- square wave
					sample <= sqr_lut(i);
				when "011" => -- triangle wave
					sample <= tri_lut(i);
				when "100" => -- ramp/sawtooth wave
					sample <= rmp_lut(i);
				when others => -- TODO: implement chirp, custom, noise, random waveforms (all can be generated on CPU, and then sent as custom)
					sample <= (others => 'Z');-- CHECK WHAT HAPPENS HERE WHEN CONVERTING 'Z' TO INTEGER
			end case;
			i := i + 1;
			if i = 32 then
				i := 0;
			end if;
		end if;
	end process;
end Behavioral;
