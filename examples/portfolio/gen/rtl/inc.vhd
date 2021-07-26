library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_inc.all;

entity inc is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal avm_rm_readdata : in caml_value;
       signal avm_rm_waitrequest : in std_logic;
       signal avm_wm_waitrequest : in std_logic;
       signal caml_heap_base : in caml_value;
       signal r : in caml_value;
       signal start : in std_logic;
       signal avm_rm_address : out caml_value;
       signal avm_rm_read : out std_logic := '0';
       signal avm_wm_address : out caml_value;
       signal avm_wm_write : out std_logic;
       signal avm_wm_writedata : out caml_value;
       signal rdy : out std_logic := '0';
       signal result : out unit);
end entity;
architecture RTL of inc is
  signal dsl_0218 : caml_int;
  signal dsl_0221 : caml_int;
  signal dsl_0223 : caml_int;
  signal params_0230tmp_0215 : caml_int;
  signal params_0230tmp_0216 : caml_value;
  signal params_0231dsl_0219 : caml_value;
  signal params_0235tmp_0211 : caml_value;
  signal v_0212 : caml_int;
  
  type state_0255_T is (H_0242Q_0241, H_0243IDLE, H_0247DSL_Q_0220, 
                        H_0251GET_0209, H_0252READ_0210, H_0253DSL_Q_0225, 
                        H_0254SEQ_0238, H_0250TMP_0228, H_0249TMP_0227, 
                        H_0248TMP_0226, H_0244EVAL_0213, H_0245WRITE_0214, 
                        H_0246DSL_Q_0217);
  signal state_0255 : state_0255_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0255 <= H_0242Q_0241;
        dsl_0218 <= to_signed(0,31);
        dsl_0221 <= to_signed(0,31);
        dsl_0223 <= to_signed(0,31);
        params_0230tmp_0215 <= to_signed(0,31);
        params_0230tmp_0216 <= X"00000000";
        params_0231dsl_0219 <= X"00000000";
        params_0235tmp_0211 <= X"00000000";
        v_0212 <= to_signed(0,31);
    elsif rising_edge(clk) then
      case state_0255 is
        when H_0242Q_0241 =>
          state_0255 <= H_0243IDLE;
        
        when H_0243IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0231dsl_0219 <= r;
            state_0255 <= H_0247DSL_Q_0220;
          else
            rdy <= '1';
            state_0255 <= H_0243IDLE;
          end if;
        
        when H_0247DSL_Q_0220 =>
          params_0235tmp_0211 <= r;
          state_0255 <= H_0251GET_0209;
        
        when H_0251GET_0209 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0235tmp_0211(19 downto 0)));
          avm_rm_read <= '1';
          state_0255 <= H_0252READ_0210;
        
        when H_0252READ_0210 =>
          state_0255 <= H_0253DSL_Q_0225;
        
        when H_0253DSL_Q_0225 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0212 <= signed(avm_rm_readdata(31 downto 1));
            state_0255 <= H_0254SEQ_0238;
          else
            state_0255 <= H_0252READ_0210;
          end if;
        
        when H_0254SEQ_0238 =>
          dsl_0223 <= v_0212;
          state_0255 <= H_0250TMP_0228;
        
        when H_0250TMP_0228 =>
          dsl_0221 <= dsl_0223 + to_signed(1,31);
          state_0255 <= H_0249TMP_0227;
        
        when H_0249TMP_0227 =>
          dsl_0218 <= dsl_0221;
          state_0255 <= H_0248TMP_0226;
        
        when H_0248TMP_0226 =>
          params_0230tmp_0215 <= dsl_0218;
          params_0230tmp_0216 <= params_0231dsl_0219;
          state_0255 <= H_0244EVAL_0213;
        
        when H_0244EVAL_0213 =>
          avm_wm_writedata <= std_logic_vector(params_0230tmp_0215)& "1";
          avm_wm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0230tmp_0216(19 downto 0)));
          avm_wm_write <= '1';
          state_0255 <= H_0245WRITE_0214;
        
        when H_0245WRITE_0214 =>
          state_0255 <= H_0246DSL_Q_0217;
        
        when H_0246DSL_Q_0217 =>
          if avm_wm_waitrequest = '0' then
            avm_wm_write <= '0';
            result <= UNIT_VALUE;
            state_0255 <= H_0243IDLE;
          else
            state_0255 <= H_0245WRITE_0214;
          end if;
        
      end case;
    end if;
  end process;
  
end architecture;
