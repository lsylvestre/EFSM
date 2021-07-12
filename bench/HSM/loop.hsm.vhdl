-- ./compile -hsm bench/HSM/loop.hsm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic;
       signal x : out integer);
end entity;
architecture RTL of Main is
  type state_3_T is (LEVEL_2Q, LEVEL_1F);
  signal state_3 : state_3_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_3 <= LEVEL_2Q;
    elsif rising_edge(clock) then
      case state_3 is
        when LEVEL_2Q =>
          if true then
            x <= 42;
            state_3 <= LEVEL_1F;
          else NULL;
          end if;
        when LEVEL_1F =>
          if true then
            
            state_3 <= LEVEL_1F;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;