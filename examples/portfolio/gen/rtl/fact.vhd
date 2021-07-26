library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_fact.all;

entity fact is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal n : in caml_int;
       signal start : in std_logic;
       signal rdy : out std_logic := '0';
       signal result : out caml_int);
end entity;
architecture RTL of fact is
  signal params_0020acc : caml_int;
  signal params_0020n : caml_int;
  
  type state_0027_T is (H_0023Q_0022, H_0024IDLE, H_0025AUX, 
                        H_0026DSL_Q_0018);
  signal state_0027 : state_0027_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0027 <= H_0023Q_0022;
        params_0020acc <= to_signed(0,31);
        params_0020n <= to_signed(0,31);
    elsif rising_edge(clk) then
      case state_0027 is
        when H_0023Q_0022 =>
          state_0027 <= H_0024IDLE;
        
        when H_0024IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0020n <= n;
            params_0020acc <= to_signed(1,31);
            state_0027 <= H_0025AUX;
          else
            rdy <= '1';
            state_0027 <= H_0024IDLE;
          end if;
        
        when H_0025AUX =>
          state_0027 <= H_0026DSL_Q_0018;
        
        when H_0026DSL_Q_0018 =>
          if params_0020n <= to_signed(0,31) then
            result <= params_0020acc;
            state_0027 <= H_0024IDLE;
          else
            params_0020n <= params_0020n - to_signed(1,31);
            params_0020acc <= RESIZE((params_0020n * params_0020acc),31);
            state_0027 <= H_0025AUX;
          end if;
        
      end case;
    end if;
  end process;
  
end architecture;
