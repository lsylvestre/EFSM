library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add8 is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal start : in std_logic;
       signal g : in integer;
       signal f : in integer;
       signal e : in integer;
       signal d : in integer;
       signal c : in integer;
       signal b : in integer;
       signal a : in integer;
       signal result : out integer;
       signal rdy : out std_logic);
end entity;
architecture RTL of add8 is
  
  type state_5_T is (LEVEL_3Q_2, LEVEL_4IDLE);
  signal state_5 : state_5_T;
begin
  process(reset,clk) begin
    if reset = '1' then
      state_5 <= LEVEL_3Q_2;
    elsif rising_edge(clk) then
      case state_5 is
        when LEVEL_3Q_2 =>
          if true then
            
            state_5 <= LEVEL_4IDLE;
          else NULL;
          end if;
        when LEVEL_4IDLE =>
          if start /= '1' then
            rdy <= '1';
            state_5 <= LEVEL_4IDLE;
          elsif start = '1' then
            rdy <= '0';
            result <= a + (b + (c + (d + (e + (f + g)))));
            state_5 <= LEVEL_4IDLE;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;