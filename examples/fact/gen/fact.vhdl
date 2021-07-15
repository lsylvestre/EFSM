library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fact is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal start : in std_logic;
       signal dataa : in integer;
       signal result : out integer;
       signal rdy : out std_logic);
end entity;
architecture RTL of fact is
  signal params_3n : integer;
  signal params_3acc : integer;
  signal params_2n : integer;
  
  type state_9_T is (LEVEL_5Q_4, LEVEL_6IDLE, LEVEL_7FACT, LEVEL_8AUX);
  signal state_9 : state_9_T;
begin
  process(reset,clk) begin
    if reset = '1' then
      state_9 <= LEVEL_5Q_4;
        params_3n <= 0;
        params_3acc <= 0;
        params_2n <= 0;
    elsif rising_edge(clk) then
      case state_9 is
        when LEVEL_5Q_4 =>
          if true then
            
            state_9 <= LEVEL_6IDLE;
          else NULL;
          end if;
        when LEVEL_6IDLE =>
          if start /= '1' then
            rdy <= '1';
            state_9 <= LEVEL_6IDLE;
          elsif start = '1' then
            rdy <= '0';
            params_2n <= dataa;
            state_9 <= LEVEL_7FACT;
          else NULL;
          end if;
        when LEVEL_7FACT =>
          if true then
            params_3n <= params_2n;
            params_3acc <= 1;
            state_9 <= LEVEL_8AUX;
          else NULL;
          end if;
        when LEVEL_8AUX =>
          if params_3n <= 0 then
            result <= params_3acc;
            state_9 <= LEVEL_6IDLE;
          elsif params_3n > 0 then
            params_3n <= params_3n - 1;
            params_3acc <= params_3n * params_3acc;
            state_9 <= LEVEL_8AUX;
          else NULL;
          end if;
      end case;
    end if;
  end process;
end architecture;