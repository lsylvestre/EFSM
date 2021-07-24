library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_rev_array.all;

entity rev_array is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal arr : in caml_value;
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
       signal wildcard_0284 : out unit;
       signal wildcard_0285 : out unit);
end entity;
architecture RTL of rev_array is
  signal dsl_0315 : caml_value;
  signal dsl_0319 : caml_value;
  signal dsl_0325 : caml_int;
  signal dsl_0327 : caml_int;
  signal params_0338a : caml_value;
  signal params_0339i : caml_int;
  signal params_0339j : caml_int;
  signal params_0340dsl_0324 : caml_int;
  signal params_0343tmp_0308 : caml_value;
  signal params_0349tmp_0288 : caml_value;
  signal params_0349tmp_0289 : caml_int;
  signal params_0354tmp_0298 : caml_value;
  signal params_0354tmp_0299 : caml_value;
  signal params_0354tmp_0300 : caml_int;
  signal params_0355dsl_0316 : caml_value;
  signal params_0355dsl_0317 : caml_int;
  signal params_0358tmp_0293 : caml_value;
  signal params_0358tmp_0294 : caml_int;
  signal params_0365tmp_0303 : caml_value;
  signal params_0365tmp_0304 : caml_value;
  signal params_0365tmp_0305 : caml_int;
  signal v : caml_value;
  signal v_0290 : caml_value;
  signal v_0295 : caml_value;
  signal v_0309 : caml_value;
  
  type state_0401_T is (H_0369Q_0368, H_0370IDLE, H_0371REV, 
                        H_0394DSL_Q_0326, H_0397GET_0306, H_0398READ_0307, 
                        H_0399DSL_Q_0329, H_0400SEQ_0346, H_0396TMP_0336, 
                        H_0395TMP_0335, H_0372AUX, H_0373DSL_Q_0323, 
                        H_0390GET_0286, H_0391READ_0287, H_0392DSL_Q_0322, 
                        H_0393SEQ_0352, H_0374TMP_0330, H_0383DSL_Q_0318, 
                        H_0386GET_0291, H_0387READ_0292, H_0388DSL_Q_0321, 
                        H_0389SEQ_0361, H_0385TMP_0333, H_0384TMP_0332, 
                        H_0380EVAL_0296, H_0381WRITE_0297, H_0382DSL_Q_0314, 
                        H_0375TMP_0331, H_0377EVAL_0301, H_0378WRITE_0302, 
                        H_0379DSL_Q_0313, H_0376TMP_0334);
  signal state_0401 : state_0401_T;
  
