-- ./compile -csm bench/CSM/fact.csm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic;
       signal params_2acc : in integer;
       signal result : out integer);
end entity;
architecture RTL of Main is
  signal n : integer;
  signal acc : integer;
  type state_7_T is (LEVEL_6AUX, LEVEL_5FACT, LEVEL_4Q_3);
  signal state_7 : state_7_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_7 <= LEVEL_6AUX;
        n <= 0;
        acc <= 0;
    elsif rising_edge(clock) then
      case state_7 is
        when LEVEL_6AUX =>
          if n <= 0 then
            result <= params_2acc;
            state_7 <= CONTROL_SINK;
          elsif n > 0 then
            n <= n - 1;
            acc <= n * acc;
            state_7 <= CONTROL_SINK;
          else NULL;
          end if;
        when LEVEL_5FACT =>
          if true then
            n <= n;
            acc <= 1;
            state_7 <= LEVEL_6AUX;
          else NULL;
          end if;
        when LEVEL_4Q_3 =>
          if true then
            n <= 42;
            state_7 <= LEVEL_5FACT;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;