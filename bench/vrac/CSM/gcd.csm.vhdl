-- ./compile -csm bench/CSM/gcd.csm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gcd is
  port(signal clock : in std_logic;
       signal reset : in std_logic;
       signal start : in std_logic;
       signal b : in integer;
       signal a : in integer;
       signal result : out integer;
       signal rdy : out std_logic);
end entity;
architecture RTL of gcd is
  signal params_2b : integer;
  signal params_2a : integer;
  
  type state_7_T is (LEVEL_4Q_3, LEVEL_5CONTROL_SINK, LEVEL_6GCD);
  signal state_7 : state_7_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_7 <= LEVEL_4Q_3;
        params_2b <= 0;
        params_2a <= 0;
    elsif rising_edge(clock) then
      case state_7 is
        when LEVEL_4Q_3 =>
          if true then
            
            state_7 <= LEVEL_5CONTROL_SINK;
          else NULL;
          end if;
        when LEVEL_5CONTROL_SINK =>
          if start /= '1' then
            rdy <= '1';
            state_7 <= LEVEL_5CONTROL_SINK;
          elsif start = '1' then
            rdy <= '0';
            params_2a <= a;
            params_2b <= b;
            state_7 <= LEVEL_6GCD;
          else NULL;
          end if;
        when LEVEL_6GCD =>
          if params_2a = params_2b then
            result <= params_2a;
            state_7 <= LEVEL_5CONTROL_SINK;
          elsif params_2a > params_2b then
            params_2a <= params_2a - params_2b;
            params_2b <= params_2b;
            state_7 <= LEVEL_6GCD;
          elsif params_2a < params_2b then
            params_2a <= params_2a;
            params_2b <= params_2b - params_2a;
            state_7 <= LEVEL_6GCD;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;