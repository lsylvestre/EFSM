-- ./compile -csm bench/CSM/let_and/let_and1.csm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic;
       signal start : in std_logic;
       signal result : out integer;
       signal rdy : out std_logic);
end entity;
architecture RTL of Main is
  signal x : integer;
  
  type state_8_T is (LEVEL_5Q_4, LEVEL_6CONTROL_SINK, LEVEL_7TMP_1);
  signal state_8 : state_8_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_8 <= LEVEL_5Q_4;
        x <= 0;
    elsif rising_edge(clock) then
      case state_8 is
        when LEVEL_5Q_4 =>
          if true then
            
            state_8 <= LEVEL_6CONTROL_SINK;
          else NULL;
          end if;
        when LEVEL_6CONTROL_SINK =>
          if start /= '1' then
            rdy <= '1';
            state_8 <= LEVEL_6CONTROL_SINK;
          elsif start = '1' then
            rdy <= '0';
            x <= 42;
            state_8 <= LEVEL_7TMP_1;
          else NULL;
          end if;
        when LEVEL_7TMP_1 =>
          if true then
            result <= x + 1;
            state_8 <= LEVEL_6CONTROL_SINK;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;