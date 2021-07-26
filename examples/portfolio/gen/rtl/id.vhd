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
  
  type state_0007_T is (H_0005Q_0004, H_0006IDLE);
  signal state_0007 : state_0007_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0007 <= H_0005Q_0004;
    elsif rising_edge(clk) then
      case state_0007 is
        when H_0005Q_0004 =>
          state_0007 <= H_0006IDLE;
        
        when H_0006IDLE =>
          if start = '1' then
            rdy <= '0';
            result <= x;
            state_0007 <= H_0006IDLE;
          else
            rdy <= '1';
            state_0007 <= H_0006IDLE;
          end if;
        
      end case;
    end if;
  end process;
  
end architecture;
