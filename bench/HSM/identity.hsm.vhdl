-- ./compile -hsm bench/HSM/identity.hsm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic);
end entity;
architecture RTL of Main is
  
  type state_2_T is (LEVEL_1Q);
  signal state_2 : state_2_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_2 <= LEVEL_1Q;
    elsif rising_edge(clock) then
      case state_2 is
        when LEVEL_1Q =>
          if true then
            
            state_2 <= LEVEL_1Q;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;