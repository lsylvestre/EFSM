library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_gcd.all;

entity gcd is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal a : in caml_int;
       signal b : in caml_int;
       signal start : in std_logic;
       signal params_0031acc : out caml_int;
       signal params_0031n : out caml_int;
       signal rdy : out std_logic := '0';
       signal result : out caml_int);
end entity;
architecture RTL of gcd is
  
  type state_0040_T is (H_0035Q_0034, H_0036IDLE, H_0037AUX, 
                        H_0038DSL_Q_0029, H_0039DSL_Q_0028);
  signal state_0040 : state_0040_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0040 <= H_0035Q_0034;
    elsif rising_edge(clk) then
      case state_0040 is
        when H_0035Q_0034 =>
          state_0040 <= H_0036IDLE;
        
        when H_0036IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0031n <= a;
            params_0031acc <= b;
            state_0040 <= H_0037AUX;
          else
            rdy <= '1';
            state_0040 <= H_0036IDLE;
          end if;
        
        when H_0037AUX =>
          state_0040 <= H_0038DSL_Q_0029;
        
        when H_0038DSL_Q_0029 =>
          if a > b then
            params_0031n <= a - b;
            params_0031acc <= b;
            state_0040 <= H_0037AUX;
          else
            state_0040 <= H_0039DSL_Q_0028;
          end if;
        
        when H_0039DSL_Q_0028 =>
          if a < b then
            params_0031n <= a;
            params_0031acc <= b - a;
            state_0040 <= H_0037AUX;
          else
            result <= a;
            state_0040 <= H_0036IDLE;
          end if;
        
      end case;
    end if;
  end process;
  
end architecture;
