-- ./compile -psm bench/PSM/fact.psm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic);
end entity;
architecture RTL of Main is
  signal x : integer;
  signal n : integer;
  signal acc : integer;
  type state_7_T is (LEVEL_6AUX, LEVEL_5FACT, LEVEL_5K, LEVEL_4Q_3);
  signal state_7 : state_7_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_7 <= LEVEL_6AUX;
        x <= 0;
        n <= 0;
        acc <= 0;
    elsif rising_edge(clock) then
      case state_7 is
        when LEVEL_6AUX =>
          if n <= 0 then
            x <= acc;
            state_7 <= LEVEL_5K;
          elsif n > 0 then
            n <= n - 1;
            acc <= n * x;
            state_7 <= LEVEL_5K;
          else NULL;
          end if;
        when LEVEL_5FACT =>
          if true then
            n <= n;
            acc <= 1;
            state_7 <= LEVEL_6AUX;
          else NULL;
          end if;
        when LEVEL_5K => NULL;
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