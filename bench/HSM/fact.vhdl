-- ./compile -hsm bench/HSM/fact.hsm 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal CLOCK : in std_logic;
       signal RESET : in std_logic;
       signal a : in integer;
       signal r : out integer);
end entity;
architecture RTL of Main is
  signal x : integer;
  signal n : integer;
  type state_3_T is (level_2aux,level_1fact,level_1k);
  signal state_3 : state_3_T;
begin
  process(RESET,CLOCK) begin
    if RESET = '1' then
      state_3 <= level_2aux;
        x <= 0;
        n <= 0;
    elsif rising_edge(CLOCK) then
      case state_3 is
        when level_1k =>
          if n <= 0 then
            r <= x;
            n <= n;
            state_3 <= level_1k;
          elsif n > 0 then
            n <= n - 1;
            x <= n * x;
            state_3 <= level_2aux;
          else NULL;
          end if;
      when level_2aux =>
        if true then
          n <= a;
          x <= 1;
          state_3 <= level_2aux;
        else NULL;
        end if;
    when level_1k => NULL;
  end case;
end if;end process;
end architecture;
