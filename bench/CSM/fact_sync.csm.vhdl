-- ./compile -csm bench/CSM/fact_sync.csm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic;
       signal start : in boolean;
       signal dataa : in integer;
       signal result : out integer;
       signal rdy : out boolean);
end entity;
architecture RTL of Main is
  signal params_4n : integer;
  signal params_4acc : integer;
  signal params_3n : integer;
  signal params_2n : integer;
  
  type state_11_T is (LEVEL_10MAIN, LEVEL_9AUX, LEVEL_8FACT, 
                      LEVEL_7CONTROL_SINK, LEVEL_6Q_5);
  signal state_11 : state_11_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_11 <= LEVEL_10MAIN;
        params_4n <= 0;
        params_4acc <= 0;
        params_3n <= 0;
        params_2n <= 0;
    elsif rising_edge(clock) then
      case state_11 is
        when LEVEL_10MAIN =>
          if start then
            rdy <= false;
            params_2n <= params_3n;
            state_11 <= LEVEL_8FACT;
          elsif not start then
            params_3n <= params_3n;
            state_11 <= LEVEL_8FACT;
          else NULL;
          end if;
        when LEVEL_9AUX =>
          if params_4n <= 0 then
            result <= params_4acc;
            state_11 <= LEVEL_7CONTROL_SINK;
          elsif params_4n > 0 then
            params_4n <= params_4n - 1;
            params_4acc <= params_4n * params_4acc;
            state_11 <= LEVEL_7CONTROL_SINK;
          else NULL;
          end if;
        when LEVEL_8FACT =>
          if true then
            params_4n <= params_2n;
            params_4acc <= 1;
            state_11 <= LEVEL_9AUX;
          else NULL;
          end if;
        when LEVEL_7CONTROL_SINK => NULL;
        when LEVEL_6Q_5 =>
          if true then
            rdy <= true;
            params_3n <= dataa;
            state_11 <= LEVEL_10MAIN;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;