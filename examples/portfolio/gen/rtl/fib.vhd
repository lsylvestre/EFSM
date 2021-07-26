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
  signal params_0010a : caml_int;
  signal params_0010b : caml_int;
  signal params_0010n : caml_int;
  
  type state_0017_T is (H_0013Q_0012, H_0014IDLE, H_0015AUX, 
                        H_0016DSL_Q_0008);
  signal state_0017 : state_0017_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0017 <= H_0013Q_0012;
        params_0010a <= to_signed(0,31);
        params_0010b <= to_signed(0,31);
        params_0010n <= to_signed(0,31);
    elsif rising_edge(clk) then
      case state_0017 is
        when H_0013Q_0012 =>
          state_0017 <= H_0014IDLE;
        
        when H_0014IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0010n <= n;
            params_0010a <= to_signed(1,31);
            params_0010b <= to_signed(1,31);
            state_0017 <= H_0015AUX;
          else
            rdy <= '1';
            state_0017 <= H_0014IDLE;
          end if;
        
        when H_0015AUX =>
          state_0017 <= H_0016DSL_Q_0008;
        
        when H_0016DSL_Q_0008 =>
          if params_0010n <= to_signed(0,31) then
            result <= params_0010a;
            state_0017 <= H_0014IDLE;
          else
            params_0010n <= params_0010n - to_signed(1,31);
            params_0010a <= params_0010b;
            params_0010b <= params_0010a + params_0010b;
            state_0017 <= H_0015AUX;
          end if;
        
      end case;
    end if;
  end process;
  
end architecture;
