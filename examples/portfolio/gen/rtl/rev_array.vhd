library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_rev_array.all;

entity rev_array is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal a : in caml_value;
       signal avm_rm_readdata : in caml_value;
       signal avm_rm_waitrequest : in std_logic;
       signal avm_wm_waitrequest : in std_logic;
       signal caml_heap_base : in caml_value;
       signal start : in std_logic;
       signal avm_rm_address : out caml_value;
       signal avm_rm_read : out std_logic := '0';
       signal avm_wm_address : out caml_value;
       signal avm_wm_write : out std_logic;
       signal avm_wm_writedata : out caml_value;
       signal rdy : out std_logic := '0';
       signal result : out unit;
       signal wildcard_0001 : out unit;
       signal wildcard_0002 : out unit);
end entity;
architecture RTL of rev_array is
  signal dsl_0070 : caml_value;
  signal dsl_0074 : caml_value;
  signal dsl_0080 : caml_int;
  signal dsl_0082 : caml_int;
  signal params_0093i : caml_int;
  signal params_0093j : caml_int;
  signal params_0094dsl_0079 : caml_int;
  signal params_0097tmp_0063 : caml_value;
  signal params_0103tmp_0043 : caml_value;
  signal params_0103tmp_0044 : caml_int;
  signal params_0108tmp_0053 : caml_value;
  signal params_0108tmp_0054 : caml_value;
  signal params_0108tmp_0055 : caml_int;
  signal params_0109dsl_0071 : caml_value;
  signal params_0109dsl_0072 : caml_int;
  signal params_0112tmp_0048 : caml_value;
  signal params_0112tmp_0049 : caml_int;
  signal params_0119tmp_0058 : caml_value;
  signal params_0119tmp_0059 : caml_value;
  signal params_0119tmp_0060 : caml_int;
  signal v : caml_value;
  signal v_0045 : caml_value;
  signal v_0050 : caml_value;
  signal v_0064 : caml_value;
  
  type state_0154_T is (H_0123Q_0122, H_0124IDLE, H_0147DSL_Q_0081, 
                        H_0150GET_0061, H_0151READ_0062, H_0152DSL_Q_0084, 
                        H_0153SEQ_0100, H_0149TMP_0091, H_0148TMP_0090, 
                        H_0125AUX, H_0126DSL_Q_0078, H_0143GET_0041, 
                        H_0144READ_0042, H_0145DSL_Q_0077, H_0146SEQ_0106, 
                        H_0127TMP_0085, H_0136DSL_Q_0073, H_0139GET_0046, 
                        H_0140READ_0047, H_0141DSL_Q_0076, H_0142SEQ_0115, 
                        H_0138TMP_0088, H_0137TMP_0087, H_0133EVAL_0051, 
                        H_0134WRITE_0052, H_0135DSL_Q_0069, H_0128TMP_0086, 
                        H_0130EVAL_0056, H_0131WRITE_0057, H_0132DSL_Q_0068, 
                        H_0129TMP_0089);
  signal state_0154 : state_0154_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0154 <= H_0123Q_0122;
        dsl_0070 <= X"00000000";
        dsl_0074 <= X"00000000";
        dsl_0080 <= to_signed(0,31);
        dsl_0082 <= to_signed(0,31);
        params_0093i <= to_signed(0,31);
        params_0093j <= to_signed(0,31);
        params_0094dsl_0079 <= to_signed(0,31);
        params_0097tmp_0063 <= X"00000000";
        params_0103tmp_0043 <= X"00000000";
        params_0103tmp_0044 <= to_signed(0,31);
        params_0108tmp_0053 <= X"00000000";
        params_0108tmp_0054 <= X"00000000";
        params_0108tmp_0055 <= to_signed(0,31);
        params_0109dsl_0071 <= X"00000000";
        params_0109dsl_0072 <= to_signed(0,31);
        params_0112tmp_0048 <= X"00000000";
        params_0112tmp_0049 <= to_signed(0,31);
        params_0119tmp_0058 <= X"00000000";
        params_0119tmp_0059 <= X"00000000";
        params_0119tmp_0060 <= to_signed(0,31);
        v <= X"00000000";
        v_0045 <= X"00000000";
        v_0050 <= X"00000000";
        v_0064 <= X"00000000";
    elsif rising_edge(clk) then
      case state_0154 is
        when H_0123Q_0122 =>
          state_0154 <= H_0124IDLE;
        
        when H_0124IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0094dsl_0079 <= to_signed(0,31);
            state_0154 <= H_0147DSL_Q_0081;
          else
            rdy <= '1';
            state_0154 <= H_0124IDLE;
          end if;
        
        when H_0147DSL_Q_0081 =>
          params_0097tmp_0063 <= a;
          state_0154 <= H_0150GET_0061;
        
        when H_0150GET_0061 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0097tmp_0063(19 downto 0)) - 4);
          avm_rm_read <= '1';
          state_0154 <= H_0151READ_0062;
        
        when H_0151READ_0062 =>
          state_0154 <= H_0152DSL_Q_0084;
        
        when H_0152DSL_Q_0084 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0064 <= avm_rm_readdata;
            state_0154 <= H_0153SEQ_0100;
          else
            state_0154 <= H_0151READ_0062;
          end if;
        
        when H_0153SEQ_0100 =>
          dsl_0082 <= signed("00000000000"&v_0064(21 downto 2));
          state_0154 <= H_0149TMP_0091;
        
        when H_0149TMP_0091 =>
          dsl_0080 <= dsl_0082 - to_signed(1,31);
          state_0154 <= H_0148TMP_0090;
        
        when H_0148TMP_0090 =>
          params_0093i <= params_0094dsl_0079;
          params_0093j <= dsl_0080;
          state_0154 <= H_0125AUX;
        
        when H_0125AUX =>
          state_0154 <= H_0126DSL_Q_0078;
        
        when H_0126DSL_Q_0078 =>
          if params_0093i >= params_0093j then
            result <= UNIT_VALUE;
            state_0154 <= H_0124IDLE;
          else
            params_0103tmp_0043 <= a;
            params_0103tmp_0044 <= params_0093i;
            state_0154 <= H_0143GET_0041;
          end if;
        
        when H_0143GET_0041 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0103tmp_0043(19 downto 0)) +
                            RESIZE(unsigned(params_0103tmp_0044(19 downto 0)) * 4,32));
          avm_rm_read <= '1';
          state_0154 <= H_0144READ_0042;
        
        when H_0144READ_0042 =>
          state_0154 <= H_0145DSL_Q_0077;
        
        when H_0145DSL_Q_0077 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0045 <= avm_rm_readdata;
            state_0154 <= H_0146SEQ_0106;
          else
            state_0154 <= H_0144READ_0042;
          end if;
        
        when H_0146SEQ_0106 =>
          v <= v_0045;
          state_0154 <= H_0127TMP_0085;
        
        when H_0127TMP_0085 =>
          params_0109dsl_0071 <= a;
          params_0109dsl_0072 <= params_0093i;
          state_0154 <= H_0136DSL_Q_0073;
        
        when H_0136DSL_Q_0073 =>
          params_0112tmp_0048 <= a;
          params_0112tmp_0049 <= params_0093j;
          state_0154 <= H_0139GET_0046;
        
        when H_0139GET_0046 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0112tmp_0048(19 downto 0)) +
                            RESIZE(unsigned(params_0112tmp_0049(19 downto 0)) * 4,32));
          avm_rm_read <= '1';
          state_0154 <= H_0140READ_0047;
        
        when H_0140READ_0047 =>
          state_0154 <= H_0141DSL_Q_0076;
        
        when H_0141DSL_Q_0076 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0050 <= avm_rm_readdata;
            state_0154 <= H_0142SEQ_0115;
          else
            state_0154 <= H_0140READ_0047;
          end if;
        
        when H_0142SEQ_0115 =>
          dsl_0074 <= v_0050;
          state_0154 <= H_0138TMP_0088;
        
        when H_0138TMP_0088 =>
          dsl_0070 <= dsl_0074;
          state_0154 <= H_0137TMP_0087;
        
        when H_0137TMP_0087 =>
          params_0108tmp_0053 <= dsl_0070;
          params_0108tmp_0054 <= params_0109dsl_0071;
          params_0108tmp_0055 <= params_0109dsl_0072;
          state_0154 <= H_0133EVAL_0051;
        
        when H_0133EVAL_0051 =>
          avm_wm_writedata <= params_0108tmp_0053;
          avm_wm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0108tmp_0054(19 downto 0)) +
                            RESIZE(unsigned(params_0108tmp_0055(19 downto 0)) * 4,32));
          avm_wm_write <= '1';
          state_0154 <= H_0134WRITE_0052;
        
        when H_0134WRITE_0052 =>
          state_0154 <= H_0135DSL_Q_0069;
        
        when H_0135DSL_Q_0069 =>
          if avm_wm_waitrequest = '0' then
            avm_wm_write <= '0';
            wildcard_0001 <= UNIT_VALUE;
            state_0154 <= H_0128TMP_0086;
          else
            state_0154 <= H_0134WRITE_0052;
          end if;
        
        when H_0128TMP_0086 =>
          params_0119tmp_0058 <= v;
          params_0119tmp_0059 <= a;
          params_0119tmp_0060 <= params_0093j;
          state_0154 <= H_0130EVAL_0056;
        
        when H_0130EVAL_0056 =>
          avm_wm_writedata <= params_0119tmp_0058;
          avm_wm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0119tmp_0059(19 downto 0)) +
                            RESIZE(unsigned(params_0119tmp_0060(19 downto 0)) * 4,32));
          avm_wm_write <= '1';
          state_0154 <= H_0131WRITE_0057;
        
        when H_0131WRITE_0057 =>
          state_0154 <= H_0132DSL_Q_0068;
        
        when H_0132DSL_Q_0068 =>
          if avm_wm_waitrequest = '0' then
            avm_wm_write <= '0';
            wildcard_0002 <= UNIT_VALUE;
            state_0154 <= H_0129TMP_0089;
          else
            state_0154 <= H_0131WRITE_0057;
          end if;
        
        when H_0129TMP_0089 =>
          params_0093i <= params_0093i + to_signed(1,31);
          params_0093j <= params_0093j - to_signed(1,31);
          state_0154 <= H_0125AUX;
        
      end case;
    end if;
  end process;
  
end architecture;
