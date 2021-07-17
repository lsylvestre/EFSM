library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add_42_fact is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal start : in std_logic;
       signal a : in integer;
       signal result : out integer;
       signal rdy : out std_logic);
end entity;
architecture RTL of add_42_fact is
  signal rdy_90 : boolean;
  signal r_100 : integer;
  signal rdy_91 : boolean;
  signal r_101 : integer;
  signal params_21n : integer;
  signal params_21acc : integer;
  signal params_20n : integer;
  signal params_18a : integer;
  signal start_6 : boolean;
  signal dsl_2 : integer;
  signal dsl_1 : integer;
  
  type state_41_T is (LEVEL_28Q_15, LEVEL_29IDLE_50, LEVEL_29WAIT_80, 
                      LEVEL_30Q_110);
  signal state_41 : state_41_T;
  type state_42_T is (LEVEL_31Q_23, LEVEL_32IDLE_51, LEVEL_32WAIT_81, 
                      LEVEL_33Q_111, LEVEL_34DSL_Q_4, LEVEL_35FACT, 
                      LEVEL_36AUX, LEVEL_37DSL_Q_3);
  signal state_42 : state_42_T;
  type state_43_T is (LEVEL_38Q_27, LEVEL_39IDLE, LEVEL_40TOP_7, 
                      LEVEL_40WAIT_8);
  signal state_43 : state_43_T;
begin
  process(reset,clk) begin
    if reset = '1' then
      state_41 <= LEVEL_28Q_15;
        rdy_90 <= false;
        r_100 <= 0;
    elsif rising_edge(clk) then
      case state_41 is
        when LEVEL_28Q_15 =>
          if true then
            
            state_41 <= LEVEL_29IDLE_50;
          else NULL;
          end if;
        when LEVEL_29IDLE_50 =>
          if true then
            rdy_90 <= true;
            state_41 <= LEVEL_29WAIT_80;
          else NULL;
          end if;
        when LEVEL_29WAIT_80 =>
          if start_6 then
            rdy_90 <= false;
            state_41 <= LEVEL_30Q_110;
          else NULL;
          end if;
        when LEVEL_30Q_110 =>
          if true then
            r_100 <= 42;
            state_41 <= LEVEL_29IDLE_50;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_42 <= LEVEL_31Q_23;
        rdy_91 <= false;
        r_101 <= 0;
        params_21n <= 0;
        params_21acc <= 0;
        params_20n <= 0;
        params_18a <= 0;
    elsif rising_edge(clk) then
      case state_42 is
        when LEVEL_31Q_23 =>
          if true then
            
            state_42 <= LEVEL_32IDLE_51;
          else NULL;
          end if;
        when LEVEL_32IDLE_51 =>
          if true then
            rdy_91 <= true;
            state_42 <= LEVEL_32WAIT_81;
          else NULL;
          end if;
        when LEVEL_32WAIT_81 =>
          if start_6 then
            rdy_91 <= false;
            params_18a <= a;
            state_42 <= LEVEL_33Q_111;
          else NULL;
          end if;
        when LEVEL_33Q_111 =>
          if true then
            
            state_42 <= LEVEL_34DSL_Q_4;
          else NULL;
          end if;
        when LEVEL_34DSL_Q_4 =>
          if params_18a > 0 then
            params_20n <= params_18a;
            state_42 <= LEVEL_35FACT;
          elsif not (params_18a > 0) then
            r_101 <= 0;
            state_42 <= LEVEL_32IDLE_51;
          else NULL;
          end if;
        when LEVEL_35FACT =>
          if true then
            params_21n <= params_20n;
            params_21acc <= 1;
            state_42 <= LEVEL_36AUX;
          else NULL;
          end if;
        when LEVEL_36AUX =>
          if true then
            
            state_42 <= LEVEL_37DSL_Q_3;
          else NULL;
          end if;
        when LEVEL_37DSL_Q_3 =>
          if params_21n <= 0 then
            r_101 <= params_21acc;
            state_42 <= LEVEL_32IDLE_51;
          elsif not (params_21n <= 0) then
            params_21n <= params_21n - 1;
            params_21acc <= params_21n * params_21acc;
            state_42 <= LEVEL_36AUX;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_43 <= LEVEL_38Q_27;
        start_6 <= false;
        dsl_2 <= 0;
        dsl_1 <= 0;
    elsif rising_edge(clk) then
      case state_43 is
        when LEVEL_38Q_27 =>
          if true then
            
            state_43 <= LEVEL_39IDLE;
          else NULL;
          end if;
        when LEVEL_39IDLE =>
          if start /= '1' then
            rdy <= '1';
            state_43 <= LEVEL_39IDLE;
          elsif start = '1' then
            rdy <= '0';
            start_6 <= true;
            state_43 <= LEVEL_40TOP_7;
          else NULL;
          end if;
        when LEVEL_40TOP_7 =>
          if true then
            start_6 <= false;
            state_43 <= LEVEL_40WAIT_8;
          else NULL;
          end if;
        when LEVEL_40WAIT_8 =>
          if rdy_90 and (rdy_91 and true) then
            dsl_1 <= r_100;
            dsl_2 <= r_101;
            result <= dsl_1 + dsl_2;
            state_43 <= LEVEL_39IDLE;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  
end architecture;
