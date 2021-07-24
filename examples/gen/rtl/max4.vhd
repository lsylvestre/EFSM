library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_max4.all;

entity max4 is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal a : in caml_int;
       signal b : in caml_int;
       signal c : in caml_int;
       signal d : in caml_int;
       signal start : in std_logic;
       signal rdy : out std_logic := '0';
       signal result : out caml_int);
end entity;
architecture RTL of max4 is
  signal params_0249a : caml_int;
  signal params_0249b : caml_int;
  signal r_02440 : caml_int;
  signal rdy_02430 : boolean;
  signal params_0255a : caml_int;
  signal params_0255b : caml_int;
  signal r_02441 : caml_int;
  signal rdy_02431 : boolean;
  signal dsl_0234 : caml_int;
  signal dsl_0235 : caml_int;
  signal params_0259a : caml_int;
  signal params_0259b : caml_int;
  signal start_0240 : boolean;
  
  type state_0281_T is (H_0265Q_0251, H_0266IDLE_02390, H_0266WAIT_02420, 
                        H_0267Q_02450, H_0268MAX, H_0269DSL_Q_0237);
  signal state_0281 : state_0281_T;
  
  type state_0282_T is (H_0270Q_0257, H_0271IDLE_02391, H_0271WAIT_02421, 
                        H_0272Q_02451, H_0273MAX, H_0274DSL_Q_0238);
  signal state_0282 : state_0282_T;
  
  type state_0283_T is (H_0275Q_0264, H_0276IDLE, H_0279TOP_0241, 
                        H_0279WAIT_0242, H_0280SEQ_0262, H_0277MAX, 
                        H_0278DSL_Q_0233);
  signal state_0283 : state_0283_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0281 <= H_0265Q_0251;
        params_0249a <= to_signed(0,31);
        params_0249b <= to_signed(0,31);
        r_02440 <= to_signed(0,31);
        rdy_02430 <= false;
    elsif rising_edge(clk) then
      case state_0281 is
        when H_0265Q_0251 =>
          state_0281 <= H_0266IDLE_02390;
        
        when H_0266IDLE_02390 =>
          rdy_02430 <= true;
          state_0281 <= H_0266WAIT_02420;
        
        when H_0266WAIT_02420 =>
          if start_0240 then
            rdy_02430 <= false;
            
            state_0281 <= H_0267Q_02450;
          end if;
        
        when H_0267Q_02450 =>
          params_0249a <= a;
          params_0249b <= b;
          state_0281 <= H_0268MAX;
        
        when H_0268MAX =>
          state_0281 <= H_0269DSL_Q_0237;
        
        when H_0269DSL_Q_0237 =>
          if params_0249a <= params_0249b then
            r_02440 <= params_0249b;
            state_0281 <= H_0266IDLE_02390;
          else
            r_02440 <= params_0249a;
            state_0281 <= H_0266IDLE_02390;
          end if;
        
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_0282 <= H_0270Q_0257;
        params_0255a <= to_signed(0,31);
        params_0255b <= to_signed(0,31);
        r_02441 <= to_signed(0,31);
        rdy_02431 <= false;
    elsif rising_edge(clk) then
      case state_0282 is
        when H_0270Q_0257 =>
          state_0282 <= H_0271IDLE_02391;
        
        when H_0271IDLE_02391 =>
          rdy_02431 <= true;
          state_0282 <= H_0271WAIT_02421;
        
        when H_0271WAIT_02421 =>
          if start_0240 then
            rdy_02431 <= false;
            
            state_0282 <= H_0272Q_02451;
          end if;
        
        when H_0272Q_02451 =>
          params_0255a <= c;
          params_0255b <= d;
          state_0282 <= H_0273MAX;
        
        when H_0273MAX =>
          state_0282 <= H_0274DSL_Q_0238;
        
        when H_0274DSL_Q_0238 =>
          if params_0255a <= params_0255b then
            r_02441 <= params_0255b;
            state_0282 <= H_0271IDLE_02391;
          else
            r_02441 <= params_0255a;
            state_0282 <= H_0271IDLE_02391;
          end if;
        
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_0283 <= H_0275Q_0264;
        dsl_0234 <= to_signed(0,31);
        dsl_0235 <= to_signed(0,31);
        params_0259a <= to_signed(0,31);
        params_0259b <= to_signed(0,31);
        start_0240 <= false;
    elsif rising_edge(clk) then
      case state_0283 is
        when H_0275Q_0264 =>
          state_0283 <= H_0276IDLE;
        
        when H_0276IDLE =>
          if start = '1' then
            rdy <= '0';
            start_0240 <= true;
            state_0283 <= H_0279TOP_0241;
          else
            rdy <= '1';
            state_0283 <= H_0276IDLE;
          end if;
        
        when H_0279TOP_0241 =>
          start_0240 <= false;
          state_0283 <= H_0279WAIT_0242;
        
        when H_0279WAIT_0242 =>
          if rdy_02430 and (rdy_02431 and true) then
            dsl_0234 <= r_02440;
            dsl_0235 <= r_02441;
            
            state_0283 <= H_0280SEQ_0262;
          end if;
        
        when H_0280SEQ_0262 =>
          params_0259a <= dsl_0234;
          params_0259b <= dsl_0235;
          state_0283 <= H_0277MAX;
        
        when H_0277MAX =>
          state_0283 <= H_0278DSL_Q_0233;
        
        when H_0278DSL_Q_0233 =>
          if params_0259a <= params_0259b then
            result <= params_0259b;
            state_0283 <= H_0276IDLE;
          else
            result <= params_0259a;
            state_0283 <= H_0276IDLE;
          end if;
        
      end case;
    end if;
  end process;
  
end architecture;
