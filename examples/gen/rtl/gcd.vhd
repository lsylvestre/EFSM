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
       signal rdy : out std_logic := '0';
       signal result : out caml_int);
end entity;
architecture RTL of gcd is
  signal params_0084a : caml_int;
  signal params_0084b : caml_int;
  
  type state_0093_T is (H_0088Q_0087, H_0089IDLE, H_0090GCD, 
                        H_0091DSL_Q_0082, H_0092DSL_Q_0081);
  signal state_0093 : state_0093_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0093 <= H_0088Q_0087;
        params_0084a <= to_signed(0,31);
        params_0084b <= to_signed(0,31);
    elsif rising_edge(clk) then
      case state_0093 is
        when H_0088Q_0087 =>
          state_0093 <= H_0089IDLE;
        
        when H_0089IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0084a <= a;
            params_0084b <= b;
            state_0093 <= H_0090GCD;
          else
            rdy <= '1';
            state_0093 <= H_0089IDLE;
          end if;
        
        when H_0090GCD =>
          state_0093 <= H_0091DSL_Q_0082;
        
        when H_0091DSL_Q_0082 =>
          if params_0084a > params_0084b then
            params_0084a <= params_0084a - params_0084b;
            params_0084b <= params_0084b;
            state_0093 <= H_0090GCD;
          else
            state_0093 <= H_0092DSL_Q_0081;
          end if;
        
        when H_0092DSL_Q_0081 =>
          if params_0084a < params_0084b then
            params_0084a <= params_0084a;
            params_0084b <= params_0084b - params_0084a;
            state_0093 <= H_0090GCD;
          else
            result <= params_0084a;
            state_0093 <= H_0089IDLE;
          end if;
        
      end case;
    end if;
  end process;
  
end architecture;
