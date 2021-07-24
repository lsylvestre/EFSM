library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_array_sum.all;

entity array_sum is
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
architecture RTL of array_sum is
  signal dsl_0011 : caml_int;
  signal dsl_0014 : caml_int;
  signal n : caml_int;
  signal params_0023a : caml_value;
  signal params_0025tmp_0003 : caml_value;
  signal params_0029acc : caml_int;
  signal params_0029i : caml_int;
  signal params_0031dsl_0012 : caml_int;
  signal params_0034tmp_0007 : caml_value;
  signal params_0034tmp_0008 : caml_int;
  signal v_0004 : caml_value;
  signal v_0009 : caml_int;
  
  type state_0056_T is (H_0039Q_0038, H_0040IDLE, H_0041SUM, H_0052GET_0001, 
                        H_0053READ_0002, H_0054DSL_Q_0018, H_0055SEQ_0028, 
                        H_0042TMP_0019, H_0043AUX, H_0044DSL_Q_0017, 
                        H_0045DSL_Q_0013, H_0048GET_0005, H_0049READ_0006, 
                        H_0050DSL_Q_0016, H_0051SEQ_0037, H_0047TMP_0021, 
                        H_0046TMP_0020);
  signal state_0056 : state_0056_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0056 <= H_0039Q_0038;
        dsl_0011 <= to_signed(0,31);
        dsl_0014 <= to_signed(0,31);
        n <= to_signed(0,31);
        params_0023a <= X"00000000";
        params_0025tmp_0003 <= X"00000000";
        params_0029acc <= to_signed(0,31);
        params_0029i <= to_signed(0,31);
        params_0031dsl_0012 <= to_signed(0,31);
        params_0034tmp_0007 <= X"00000000";
        params_0034tmp_0008 <= to_signed(0,31);
        v_0004 <= X"00000000";
        v_0009 <= to_signed(0,31);
    elsif rising_edge(clk) then
      case state_0056 is
        when H_0039Q_0038 =>
          state_0056 <= H_0040IDLE;
        
        when H_0040IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0023a <= a;
            state_0056 <= H_0041SUM;
          else
            rdy <= '1';
            state_0056 <= H_0040IDLE;
          end if;
        
        when H_0041SUM =>
          params_0025tmp_0003 <= params_0023a;
          state_0056 <= H_0052GET_0001;
        
        when H_0052GET_0001 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0025tmp_0003(19 downto 0)) - 4);
          avm_rm_read <= '1';
          state_0056 <= H_0053READ_0002;
        
        when H_0053READ_0002 =>
          state_0056 <= H_0054DSL_Q_0018;
        
        when H_0054DSL_Q_0018 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0004 <= avm_rm_readdata;
            state_0056 <= H_0055SEQ_0028;
          else
            state_0056 <= H_0053READ_0002;
          end if;
        
        when H_0055SEQ_0028 =>
          n <= signed("00000000000"&v_0004(21 downto 2));
          state_0056 <= H_0042TMP_0019;
        
        when H_0042TMP_0019 =>
          params_0029acc <= to_signed(0,31);
          params_0029i <= to_signed(0,31);
          state_0056 <= H_0043AUX;
        
        when H_0043AUX =>
          state_0056 <= H_0044DSL_Q_0017;
        
        when H_0044DSL_Q_0017 =>
          if params_0029i >= n then
            result <= params_0029acc;
            state_0056 <= H_0040IDLE;
          else
            params_0031dsl_0012 <= params_0029i + to_signed(1,31);
            state_0056 <= H_0045DSL_Q_0013;
          end if;
        
        when H_0045DSL_Q_0013 =>
          params_0034tmp_0007 <= params_0023a;
          params_0034tmp_0008 <= params_0029i;
          state_0056 <= H_0048GET_0005;
        
        when H_0048GET_0005 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0034tmp_0007(19 downto 0)) +
                            RESIZE(unsigned(params_0034tmp_0008(19 downto 0)) * 4,32));
          avm_rm_read <= '1';
          state_0056 <= H_0049READ_0006;
        
        when H_0049READ_0006 =>
          state_0056 <= H_0050DSL_Q_0016;
        
        when H_0050DSL_Q_0016 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0009 <= signed(avm_rm_readdata(31 downto 1));
            state_0056 <= H_0051SEQ_0037;
          else
            state_0056 <= H_0049READ_0006;
          end if;
        
        when H_0051SEQ_0037 =>
          dsl_0014 <= v_0009;
          state_0056 <= H_0047TMP_0021;
        
        when H_0047TMP_0021 =>
          dsl_0011 <= params_0029acc + dsl_0014;
          state_0056 <= H_0046TMP_0020;
        
        when H_0046TMP_0020 =>
          params_0029acc <= dsl_0011;
          params_0029i <= params_0031dsl_0012;
          state_0056 <= H_0043AUX;
        
      end case;
    end if;
  end process;
  
end architecture;
