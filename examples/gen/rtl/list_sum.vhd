library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_list_sum.all;

entity list_sum is
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
architecture RTL of list_sum is
  signal dsl_0189 : caml_value;
  signal dsl_0190 : caml_int;
  signal dsl_0193 : caml_int;
  signal params_0201l : caml_value;
  signal params_0202acc : caml_int;
  signal params_0202l : caml_value;
  signal params_0206tmp_0187 : caml_value;
  signal params_0211tmp_0183 : caml_value;
  signal v_0184 : caml_value;
  signal v_0188 : caml_int;
  
  type state_0232_T is (H_0216Q_0215, H_0217IDLE, H_0218SUM, H_0219AUX, 
                        H_0220DSL_Q_0196, H_0228GET_0185, H_0229READ_0186, 
                        H_0230DSL_Q_0195, H_0231SEQ_0209, H_0227TMP_0198, 
                        H_0221TMP_0197, H_0223GET_0181, H_0224READ_0182, 
                        H_0225DSL_Q_0192, H_0226SEQ_0214, H_0222TMP_0199);
  signal state_0232 : state_0232_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0232 <= H_0216Q_0215;
        dsl_0189 <= X"00000000";
        dsl_0190 <= to_signed(0,31);
        dsl_0193 <= to_signed(0,31);
        params_0201l <= X"00000000";
        params_0202acc <= to_signed(0,31);
        params_0202l <= X"00000000";
        params_0206tmp_0187 <= X"00000000";
        params_0211tmp_0183 <= X"00000000";
        v_0184 <= X"00000000";
        v_0188 <= to_signed(0,31);
    elsif rising_edge(clk) then
      case state_0232 is
        when H_0216Q_0215 =>
          state_0232 <= H_0217IDLE;
        
        when H_0217IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0201l <= dataa;
            state_0232 <= H_0218SUM;
          else
            rdy <= '1';
            state_0232 <= H_0217IDLE;
          end if;
        
        when H_0218SUM =>
          params_0202l <= params_0201l;
          params_0202acc <= to_signed(0,31);
          state_0232 <= H_0219AUX;
        
        when H_0219AUX =>
          state_0232 <= H_0220DSL_Q_0196;
        
        when H_0220DSL_Q_0196 =>
          if params_0202l = X"00000001" then
            result <= params_0202acc;
            state_0232 <= H_0217IDLE;
          else
            params_0206tmp_0187 <= params_0202l;
            state_0232 <= H_0228GET_0185;
          end if;
        
        when H_0228GET_0185 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0206tmp_0187(19 downto 0)));
          avm_rm_read <= '1';
          state_0232 <= H_0229READ_0186;
        
        when H_0229READ_0186 =>
          state_0232 <= H_0230DSL_Q_0195;
        
        when H_0230DSL_Q_0195 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0188 <= signed(avm_rm_readdata(31 downto 1));
            state_0232 <= H_0231SEQ_0209;
          else
            state_0232 <= H_0229READ_0186;
          end if;
        
        when H_0231SEQ_0209 =>
          dsl_0193 <= v_0188;
          state_0232 <= H_0227TMP_0198;
        
        when H_0227TMP_0198 =>
          dsl_0190 <= params_0202acc + dsl_0193;
          state_0232 <= H_0221TMP_0197;
        
        when H_0221TMP_0197 =>
          params_0211tmp_0183 <= params_0202l;
          state_0232 <= H_0223GET_0181;
        
        when H_0223GET_0181 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0211tmp_0183(19 downto 0)) + 4);
          avm_rm_read <= '1';
          state_0232 <= H_0224READ_0182;
        
        when H_0224READ_0182 =>
          state_0232 <= H_0225DSL_Q_0192;
        
        when H_0225DSL_Q_0192 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0184 <= avm_rm_readdata;
            state_0232 <= H_0226SEQ_0214;
          else
            state_0232 <= H_0224READ_0182;
          end if;
        
        when H_0226SEQ_0214 =>
          dsl_0189 <= v_0184;
          state_0232 <= H_0222TMP_0199;
        
        when H_0222TMP_0199 =>
          params_0202l <= dsl_0189;
          params_0202acc <= dsl_0190;
          state_0232 <= H_0219AUX;
        
      end case;
    end if;
  end process;
  
end architecture;
