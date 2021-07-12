-- ./compile -csm bench/PSM/fact.psm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic;
       signal x : in integer;
       signal params_3x : out integer);
end entity;
architecture RTL of Main is
  signal params_4n : integer;
  signal params_4acc : integer;
  signal params_2n : integer;
  
  type state_10_T is (LEVEL_9AUX, LEVEL_8FACT, LEVEL_8K, 
                      LEVEL_7CONTROL_SINK, LEVEL_6Q_5);
  signal state_10 : state_10_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_10 <= LEVEL_9AUX;
        params_4n <= 0;
        params_4acc <= 0;
        params_2n <= 0;
    elsif rising_edge(clock) then
      case state_10 is
        when LEVEL_9AUX =>
          if params_4n <= 0 then
            params_3x <= params_4acc;
            state_10 <= LEVEL_8K;
          elsif params_4n > 0 then
            params_4n <= params_4n - 1;
            params_4acc <= params_4n * x;
            state_10 <= LEVEL_8K;
          else NULL;
          end if;
        when LEVEL_8FACT =>
          if true then
            params_4n <= params_2n;
            params_4acc <= 1;
            state_10 <= LEVEL_9AUX;
          else NULL;
          end if;
        when LEVEL_8K => NULL;
        when LEVEL_7CONTROL_SINK => NULL;
        when LEVEL_6Q_5 =>
          if true then
            params_2n <= 42;
            state_10 <= LEVEL_8FACT;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;