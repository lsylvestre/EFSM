-- ./compile -csm bench/CSM/let_and/let_and1.csm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic;
       signal result : out integer);
end entity;
architecture RTL of Main is
  signal x : integer;
  type state_7_T is (LEVEL_6TMP_1, LEVEL_5CONTROL_SINK, LEVEL_4Q_3);
  signal state_7 : state_7_T;
  begin
    process(reset,clock) begin
      if reset = '1' then
        state_7 <= LEVEL_6TMP_1;
          x <= 0;
      elsif rising_edge(clock) then
        case state_7 is
          when LEVEL_6TMP_1 =>
            if true then
              result <= x + 1;
              state_7 <= LEVEL_5CONTROL_SINK;
            else NULL;
            end if;
          when LEVEL_5CONTROL_SINK => NULL;
          when LEVEL_4Q_3 =>
            if true then
              x <= 42;
              state_7 <= LEVEL_6TMP_1;
            else NULL;
            end if;
        end case;
      end if;
    end process;
  end architecture;