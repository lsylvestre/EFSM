library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_list_length.all;

entity list_length is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal avm_rm_readdata : in caml_value;
       signal avm_rm_waitrequest : in std_logic;
       signal caml_heap_base : in caml_value;
       signal dataa : in caml_value;
       signal start : in std_logic;
       signal avm_rm_address : out caml_value;
       signal avm_rm_read : out std_logic := '0';
       signal rdy : out std_logic := '0';
       signal result : out caml_int);
end entity;
architecture RTL of list_length is
  signal dsl_0152 : caml_value;
  signal params_0159l : caml_value;
  signal params_0160acc : caml_int;
  signal params_0160l : caml_value;
  signal params_0162dsl_0153 : caml_int;
  signal params_0164tmp_0150 : caml_value;
  signal v_0151 : caml_value;
  
  type state_0180_T is (H_0169Q_0168, H_0170IDLE, H_0171LEN, H_0172AUX, 
                        H_0173DSL_Q_0156, H_0174DSL_Q_0154, H_0176GET_0148, 
                        H_0177READ_0149, H_0178DSL_Q_0155, H_0179SEQ_0167, 
                        H_0175TMP_0157);
  signal state_0180 : state_0180_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0180 <= H_0169Q_0168;
        dsl_0152 <= X"00000000";
        params_0159l <= X"00000000";
        params_0160acc <= to_signed(0,31);
        params_0160l <= X"00000000";
        params_0162dsl_0153 <= to_signed(0,31);
        params_0164tmp_0150 <= X"00000000";
        v_0151 <= X"00000000";
    elsif rising_edge(clk) then
      case state_0180 is
        when H_0169Q_0168 =>
          state_0180 <= H_0170IDLE;
        
        when H_0170IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0159l <= dataa;
            state_0180 <= H_0171LEN;
          else
            rdy <= '1';
            state_0180 <= H_0170IDLE;
          end if;
        
        when H_0171LEN =>
          params_0160l <= params_0159l;
          params_0160acc <= to_signed(0,31);
          state_0180 <= H_0172AUX;
        
        when H_0172AUX =>
          state_0180 <= H_0173DSL_Q_0156;
        
        when H_0173DSL_Q_0156 =>
          if params_0160l = X"00000001" then
            result <= params_0160acc;
            state_0180 <= H_0170IDLE;
          else
            params_0162dsl_0153 <= to_signed(1,31) + params_0160acc;
            state_0180 <= H_0174DSL_Q_0154;
          end if;
        
        when H_0174DSL_Q_0154 =>
          params_0164tmp_0150 <= params_0160l;
          state_0180 <= H_0176GET_0148;
        
        when H_0176GET_0148 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0164tmp_0150(19 downto 0)) + 4);
          avm_rm_read <= '1';
          state_0180 <= H_0177READ_0149;
        
        when H_0177READ_0149 =>
          state_0180 <= H_0178DSL_Q_0155;
        
        when H_0178DSL_Q_0155 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0151 <= avm_rm_readdata;
            state_0180 <= H_0179SEQ_0167;
          else
            state_0180 <= H_0177READ_0149;
          end if;
        
        when H_0179SEQ_0167 =>
          dsl_0152 <= v_0151;
          state_0180 <= H_0175TMP_0157;
        
        when H_0175TMP_0157 =>
          params_0160l <= dsl_0152;
          params_0160acc <= params_0162dsl_0153;
          state_0180 <= H_0172AUX;
        
      end case;
    end if;
  end process;
  
end architecture;
