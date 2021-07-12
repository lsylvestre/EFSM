-- ./compile -csm bench/CSM/let_and/let_and2.csm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main is
  port(signal clock : in std_logic;
       signal reset : in std_logic;
       signal start_2 : in boolean;
       signal rdy_52 : in boolean;
       signal rdy_51 : in boolean;
       signal r_62 : in integer;
       signal r_61 : in integer;
       signal start_2 : out boolean;
       signal result : out integer;
       signal rdy_51 : out boolean;
       signal rdy_50 : out boolean;
       signal r_61 : out integer;
       signal r_60 : out integer);
end entity;
architecture RTL of Main is
  signal y : integer;
  signal x : integer;
  
  type state_28_T is (LEVEL_21Q_70, LEVEL_20IDLE_10, LEVEL_20WAIT_40, 
                      LEVEL_19Q_11);
  signal state_28 : state_28_T;
  type state_29_T is (LEVEL_24Q_71, LEVEL_23IDLE_11, LEVEL_23WAIT_41, 
                      LEVEL_22Q_15);
  signal state_29 : state_29_T;
  type state_30_T is (LEVEL_27TOP_3, LEVEL_27WAIT_4, LEVEL_26CONTROL_SINK, 
                      LEVEL_25Q_18);
  signal state_30 : state_30_T;
begin
  process(reset,clock) begin
    if reset = '1' then
      state_28 <= LEVEL_21Q_70;
    elsif rising_edge(clock) then
      case state_28 is
        when LEVEL_21Q_70 =>
          if true then
            r_60 <= 1;
            state_28 <= LEVEL_20IDLE_10;
          else NULL;
          end if;
        when LEVEL_20IDLE_10 =>
          if true then
            rdy_50 <= true;
            state_28 <= LEVEL_20WAIT_40;
          else NULL;
          end if;
        when LEVEL_20WAIT_40 =>
          if start_2 then
            rdy_50 <= false;
            state_28 <= LEVEL_21Q_70;
          else NULL;
          end if;
        when LEVEL_19Q_11 =>
          if true then
            
            state_28 <= LEVEL_20IDLE_10;
          else NULL;
          end if;
      end case;
    end if;
  end process;
process(reset,clock) begin
  if reset = '1' then
    state_29 <= LEVEL_24Q_71;
  elsif rising_edge(clock) then
    case state_29 is
      when LEVEL_24Q_71 =>
        if true then
          r_61 <= 2;
          state_29 <= LEVEL_23IDLE_11;
        else NULL;
        end if;
      when LEVEL_23IDLE_11 =>
        if true then
          rdy_51 <= true;
          state_29 <= LEVEL_23WAIT_41;
        else NULL;
        end if;
      when LEVEL_23WAIT_41 =>
        if start_2 then
          rdy_51 <= false;
          state_29 <= LEVEL_24Q_71;
        else NULL;
        end if;
      when LEVEL_22Q_15 =>
        if true then
          
          state_29 <= LEVEL_23IDLE_11;
        else NULL;
        end if;
    end case;
  end if;
end process;
process(reset,clock) begin
  if reset = '1' then
    state_30 <= LEVEL_27TOP_3;
      y <= 0;
      x <= 0;
  elsif rising_edge(clock) then
    case state_30 is
      when LEVEL_27TOP_3 =>
        if true then
          start_2 <= false;
          state_30 <= LEVEL_27WAIT_4;
        else NULL;
        end if;
      when LEVEL_27WAIT_4 =>
        if rdy_51 and rdy_52 and true then
          x <= r_61;
          y <= r_62;
          result <= x + y;
          state_30 <= LEVEL_26CONTROL_SINK;
        else NULL;
        end if;
      when LEVEL_26CONTROL_SINK => NULL;
      when LEVEL_25Q_18 =>
        if true then
          start_2 <= true;
          state_30 <= LEVEL_27TOP_3;
        else NULL;
        end if;
    end case;
  end if;end process;
end architecture;