-- ./compile -hsm bench/HSM/identity.hsm 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal CLOCK : in std_logic;
       signal RESET : in std_logic);
end entity;
architecture RTL of Main is
  type state_2_T is (level_1q);
  signal state_2 : state_2_T;
begin
  process(RESET,CLOCK) begin
    if RESET = '1' then
      state_2 <= level_1q;
    elsif rising_edge(CLOCK) then
      case state_2 is
        when level_1q =>
          if true then
            
            state_2 <= level_1q;
          else NULL;
          end if;
    end case;
  end if;
end process;
end architecture;