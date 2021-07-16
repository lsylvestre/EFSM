
end architecture;
-- AVALON MM-slave wrapper around the core let_and2 IP
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity avs_let_and2 is
  port (avs_s0_address : in std_logic_vector(3 downto 0)  := (others => '0');
          -- 0000  : control/status register (b1=start, b0=rdy)
          -- 0001  : result register
          
        avs_s0_read        : in  std_logic                     := '0';
        avs_s0_readdata    : out std_logic_vector(31 downto 0);
        avs_s0_write       : in  std_logic                     := '0';
        avs_s0_writedata   : in  std_logic_vector(31 downto 0) := (others => '0');
        clock_clk          : in  std_logic                     := '0';
        reset_reset        : in  std_logic                     := '0');
end entity;

architecture rtl of avs_let_and2 is
  component let_and2 is
    port (signal clk : in std_logic;
          signal reset : in std_logic;
          signal start : in std_logic;
          signal rdy : out std_logic;
          signal result: out integer);
  end component;
  
  signal result: integer;
  signal start: std_logic;
signal rdy: std_logic;type write_state_t is (Idle, StartAsserted);
signal write_state: write_state_t;
begin
  let_and2_CC : component let_and2
    port map (clk => clock_clk,
              reset => reset_reset,
              start => start,
              rdy => rdy,
              result => result);
  
  WRITE: process (clock_clk, reset_reset)
  begin
    if reset_reset = '1' then
      write_state <= Idle;
    elsif rising_edge(clock_clk) then
      case write_state is
        when StartAsserted =>
          start <= '0';
          write_state <= Idle;
        when Idle =>
          if avs_s0_write = '1' then
            case avs_s0_address is
              when "0000" => -- writing CSR asserts start  for one clock period
                start <= '1';
                write_state <= StartAsserted;
              when others => NULL;
            end case;
          end if;
        end case;
      end if;
    end process;
  READ: process (clock_clk)
  begin
    if rising_edge(clock_clk) then
      if avs_s0_read = '1' then
        case avs_s0_address is
          when "0000" => avs_s0_readdata <= "0000000000000000000000000000000" & rdy;
                         -- when reading CSR, bit 0 is rdy
          when "0001" => avs_s0_readdata <= std_logic_vector(to_unsigned(result,avs_s0_readdata'length));
          when others => null;
          end case;
        end if;
      end if;
    end process;
  end architecture;
