----------------------------------------------------------------------------------
-- Company: 		UCT
-- Engineer: 		Bradley Kahn
-- 
-- Create Date:	09:31:25 05/03/2016 
-- Design Name: 	fifo
-- Module Name:	fifo - Behavioral 
-- Project Name: 	sig_gen
-- Target Devices:RHINO (Spartan 6)
-- Tool versions: 
-- Description: 	32x16bit FIFO buffer. Waveform samples are fed in from a waveform generator, synched to the GPMC_CLK.

--			 sampling clock
--			+-------------------------+
--			 gpmc clock               |
--			+--------------------+    |
--										|    |
--			 mode        +-------v----v--------------------+
--			+------------>                                 |
--			 enable      |                                 |  sample out
--			+------------>       32x16 FIFO BUFFER         +------------>
--			 r/!w        |                                 |
--			+------------>                                 |
--			 sample in   |                                 |
--			+------------>                                 |
--							 +---------------------------------+


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
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo is
    Port	( clk				: in  STD_LOGIC;
           gpmc_clk		: in  STD_LOGIC;
			  enable			: in  STD_LOGIC;
           read_nwrite	: in  STD_LOGIC;
			  mode			: in	STD_LOGIC; -- 1 = continuous, 0 = single-burst
           sample_in		: in  STD_LOGIC_VECTOR (15 downto 0);
           sample_out	: out STD_LOGIC_VECTOR (15 downto 0)
			);
end fifo;

architecture Behavioral of fifo is
-- 32x16 buffer
type MEMORY is array (0 to 31) of STD_LOGIC_VECTOR (15 downto 0);
signal fifo_buffer : MEMORY := (others => x"0000");

signal clk_process: STD_LOGIC := '0';
signal fire			: STD_LOGIC := '1'; -- used as 'enable' signal for read mode
begin

	clk_process <= clk when read_nwrite = '1' else gpmc_clk; -- clocked by system clk when in read mode, clked by gpmc clk in write mode
						
	Process (clk_process, enable)
	variable read_index 	: integer range 0 to 31 := 0;
	variable write_index : integer range 0 to 31 := 0;
	
	begin
		if rising_edge(clk_process) then
			if enable = '1' then	
				-- BUFFER READ
				if read_nwrite = '1' then
					write_index := 0;
					if fire = '1' then
						sample_out <= fifo_buffer(read_index);
						read_index := read_index + 1;
						if read_index = 32 then
							read_index := 0;
							if mode = '0' then
								fire <= '0';
							end if;
						end if;
					else 
						sample_out <= (others=>'Z');
 					end if;
				-- BUFFER WRITE
				else
					read_index := 0;
					fifo_buffer(write_index) <= sample_in;
					write_index := write_index + 1;
					if write_index = 32 then
						write_index := 0; -- wrap around to start of buffer
					end if;
				end if;
			end if;
		end if;
	end Process ; 
	
end Behavioral;