begin
  process(reset,clk) begin
    if reset = '1' then
      state_0401 <= H_0369Q_0368;
        dsl_0315 <= X"00000000";
        dsl_0319 <= X"00000000";
        dsl_0325 <= to_signed(0,31);
        dsl_0327 <= to_signed(0,31);
        params_0338a <= X"00000000";
        params_0339i <= to_signed(0,31);
        params_0339j <= to_signed(0,31);
        params_0340dsl_0324 <= to_signed(0,31);
        params_0343tmp_0308 <= X"00000000";
        params_0349tmp_0288 <= X"00000000";
        params_0349tmp_0289 <= to_signed(0,31);
        params_0354tmp_0298 <= X"00000000";
        params_0354tmp_0299 <= X"00000000";
        params_0354tmp_0300 <= to_signed(0,31);
        params_0355dsl_0316 <= X"00000000";
        params_0355dsl_0317 <= to_signed(0,31);
        params_0358tmp_0293 <= X"00000000";
        params_0358tmp_0294 <= to_signed(0,31);
        params_0365tmp_0303 <= X"00000000";
        params_0365tmp_0304 <= X"00000000";
        params_0365tmp_0305 <= to_signed(0,31);
        v <= X"00000000";
        v_0290 <= X"00000000";
        v_0295 <= X"00000000";
        v_0309 <= X"00000000";
    elsif rising_edge(clk) then
      case state_0401 is
        when H_0369Q_0368 =>
          state_0401 <= H_0370IDLE;
        
        when H_0370IDLE =>
          if start = '1' then
            rdy <= '0';
            params_0338a <= arr;
            state_0401 <= H_0371REV;
          else
            rdy <= '1';
            state_0401 <= H_0370IDLE;
          end if;
        
        when H_0371REV =>
          params_0340dsl_0324 <= to_signed(0,31);
          state_0401 <= H_0394DSL_Q_0326;
        
        when H_0394DSL_Q_0326 =>
          params_0343tmp_0308 <= params_0338a;
          state_0401 <= H_0397GET_0306;
        
        when H_0397GET_0306 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0343tmp_0308(19 downto 0)) - 4);
          avm_rm_read <= '1';
          state_0401 <= H_0398READ_0307;
        
        when H_0398READ_0307 =>
          state_0401 <= H_0399DSL_Q_0329;
        
        when H_0399DSL_Q_0329 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0309 <= avm_rm_readdata;
            state_0401 <= H_0400SEQ_0346;
          else
            state_0401 <= H_0398READ_0307;
          end if;
        
        when H_0400SEQ_0346 =>
          dsl_0327 <= signed("00000000000"&v_0309(21 downto 2));
          state_0401 <= H_0396TMP_0336;
        
        when H_0396TMP_0336 =>
          dsl_0325 <= dsl_0327 - to_signed(1,31);
          state_0401 <= H_0395TMP_0335;
        
        when H_0395TMP_0335 =>
          params_0339i <= params_0340dsl_0324;
          params_0339j <= dsl_0325;
          state_0401 <= H_0372AUX;
        
        when H_0372AUX =>
          state_0401 <= H_0373DSL_Q_0323;
        
        when H_0373DSL_Q_0323 =>
          if params_0339i >= params_0339j then
            result <= UNIT_VALUE;
            state_0401 <= H_0370IDLE;
          else
            params_0349tmp_0288 <= params_0338a;
            params_0349tmp_0289 <= params_0339i;
            state_0401 <= H_0390GET_0286;
          end if;
        
        when H_0390GET_0286 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0349tmp_0288(19 downto 0)) +
                            RESIZE(unsigned(params_0349tmp_0289(19 downto 0)) * 4,32));
          avm_rm_read <= '1';
          state_0401 <= H_0391READ_0287;
        
        when H_0391READ_0287 =>
          state_0401 <= H_0392DSL_Q_0322;
        
        when H_0392DSL_Q_0322 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0290 <= avm_rm_readdata;
            state_0401 <= H_0393SEQ_0352;
          else
            state_0401 <= H_0391READ_0287;
          end if;
        
        when H_0393SEQ_0352 =>
          v <= v_0290;
          state_0401 <= H_0374TMP_0330;
        
        when H_0374TMP_0330 =>
          params_0355dsl_0316 <= params_0338a;
          params_0355dsl_0317 <= params_0339i;
          state_0401 <= H_0383DSL_Q_0318;
        
        when H_0383DSL_Q_0318 =>
          params_0358tmp_0293 <= params_0338a;
          params_0358tmp_0294 <= params_0339j;
          state_0401 <= H_0386GET_0291;
        
        when H_0386GET_0291 =>
          avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0358tmp_0293(19 downto 0)) +
                            RESIZE(unsigned(params_0358tmp_0294(19 downto 0)) * 4,32));
          avm_rm_read <= '1';
          state_0401 <= H_0387READ_0292;
        
        when H_0387READ_0292 =>
          state_0401 <= H_0388DSL_Q_0321;
        
        when H_0388DSL_Q_0321 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_0295 <= avm_rm_readdata;
            state_0401 <= H_0389SEQ_0361;
          else
            state_0401 <= H_0387READ_0292;
          end if;
        
        when H_0389SEQ_0361 =>
          dsl_0319 <= v_0295;
          state_0401 <= H_0385TMP_0333;
        
        when H_0385TMP_0333 =>
          dsl_0315 <= dsl_0319;
          state_0401 <= H_0384TMP_0332;
        
        when H_0384TMP_0332 =>
          params_0354tmp_0298 <= dsl_0315;
          params_0354tmp_0299 <= params_0355dsl_0316;
          params_0354tmp_0300 <= params_0355dsl_0317;
          state_0401 <= H_0380EVAL_0296;
        
        when H_0380EVAL_0296 =>
          avm_wm_writedata <= params_0354tmp_0298;
          avm_wm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0354tmp_0299(19 downto 0)) +
                            RESIZE(unsigned(params_0354tmp_0300(19 downto 0)) * 4,32));
          avm_wm_write <= '1';
          state_0401 <= H_0381WRITE_0297;
        
        when H_0381WRITE_0297 =>
          state_0401 <= H_0382DSL_Q_0314;
        
        when H_0382DSL_Q_0314 =>
          if avm_wm_waitrequest = '0' then
            avm_wm_write <= '0';
            wildcard_0284 <= UNIT_VALUE;
            state_0401 <= H_0375TMP_0331;
          else
            state_0401 <= H_0381WRITE_0297;
          end if;
        
        when H_0375TMP_0331 =>
          params_0365tmp_0303 <= v;
          params_0365tmp_0304 <= params_0338a;
          params_0365tmp_0305 <= params_0339j;
          state_0401 <= H_0377EVAL_0301;
        
        when H_0377EVAL_0301 =>
          avm_wm_writedata <= params_0365tmp_0303;
          avm_wm_address <= std_logic_vector(unsigned(caml_heap_base) +
                            unsigned(params_0365tmp_0304(19 downto 0)) +
                            RESIZE(unsigned(params_0365tmp_0305(19 downto 0)) * 4,32));
          avm_wm_write <= '1';
          state_0401 <= H_0378WRITE_0302;
        
        when H_0378WRITE_0302 =>
          state_0401 <= H_0379DSL_Q_0313;
        
        when H_0379DSL_Q_0313 =>
          if avm_wm_waitrequest = '0' then
            avm_wm_write <= '0';
            wildcard_0285 <= UNIT_VALUE;
            state_0401 <= H_0376TMP_0334;
          else
            state_0401 <= H_0378WRITE_0302;
          end if;
        
        when H_0376TMP_0334 =>
          params_0339i <= params_0339i + to_signed(1,31);
          params_0339j <= params_0339j - to_signed(1,31);
          state_0401 <= H_0372AUX;
        
      end case;
    end if;
  end process;
  
end architecture;
