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
  signal params_0059n : caml_int;
  signal params_0060acc : caml_int;
  signal params_0060n : caml_int;
  
  type state_0068_T is (H_0063Q_0062, H_0064IDLE, H_0065FACT, H_0066AUX, 
                        H_0067DSL_Q_0057);
  signal state_0068 : state_0068_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0068 <= H_0063Q_0062;
        params_0059n <= to_signed(0,31);
        params_0060acc <= to_signed(0,31);
        params_0060n <= to_signed(0,31);
    elsif rising_edge(clk) then
      case state_0068 is
        when H_0063Q_0062 =>
          state_0068 <= H_0064IDLE;
        
        when H_0064IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0059n <= n;
            state_0068 <= H_0065FACT;
          else
            rdy <= '1';
            state_0068 <= H_0064IDLE;
          end if;
        
        when H_0065FACT =>
          params_0060n <= params_0059n;
          params_0060acc <= to_signed(1,31);
          state_0068 <= H_0066AUX;
        
        when H_0066AUX =>
          state_0068 <= H_0067DSL_Q_0057;
        
        when H_0067DSL_Q_0057 =>
          if params_0060n <= to_signed(0,31) then
            result <= params_0060acc;
            state_0068 <= H_0064IDLE;
          else
            params_0060n <= params_0060n - to_signed(1,31);
            params_0060acc <= RESIZE((params_0060n * params_0060acc),31);
            state_0068 <= H_0066AUX;
          end if;
        
      end case;
    end if;
  end process;
  
end architecture;
