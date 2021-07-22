-- AVALON MM-slave wrapper around the core ref_fact IP
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.misc_types.all;

entity avs_ref_fact is
  port (avs_s0_address : in std_logic_vector(3 downto 0)  := (others => '0');
          -- 0000  : control/status register (b1=start, b0=rdy)
          -- 0001  : r register
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
        avm_rm_waitrequest : in std_logic;
        avm_rm_response: in std_logic_vector(1 downto 0));
end entity;

architecture rtl of avs_ref_fact is
  component ref_fact is
    port (signal clk : in std_logic;
          signal reset : in std_logic;
          signal start : in std_logic;
          signal rdy : out std_logic;
          signal caml_heap_base   : in std_logic_vector(31 downto 0);
          signal avm_rm_address   : out std_logic_vector(31 downto 0);
          signal avm_rm_read      : out std_logic;
          signal avm_rm_readdata  : in std_logic_vector(31 downto 0);
          signal avm_rm_waitrequest : in std_logic;
          signal r: in caml_ptr;
          signal result: out caml_int);
  end component;
  
  signal r: caml_ptr;
  signal result: caml_int;
  signal start: std_logic;
signal rdy: std_logic;type write_state_t is (Idle, StartAsserted);
signal write_state: write_state_t;
signal caml_heap_base : std_logic_vector(31 downto 0);
begin
  ref_fact_CC : component ref_fact
    port map (clk => clock_clk,
              reset => reset_reset,
              start => start,
              rdy => rdy,
              r => r,
              caml_heap_base => caml_heap_base,
              avm_rm_waitrequest => avm_rm_waitrequest,
              avm_rm_readdata => avm_rm_readdata,
              result => result,
              avm_rm_read => avm_rm_read,
              avm_rm_address => avm_rm_address);
  
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
              when "0001" => r <= avs_s0_writedata;
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
          when "0000" => avs_s0_readdata <= "0000000000000000000000000000000" & rdy;
                         -- when reading CSR, bit 0 is rdy
          when "0001" => avs_s0_readdata <= r;
          when "0010" => avs_s0_readdata <= "0" & std_logic_vector(result);
          when others => null;
          end case;
        end if;
      end if;
    end process;
  end architecture;
