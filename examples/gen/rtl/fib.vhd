library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_fib.all;

entity fib is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal n : in caml_int;
       signal start : in std_logic;
       signal rdy : out std_logic := '0';
       signal result : out caml_int);
end entity;
architecture RTL of fib is
  signal params_0071n : caml_int;
  signal params_0072a : caml_int;
  signal params_0072b : caml_int;
  signal params_0072n : caml_int;
  
  type state_0080_T is (H_0075Q_0074, H_0076IDLE, H_0077FIB, H_0078AUX, 
                        H_0079DSL_Q_0069);
  signal state_0080 : state_0080_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0080 <= H_0075Q_0074;
        params_0071n <= to_signed(0,31);
        params_0072a <= to_signed(0,31);
        params_0072b <= to_signed(0,31);
        params_0072n <= to_signed(0,31);
    elsif rising_edge(clk) then
      case state_0080 is
        when H_0075Q_0074 =>
          state_0080 <= H_0076IDLE;
        
        when H_0076IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0071n <= n;
            state_0080 <= H_0077FIB;
          else
            rdy <= '1';
            state_0080 <= H_0076IDLE;
          end if;
        
        when H_0077FIB =>
          params_0072n <= params_0071n;
          params_0072a <= to_signed(1,31);
          params_0072b <= to_signed(1,31);
          state_0080 <= H_0078AUX;
        
        when H_0078AUX =>
          state_0080 <= H_0079DSL_Q_0069;
        
        when H_0079DSL_Q_0069 =>
          if params_0072n <= to_signed(0,31) then
            result <= params_0072a;
            state_0080 <= H_0076IDLE;
          else
            params_0072n <= params_0072n - to_signed(1,31);
            params_0072a <= params_0072b;
            params_0072b <= params_0072a + params_0072b;
            state_0080 <= H_0078AUX;
          end if;
        
      end case;
    end if;
  end process;
  
end architecture;
