-- ./compile -hsm bench/HSM/fact.hsm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic;
       signal a : in integer;
       signal r : out integer);
end entity;
architecture RTL of Main is
  signal x : integer;
  signal n : integer;
  
  type state_3_T is (LEVEL_1FACT, LEVEL_1K, LEVEL_2AUX);
  signal state_3 : state_3_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_3 <= LEVEL_1FACT;
        x <= 0;
        n <= 0;
    elsif rising_edge(clock) then
      case state_3 is
        when LEVEL_1FACT =>
          if true then
            n <= a;
            x <= 1;
            state_3 <= LEVEL_2AUX;
          else NULL;
          end if;
        when LEVEL_1K => NULL;
        when LEVEL_2AUX =>
          if n <= 0 then
            r <= x;
            n <= n;
            state_3 <= LEVEL_1K;
          elsif n > 0 then
            n <= n - 1;
            x <= n * x;
            state_3 <= LEVEL_2AUX;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;