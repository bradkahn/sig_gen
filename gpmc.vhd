library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

library UNISIM;
use UNISIM.VComponents.all;

entity gpmc is
port
( -- GPMC PORTS
  gpmc_a        : in std_logic_vector(10 downto 1);
  gpmc_d        : inout std_logic_vector(15 downto 0);
  gpmc_clk_i    : in std_logic;
  gpmc_n_cs     : in std_logic_vector(6 downto 0);
  gpmc_n_we     : in std_logic;
  gpmc_n_oe     : in std_logic;
  gpmc_n_adv_ale:	in std_logic;
  gpmc_n_wp     : in std_logic;
  gpmc_clk      :	out std_logic;
  -- WAVEFORM GENERATOR PORTS
  threshold     : out std_logic_vector(15 downto 0);
  frequency     : out std_logic_vector(15 downto 0);
  waveform_sel  : out std_logic_vector(2 downto 0);
  amplitude     : out std_logic_vector(2 downto 0);
  mode          : out std_logic;
  enable        : out std_logic;
  read_nwrite   : out std_logic;
  --			custom_waveform: out std_logic_vector (15 downto 0); <-- TODO. Implement state machine for "load waveform"
  signal_output : in std_logic_vector(15 downto 0)
);
end gpmc;

architecture Behavioral of gpmc is

------------------------------------------------------------------------------------
-- Declare types
------------------------------------------------------------------------------------
  type ram_type is array (31 downto 0) of std_logic_vector(15 downto 0);   -- 32 X 16 memory block

------------------------------------------------------------------------------------
-- Declare signals
------------------------------------------------------------------------------------

  -- Define signals for the gpmc bus
  signal gpmc_clk_i_b	: std_logic;  --buffered  gpmc_clk_i
  signal gpmc_address	: std_logic_vector(25 downto 0):=(others => '0');         -- Full de-multiplexed address bus (ref. 16 bits)
  signal gpmc_data_o	: std_logic_vector(15 downto 0):="0000000000000000";      -- Register for output bus value
  signal gpmc_data_i	: std_logic_vector(15 downto 0):="0000000000000000";      -- Register for input bus value

  -- Other signals
  signal heartbeat : std_logic;
  signal dcm_locked: std_logic;
  signal rd_cs_en  : std_logic:='0';
  signal we_cs_en  : std_logic:='0';

-- Debug signals
  signal waveform_sel_reg  : std_logic_vector(15 downto 0) := "0000000000000000";
  signal amplitude_reg     : std_logic_vector(15 downto 0) := "0000000000000000";
  signal frequency_reg     : std_logic_vector(15 downto 0) := "0000000000000000";
  signal enable_reg        : std_logic_vector(15 downto 0) := "0000000000000000";
  signal mode_reg          : std_logic_vector(15 downto 0) := "0000000000000000";
  signal threshold_reg     : std_logic_vector(15 downto 0) := "0111111111111111";
  signal custom_waveform_reg_file  : ram_type;
  signal output_reg        : std_logic_vector(15 downto 0) := "0000000000000000";

  ALIAS reg_bank_address	: std_logic_vector(3 downto 0) IS gpmc_address(25 downto 22);
  -- Currently each register is 64 x 16
  ALIAS reg_file_address	: std_logic_vector(5 downto 0) IS gpmc_address(5 downto 0);

--==========================
begin --architecture RTL
--==========================

------------------------------------------------------------------------------------
-- Instantiate input buffer for FPGA_PROC_BUS_CLK
------------------------------------------------------------------------------------

IBUFG_gpmc_clk_i : IBUFG
generic map
(
    IBUF_LOW_PWR => FALSE,
    IOSTANDARD => "DEFAULT"
)
port map
(
    I => gpmc_clk_i,
    O => gpmc_clk_i_b
);

-----------------------------------------------------------------------------------
-- Register File: Read
------------------------------------------------------------------------------------

-- SYM FILE REGISTERS
-- 0  reg_waveform_sel    3 0x08000000  0x02
-- 1  reg_amplitude       3 0x08000002  0x02
-- 2  reg_frequency       3 0x08000004  0x02
-- 3  reg_threshold       3	0x08000006	0x02
-- 4  reg_mode            3	0x08000008	0x02
-- 5  reg_enable          3	0x0800000A	0x02
-- 6  reg_custom_wave     3	0x0800000C	0x40
-- 7  reg_output_sig      1	0x0800004C	0x02

process (gpmc_clk_i_b,gpmc_n_cs,gpmc_n_oe,gpmc_n_we,gpmc_n_adv_ale,gpmc_d,gpmc_a)
begin
  if (gpmc_n_cs /= "1111111")  then             -- CS 1
    if gpmc_clk_i_b'event and gpmc_clk_i_b = '1' then
		--First cycle of the bus transaction record the address
  		if (gpmc_n_adv_ale = '0') then
  			 gpmc_address <= gpmc_a & gpmc_d;   -- Address of 16 bit word

  		--Second cycle of the bus is read or write
  		--Check for read
  		elsif (gpmc_n_oe = '0') then
  			case conv_integer(reg_bank_address) is
  				when 0 => gpmc_data_o <= waveform_sel_reg;
  				when 1 => gpmc_data_o <= amplitude_reg;
  				when 2 => gpmc_data_o <= frequency_reg;
  				when 3 => gpmc_data_o <= threshold_reg;
  				when 4 => gpmc_data_o <= mode_reg;
  				when 5 => gpmc_data_o <= enable_reg;
  				when 7 => gpmc_data_o <= output_reg;
  				when others => gpmc_data_o <= (others => '0');
  			end case;
  		--Check for write
  		elsif (gpmc_n_we = '0') then
  			case conv_integer(reg_bank_address) is
  				when 0 => waveform_sel_reg  <= gpmc_data_i;
  				when 1 => amplitude_reg     <= gpmc_data_i;
  				when 2 => frequency_reg     <= gpmc_data_i;
  				when 3 => threshold_reg     <= gpmc_data_i;
  				when 4 => mode_reg          <= gpmc_data_i;
  				when 5 => enable_reg        <= gpmc_data_i;
  				when 6 => custom_waveform_reg_file(conv_integer(reg_file_address)) <= gpmc_data_i;
  				when others => null;
  			end case;
  		end if;
     end if;
   end if;
end process;

gpmc_clk      <= gpmc_clk_i_b;
threshold     <= threshold_reg;
waveform_sel  <= waveform_sel_reg(2 downto 0);
frequency     <= frequency_reg;
amplitude     <= amplitude_reg(2 downto 0);
mode          <= mode_reg(0);
enable        <= enable_reg(0);
output_reg    <= signal_output;

------------------------------------------------------------------------------------
-- Manage the tri-state bus
---------------------------------------------------------------------------------
gpmc_d <= gpmc_data_o when (gpmc_n_oe = '0') else (others => 'Z');
gpmc_data_i <= gpmc_d;

end Behavioral;
