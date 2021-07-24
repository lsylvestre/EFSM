library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_id.all;

entity id is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal start : in std_logic;
       signal x : in caml_value;
       signal rdy : out std_logic := '0';
       signal result : out caml_value);
end entity;
architecture RTL of id is
  signal params_0095x : caml_value;
  
  type state_0100_T is (H_0097Q_0096, H_0098IDLE, H_0099ID);
  signal state_0100 : state_0100_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0100 <= H_0097Q_0096;
        params_0095x <= X"00000000";
    elsif rising_edge(clk) then
      case state_0100 is
        when H_0097Q_0096 =>
          state_0100 <= H_0098IDLE;
        
        when H_0098IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0095x <= x;
            state_0100 <= H_0099ID;
          else
            rdy <= '1';
            state_0100 <= H_0098IDLE;
          end if;
        
        when H_0099ID =>
          result <= params_0095x;
          state_0100 <= H_0098IDLE;
        
      end case;
    end if;
  end process;
  
end architecture;
