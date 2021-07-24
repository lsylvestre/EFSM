library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_inc_ref.all;

entity inc_ref is
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
architecture RTL of inc_ref is
  signal dsl_0110 : caml_int;
  signal dsl_0113 : caml_int;
  signal dsl_0115 : caml_int;
  signal params_0122tmp_0107 : caml_int;
  signal params_0122tmp_0108 : caml_value;
  signal params_0123dsl_0111 : caml_value;
  signal params_0127tmp_0103 : caml_value;
  signal v_0104 : caml_int;
  
  type state_0147_T is (H_0134Q_0133, H_0135IDLE, H_0139DSL_Q_0112, 
                        H_0143GET_0101, H_0144READ_0102, H_0145DSL_Q_0117, 
                        H_0146SEQ_0130, H_0142TMP_0120, H_0141TMP_0119, 
                        H_0140TMP_0118, H_0136EVAL_0105, H_0137WRITE_0106, 
                        H_0138DSL_Q_0109);
  signal state_0147 : state_0147_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0147 <= H_0134Q_0133;
        dsl_0110 <= to_signed(0,31);
        dsl_0113 <= to_signed(0,31);
        dsl_0115 <= to_signed(0,31);
        params_0122tmp_0107 <= to_signed(0,31);
        params_0122tmp_0108 <= X"00000000";
        params_0123dsl_0111 <= X"00000000";
        params_0127tmp_0103 <= X"00000000";
        v_0104 <= to_signed(0,31);
    elsif rising_edge(clk) then
      case state_0147 is
        when H_0134Q_0133 =>
          state_0147 <= H_0135IDLE;
        
        when H_0135IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0123dsl_0111 <= r;
            state_0147 <= H_0139DSL_Q_0112;
          else
            rdy <= '1';
            state_0147 <= H_0135IDLE;
          end if;
        
        when H_0139DSL_Q_0112 =>
          params_0127tmp_0103 <= r;
          state_0147 <= H_0143GET_0101;
        
        when H_0143GET_0101 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0127tmp_0103(19 downto 0)));
          avm_rm_read <= '1';
          state_0147 <= H_0144READ_0102;
        
        when H_0144READ_0102 =>
          state_0147 <= H_0145DSL_Q_0117;
        
        when H_0145DSL_Q_0117 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0104 <= signed(avm_rm_readdata(31 downto 1));
            state_0147 <= H_0146SEQ_0130;
          else
            state_0147 <= H_0144READ_0102;
          end if;
        
        when H_0146SEQ_0130 =>
          dsl_0115 <= v_0104;
          state_0147 <= H_0142TMP_0120;
        
        when H_0142TMP_0120 =>
          dsl_0113 <= dsl_0115 + to_signed(1,31);
          state_0147 <= H_0141TMP_0119;
        
        when H_0141TMP_0119 =>
          dsl_0110 <= dsl_0113;
          state_0147 <= H_0140TMP_0118;
        
        when H_0140TMP_0118 =>
          params_0122tmp_0107 <= dsl_0110;
          params_0122tmp_0108 <= params_0123dsl_0111;
          state_0147 <= H_0136EVAL_0105;
        
        when H_0136EVAL_0105 =>
          avm_wm_writedata <= std_logic_vector(params_0122tmp_0107)& "1";
          avm_wm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0122tmp_0108(19 downto 0)));
          avm_wm_write <= '1';
          state_0147 <= H_0137WRITE_0106;
        
        when H_0137WRITE_0106 =>
          state_0147 <= H_0138DSL_Q_0109;
        
        when H_0138DSL_Q_0109 =>
          if avm_wm_waitrequest = '0' then
            avm_wm_write <= '0';
            result <= UNIT_VALUE;
            state_0147 <= H_0135IDLE;
          else
            state_0147 <= H_0137WRITE_0106;
          end if;
        
      end case;
    end if;
  end process;
  
end architecture;
