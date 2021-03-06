-- ./compile -psm bench/PSM/loop.psm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic);
end entity;
architecture RTL of Main is
  signal params_1x : integer;
  
  type state_5_T is (LEVEL_3Q_2, LEVEL_4F);
  signal state_5 : state_5_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_5 <= LEVEL_3Q_2;
        params_1x <= 0;
    elsif rising_edge(clock) then
      case state_5 is
        when LEVEL_3Q_2 =>
          if true then
            params_1x <= 42;
            state_5 <= LEVEL_4F;
          else NULL;
          end if;
        when LEVEL_4F =>
          if true then
            params_1x <= params_1x;
            state_5 <= LEVEL_4F;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;