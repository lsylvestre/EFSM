library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_sum_list.all;

entity sum_list is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal avm_rm_readdata : in caml_value;
       signal avm_rm_waitrequest : in std_logic;
       signal caml_heap_base : in caml_value;
       signal l : in caml_value;
       signal start : in std_logic;
       signal avm_rm_address : out caml_value;
       signal avm_rm_read : out std_logic := '0';
       signal rdy : out std_logic := '0';
       signal result : out caml_int);
end entity;
architecture RTL of sum_list is
  signal dsl_0295 : caml_value;
  signal dsl_0296 : caml_int;
  signal dsl_0299 : caml_int;
  signal params_0307acc : caml_int;
  signal params_0307l : caml_value;
  signal params_0311tmp_0293 : caml_value;
  signal params_0316tmp_0289 : caml_value;
  signal v_0290 : caml_value;
  signal v_0294 : caml_int;
  
  type state_0336_T is (H_0321Q_0320, H_0322IDLE, H_0323AUX, 
                        H_0324DSL_Q_0302, H_0332GET_0291, H_0333READ_0292, 
                        H_0334DSL_Q_0301, H_0335SEQ_0314, H_0331TMP_0304, 
                        H_0325TMP_0303, H_0327GET_0287, H_0328READ_0288, 
                        H_0329DSL_Q_0298, H_0330SEQ_0319, H_0326TMP_0305);
  signal state_0336 : state_0336_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0336 <= H_0321Q_0320;
        dsl_0295 <= X"00000000";
        dsl_0296 <= to_signed(0,31);
        dsl_0299 <= to_signed(0,31);
        params_0307acc <= to_signed(0,31);
        params_0307l <= X"00000000";
        params_0311tmp_0293 <= X"00000000";
        params_0316tmp_0289 <= X"00000000";
        v_0290 <= X"00000000";
        v_0294 <= to_signed(0,31);
    elsif rising_edge(clk) then
      case state_0336 is
        when H_0321Q_0320 =>
          state_0336 <= H_0322IDLE;
        
        when H_0322IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0307l <= l;
            params_0307acc <= to_signed(0,31);
            state_0336 <= H_0323AUX;
          else
            rdy <= '1';
            state_0336 <= H_0322IDLE;
          end if;
        
        when H_0323AUX =>
          state_0336 <= H_0324DSL_Q_0302;
        
        when H_0324DSL_Q_0302 =>
          if params_0307l = X"00000001" then
            result <= params_0307acc;
            state_0336 <= H_0322IDLE;
          else
            params_0311tmp_0293 <= params_0307l;
            state_0336 <= H_0332GET_0291;
          end if;
        
        when H_0332GET_0291 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0311tmp_0293(19 downto 0)));
          avm_rm_read <= '1';
          state_0336 <= H_0333READ_0292;
        
        when H_0333READ_0292 =>
          state_0336 <= H_0334DSL_Q_0301;
        
        when H_0334DSL_Q_0301 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0294 <= signed(avm_rm_readdata(31 downto 1));
            state_0336 <= H_0335SEQ_0314;
          else
            state_0336 <= H_0333READ_0292;
          end if;
        
        when H_0335SEQ_0314 =>
          dsl_0299 <= v_0294;
          state_0336 <= H_0331TMP_0304;
        
        when H_0331TMP_0304 =>
          dsl_0296 <= params_0307acc + dsl_0299;
          state_0336 <= H_0325TMP_0303;
        
        when H_0325TMP_0303 =>
          params_0316tmp_0289 <= params_0307l;
          state_0336 <= H_0327GET_0287;
        
        when H_0327GET_0287 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0316tmp_0289(19 downto 0)) + 4);
          avm_rm_read <= '1';
          state_0336 <= H_0328READ_0288;
        
        when H_0328READ_0288 =>
          state_0336 <= H_0329DSL_Q_0298;
        
        when H_0329DSL_Q_0298 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0290 <= avm_rm_readdata;
            state_0336 <= H_0330SEQ_0319;
          else
            state_0336 <= H_0328READ_0288;
          end if;
        
        when H_0330SEQ_0319 =>
          dsl_0295 <= v_0290;
          state_0336 <= H_0326TMP_0305;
        
        when H_0326TMP_0305 =>
          params_0307l <= dsl_0295;
          params_0307acc <= dsl_0296;
          state_0336 <= H_0323AUX;
        
      end case;
    end if;
  end process;
  
end architecture;
