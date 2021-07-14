-- ./compile -psm bench/PSM/fact.psm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic;
       signal x : in integer;
       signal params_2x : out integer);
end entity;
architecture RTL of Main is
  signal params_3n : integer;
  signal params_3acc : integer;
  signal params_1n : integer;
  
  type state_8_T is (LEVEL_5Q_4, LEVEL_6FACT, LEVEL_6K, LEVEL_7AUX);
  signal state_8 : state_8_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_8 <= LEVEL_5Q_4;
        params_3n <= 0;
        params_3acc <= 0;
        params_1n <= 0;
    elsif rising_edge(clock) then
      case state_8 is
        when LEVEL_5Q_4 =>
          if true then
            params_1n <= 42;
            state_8 <= LEVEL_6FACT;
          else NULL;
          end if;
        when LEVEL_6FACT =>
          if true then
            params_3n <= params_1n;
            params_3acc <= 1;
            state_8 <= LEVEL_7AUX;
          else NULL;
          end if;
        when LEVEL_6K => NULL;
        when LEVEL_7AUX =>
          if params_3n <= 0 then
            params_2x <= params_3acc;
            state_8 <= LEVEL_6K;
          elsif params_3n > 0 then
            params_3n <= params_3n - 1;
            params_3acc <= params_3n * x;
            state_8 <= LEVEL_7AUX;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;