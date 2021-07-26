library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_len.all;

entity len is
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
architecture RTL of len is
  signal dsl_0260 : caml_value;
  signal params_0267acc : caml_int;
  signal params_0267l : caml_value;
  signal params_0269dsl_0261 : caml_int;
  signal params_0271tmp_0258 : caml_value;
  signal v_0259 : caml_value;
  
  type state_0286_T is (H_0276Q_0275, H_0277IDLE, H_0278AUX, 
                        H_0279DSL_Q_0264, H_0280DSL_Q_0262, H_0282GET_0256, 
                        H_0283READ_0257, H_0284DSL_Q_0263, H_0285SEQ_0274, 
                        H_0281TMP_0265);
  signal state_0286 : state_0286_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0286 <= H_0276Q_0275;
        dsl_0260 <= X"00000000";
        params_0267acc <= to_signed(0,31);
        params_0267l <= X"00000000";
        params_0269dsl_0261 <= to_signed(0,31);
        params_0271tmp_0258 <= X"00000000";
        v_0259 <= X"00000000";
    elsif rising_edge(clk) then
      case state_0286 is
        when H_0276Q_0275 =>
          state_0286 <= H_0277IDLE;
        
        when H_0277IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0267l <= l;
            params_0267acc <= to_signed(0,31);
            state_0286 <= H_0278AUX;
          else
            rdy <= '1';
            state_0286 <= H_0277IDLE;
          end if;
        
        when H_0278AUX =>
          state_0286 <= H_0279DSL_Q_0264;
        
        when H_0279DSL_Q_0264 =>
          if params_0267l = X"00000001" then
            result <= params_0267acc;
            state_0286 <= H_0277IDLE;
          else
            params_0269dsl_0261 <= to_signed(1,31) + params_0267acc;
            state_0286 <= H_0280DSL_Q_0262;
          end if;
        
        when H_0280DSL_Q_0262 =>
          params_0271tmp_0258 <= params_0267l;
          state_0286 <= H_0282GET_0256;
        
        when H_0282GET_0256 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0271tmp_0258(19 downto 0)) + 4);
          avm_rm_read <= '1';
          state_0286 <= H_0283READ_0257;
        
        when H_0283READ_0257 =>
          state_0286 <= H_0284DSL_Q_0263;
        
        when H_0284DSL_Q_0263 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0259 <= avm_rm_readdata;
            state_0286 <= H_0285SEQ_0274;
          else
            state_0286 <= H_0283READ_0257;
          end if;
        
        when H_0285SEQ_0274 =>
          dsl_0260 <= v_0259;
          state_0286 <= H_0281TMP_0265;
        
        when H_0281TMP_0265 =>
          params_0267l <= dsl_0260;
          params_0267acc <= params_0269dsl_0261;
          state_0286 <= H_0278AUX;
        
      end case;
    end if;
  end process;
  
end architecture;
