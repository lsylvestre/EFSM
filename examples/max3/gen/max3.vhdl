library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity max3 is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal start : in std_logic;
       signal c : in integer;
       signal b : in integer;
       signal a : in integer;
       signal result : out integer;
       signal rdy : out std_logic);
end entity;
architecture RTL of max3 is
  signal params_2x3 : integer;
  signal params_2x2 : integer;
  signal params_2x1 : integer;
  
  type state_7_T is (LEVEL_4Q_3, LEVEL_5IDLE, LEVEL_6MAX3);
  signal state_7 : state_7_T;
begin
  process(reset,clk) begin
    if reset = '1' then
      state_7 <= LEVEL_4Q_3;
        params_2x3 <= 0;
        params_2x2 <= 0;
        params_2x1 <= 0;
    elsif rising_edge(clk) then
      case state_7 is
        when LEVEL_4Q_3 =>
          if true then
            
            state_7 <= LEVEL_5IDLE;
          else NULL;
          end if;
        when LEVEL_5IDLE =>
          if start /= '1' then
            rdy <= '1';
            state_7 <= LEVEL_5IDLE;
          elsif start = '1' then
            rdy <= '0';
            params_2x1 <= a;
            params_2x2 <= b;
            params_2x3 <= c;
            state_7 <= LEVEL_6MAX3;
          else NULL;
          end if;
        when LEVEL_6MAX3 =>
          if (params_2x1 >= params_2x2) and (params_2x1 >= params_2x3) then
            result <= params_2x1;
            state_7 <= LEVEL_5IDLE;
          elsif (params_2x2 >= params_2x1) and (params_2x2 >= params_2x3) then
            result <= params_2x2;
            state_7 <= LEVEL_5IDLE;
          elsif (params_2x3 >= params_2x1) and (params_2x3 >= params_2x2) then
            result <= params_2x3;
            state_7 <= LEVEL_5IDLE;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;