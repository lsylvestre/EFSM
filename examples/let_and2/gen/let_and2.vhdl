library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity let_and2 is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal start : in std_logic;
       signal result : out integer;
       signal rdy : out std_logic);
end entity;
architecture RTL of let_and2 is
  signal start_2 : boolean;
  signal rdy_51 : boolean;
  signal rdy_50 : boolean;
  signal r_61 : integer;
  signal r_60 : integer;
  signal y : integer;
  signal x : integer;
  
  type state_29_T is (LEVEL_20Q_11, LEVEL_21IDLE_10, LEVEL_21WAIT_40, 
                      LEVEL_22Q_70);
  signal state_29 : state_29_T;
  type state_30_T is (LEVEL_23Q_15, LEVEL_24IDLE_11, LEVEL_24WAIT_41, 
                      LEVEL_25Q_71);
  signal state_30 : state_30_T;
  type state_31_T is (LEVEL_26Q_19, LEVEL_27IDLE, LEVEL_28TOP_3, 
                      LEVEL_28WAIT_4);
  signal state_31 : state_31_T;
begin
  process(reset,clk) begin
    if reset = '1' then
      state_29 <= LEVEL_20Q_11;
    elsif rising_edge(clk) then
      case state_29 is
        when LEVEL_20Q_11 =>
          if true then
            
            state_29 <= LEVEL_21IDLE_10;
          else NULL;
          end if;
        when LEVEL_21IDLE_10 =>
          if true then
            rdy_50 <= true;
            state_29 <= LEVEL_21WAIT_40;
          else NULL;
          end if;
        when LEVEL_21WAIT_40 =>
          if start_2 then
            rdy_50 <= false;
            state_29 <= LEVEL_22Q_70;
          else NULL;
          end if;
        when LEVEL_22Q_70 =>
          if true then
            r_60 <= 1;
            state_29 <= LEVEL_21IDLE_10;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_30 <= LEVEL_23Q_15;
    elsif rising_edge(clk) then
      case state_30 is
        when LEVEL_23Q_15 =>
          if true then
            
            state_30 <= LEVEL_24IDLE_11;
          else NULL;
          end if;
        when LEVEL_24IDLE_11 =>
          if true then
            rdy_51 <= true;
            state_30 <= LEVEL_24WAIT_41;
          else NULL;
          end if;
        when LEVEL_24WAIT_41 =>
          if start_2 then
            rdy_51 <= false;
            state_30 <= LEVEL_25Q_71;
          else NULL;
          end if;
        when LEVEL_25Q_71 =>
          if true then
            r_61 <= 2;
            state_30 <= LEVEL_24IDLE_11;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_31 <= LEVEL_26Q_19;
        y <= 0;
        x <= 0;
    elsif rising_edge(clk) then
      case state_31 is
        when LEVEL_26Q_19 =>
          if true then
            
            state_31 <= LEVEL_27IDLE;
          else NULL;
          end if;
        when LEVEL_27IDLE =>
          if start /= '1' then
            rdy <= '1';
            state_31 <= LEVEL_27IDLE;
          elsif start = '1' then
            rdy <= '0';
            start_2 <= true;
            state_31 <= LEVEL_28TOP_3;
          else NULL;
          end if;
        when LEVEL_28TOP_3 =>
          if true then
            start_2 <= false;
            state_31 <= LEVEL_28WAIT_4;
          else NULL;
          end if;
        when LEVEL_28WAIT_4 =>
          if rdy_50 and (rdy_51 and true) then
            x <= r_60;
            y <= r_61;
            result <= x + y;
            state_31 <= LEVEL_27IDLE;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  