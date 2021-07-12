-- ./compile -csm bench/CSM/fact.csm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic;
       signal result : out integer);
end entity;
architecture RTL of Main is
  signal params_3n : integer;
  signal params_3acc : integer;
  signal params_2n : integer;
  
  type state_9_T is (LEVEL_8AUX, LEVEL_7FACT, LEVEL_6CONTROL_SINK, 
                     LEVEL_5Q_4);
  signal state_9 : state_9_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_9 <= LEVEL_8AUX;
        params_3n <= 0;
        params_3acc <= 0;
        params_2n <= 0;
    elsif rising_edge(clock) then
      case state_9 is
        when LEVEL_8AUX =>
          if params_3n <= 0 then
            result <= params_3acc;
            state_9 <= LEVEL_6CONTROL_SINK;
          elsif params_3n > 0 then
            params_3n <= params_3n - 1;
            params_3acc <= params_3n * params_3acc;
            state_9 <= LEVEL_6CONTROL_SINK;
          else NULL;
          end if;
        when LEVEL_7FACT =>
          if true then
            params_3n <= params_2n;
            params_3acc <= 1;
            state_9 <= LEVEL_8AUX;
          else NULL;
          end if;
        when LEVEL_6CONTROL_SINK => NULL;
        when LEVEL_5Q_4 =>
          if true then
            params_2n <= 42;
            state_9 <= LEVEL_7FACT;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;