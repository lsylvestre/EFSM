library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_sum_array.all;

entity sum_array is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal a : in caml_value;
       signal avm_rm_readdata : in caml_value;
       signal avm_rm_waitrequest : in std_logic;
       signal caml_heap_base : in caml_value;
       signal start : in std_logic;
       signal avm_rm_address : out caml_value;
       signal avm_rm_read : out std_logic := '0';
       signal rdy : out std_logic := '0';
       signal result : out caml_int);
end entity;
architecture RTL of sum_array is
  signal dsl_0165 : caml_int;
  signal dsl_0168 : caml_int;
  signal n : caml_int;
  signal params_0178tmp_0157 : caml_value;
  signal params_0182acc : caml_int;
  signal params_0182i : caml_int;
  signal params_0184dsl_0166 : caml_int;
  signal params_0187tmp_0161 : caml_value;
  signal params_0187tmp_0162 : caml_int;
  signal v_0158 : caml_value;
  signal v_0163 : caml_int;
  
  type state_0208_T is (H_0192Q_0191, H_0193IDLE, H_0204GET_0155, 
                        H_0205READ_0156, H_0206DSL_Q_0172, H_0207SEQ_0181, 
                        H_0194TMP_0173, H_0195AUX, H_0196DSL_Q_0171, 
                        H_0197DSL_Q_0167, H_0200GET_0159, H_0201READ_0160, 
                        H_0202DSL_Q_0170, H_0203SEQ_0190, H_0199TMP_0175, 
                        H_0198TMP_0174);
  signal state_0208 : state_0208_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0208 <= H_0192Q_0191;
        dsl_0165 <= to_signed(0,31);
        dsl_0168 <= to_signed(0,31);
        n <= to_signed(0,31);
        params_0178tmp_0157 <= X"00000000";
        params_0182acc <= to_signed(0,31);
        params_0182i <= to_signed(0,31);
        params_0184dsl_0166 <= to_signed(0,31);
        params_0187tmp_0161 <= X"00000000";
        params_0187tmp_0162 <= to_signed(0,31);
        v_0158 <= X"00000000";
        v_0163 <= to_signed(0,31);
    elsif rising_edge(clk) then
      case state_0208 is
        when H_0192Q_0191 =>
          state_0208 <= H_0193IDLE;
        
        when H_0193IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0178tmp_0157 <= a;
            state_0208 <= H_0204GET_0155;
          else
            rdy <= '1';
            state_0208 <= H_0193IDLE;
          end if;
        
        when H_0204GET_0155 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0178tmp_0157(19 downto 0)) - 4);
          avm_rm_read <= '1';
          state_0208 <= H_0205READ_0156;
        
        when H_0205READ_0156 =>
          state_0208 <= H_0206DSL_Q_0172;
        
        when H_0206DSL_Q_0172 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0158 <= avm_rm_readdata;
            state_0208 <= H_0207SEQ_0181;
          else
            state_0208 <= H_0205READ_0156;
          end if;
        
        when H_0207SEQ_0181 =>
          n <= signed("00000000000"&v_0158(21 downto 2));
          state_0208 <= H_0194TMP_0173;
        
        when H_0194TMP_0173 =>
          params_0182acc <= to_signed(0,31);
          params_0182i <= to_signed(0,31);
          state_0208 <= H_0195AUX;
        
        when H_0195AUX =>
          state_0208 <= H_0196DSL_Q_0171;
        
        when H_0196DSL_Q_0171 =>
          if params_0182i >= n then
            result <= params_0182acc;
            state_0208 <= H_0193IDLE;
          else
            params_0184dsl_0166 <= params_0182i + to_signed(1,31);
            state_0208 <= H_0197DSL_Q_0167;
          end if;
        
        when H_0197DSL_Q_0167 =>
          params_0187tmp_0161 <= a;
          params_0187tmp_0162 <= params_0182i;
          state_0208 <= H_0200GET_0159;
        
        when H_0200GET_0159 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0187tmp_0161(19 downto 0)) +
                            RESIZE(unsigned(params_0187tmp_0162(19 downto 0)) * 4,32));
          avm_rm_read <= '1';
          state_0208 <= H_0201READ_0160;
        
        when H_0201READ_0160 =>
          state_0208 <= H_0202DSL_Q_0170;
        
        when H_0202DSL_Q_0170 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0163 <= signed(avm_rm_readdata(31 downto 1));
            state_0208 <= H_0203SEQ_0190;
          else
            state_0208 <= H_0201READ_0160;
          end if;
        
        when H_0203SEQ_0190 =>
          dsl_0168 <= v_0163;
          state_0208 <= H_0199TMP_0175;
        
        when H_0199TMP_0175 =>
          dsl_0165 <= params_0182acc + dsl_0168;
          state_0208 <= H_0198TMP_0174;
        
        when H_0198TMP_0174 =>
          params_0182acc <= dsl_0165;
          params_0182i <= params_0184dsl_0166;
          state_0208 <= H_0195AUX;
        
      end case;
    end if;
  end process;
  
end architecture;
