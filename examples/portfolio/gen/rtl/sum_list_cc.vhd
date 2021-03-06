-- AVALON MM-slave wrapper around the core sum_list IP
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.misc_sum_list.all;

entity avs_sum_list is
  port (avs_s0_address : in std_logic_vector(3 downto 0)  := (others => '0');
          -- 0000  : control/status register (b1=start, b0=rdy)
          -- 0001  : l register
          -- 0010  : result register
          -- 0011  : caml_heap_base register
          
        avs_s0_read        : in  std_logic                     := '0';
        avs_s0_readdata    : out std_logic_vector(31 downto 0);
        avs_s0_write       : in  std_logic                     := '0';
        avs_s0_writedata   : in  std_logic_vector(31 downto 0) := (others => '0');
        clock_clk          : in  std_logic                     := '0';
        reset_reset        : in  std_logic                     := '0';
        
        -- READ MASTER INTERFACE
        avm_rm_address   : out std_logic_vector(31 downto 0);
        avm_rm_read      : out std_logic;
        avm_rm_readdata  : in std_logic_vector(31 downto 0);
        avm_rm_waitrequest : in std_logic
        );
end entity;

architecture rtl of avs_sum_list is
  component sum_list is
    port (signal clk : in std_logic;
          signal reset : in std_logic;
          signal start : in std_logic;
          signal rdy : out std_logic;
          signal caml_heap_base   : in std_logic_vector(31 downto 0);
          signal avm_rm_address   : out std_logic_vector(31 downto 0);
          signal avm_rm_read      : out std_logic;
          signal avm_rm_readdata  : in std_logic_vector(31 downto 0);
          signal avm_rm_waitrequest : in std_logic;
          signal l: in caml_value;
          signal result: out caml_int);
  end component;
  
  signal l: caml_value;
  signal result: caml_int;
  signal start: std_logic;
signal rdy: std_logic;type write_state_t is (Idle, StartAsserted);
signal write_state: write_state_t;
signal caml_heap_base : std_logic_vector(31 downto 0);
begin
  sum_list_CC : component sum_list
    port map (clk => clock_clk,
              reset => reset_reset,
              start => start,
              rdy => rdy,
              avm_rm_readdata => avm_rm_readdata,
              avm_rm_waitrequest => avm_rm_waitrequest,
              caml_heap_base => caml_heap_base,
              l => l,
              avm_rm_address => avm_rm_address,
              avm_rm_read => avm_rm_read,
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
              when "0001" => l <= avs_s0_writedata;
              when "0011" => caml_heap_base <= avs_s0_writedata;
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
          when "0000" => avs_s0_readdata <= X"0000000" & "000" & rdy;
                         -- when reading CSR, bit 0 is rdy
          when "0001" => avs_s0_readdata <= l;
          when "0010" => avs_s0_readdata <= "0" & std_logic_vector(result);
          when others => null;
          end case;
        end if;
      end if;
    end process;
  end architecture;
