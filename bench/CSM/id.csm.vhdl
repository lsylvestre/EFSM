-- ./compile -csm bench/CSM/id.csm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic;
       signal start : in std_logic;
       signal dataa : in integer;
       signal result : out integer;
       signal rdy : out std_logic);
end entity;
architecture RTL of Main is
  signal params_2n : integer;
  
  type state_7_T is (LEVEL_4Q_3, LEVEL_5CONTROL_SINK, LEVEL_6ID);
  signal state_7 : state_7_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_7 <= LEVEL_4Q_3;
        params_2n <= 0;
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
            params_2n <= dataa;
            state_7 <= LEVEL_6ID;
          else NULL;
          end if;
        when LEVEL_6ID =>
          if true then
            result <= params_2n + 1;
            state_7 <= LEVEL_5CONTROL_SINK;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;