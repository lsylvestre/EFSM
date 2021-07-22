library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.misc_types.all;

entity ref_fact is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal start : in std_logic;
       signal r : in caml_ptr;
       signal caml_heap_base : in caml_value;
       signal avm_rm_waitrequest : in std_logic;
       signal avm_rm_readdata : in caml_value;
       signal result : out caml_int;
       signal rdy : out std_logic := '1';
       signal avm_rm_read : out std_logic := '0';
       signal avm_rm_address : out caml_value);
end entity;
architecture RTL of ref_fact is
  signal v_8 : caml_value;
  signal v_4 : caml_value;
  signal params_63n : caml_int;
  signal params_63acc : caml_int;
  signal params_57r_3 : caml_ptr;
  signal params_55n : caml_int;
  signal params_51n : caml_int;
  signal params_51acc : caml_int;
  signal params_45r_7 : caml_ptr;
  signal params_43n : caml_int;
  signal params_37n : caml_int;
  signal params_37acc : caml_int;
  signal params_36n : caml_int;
  signal dsl_cond_9 : boolean;
  signal dsl_23 : caml_int;
  signal dsl_19 : caml_int;
  signal dsl_15 : caml_int;
  signal dsl_12 : caml_int;
  signal dsl_11 : caml_int;
  
  type state_108_T is (H_70Q_69, H_71IDLE, H_72SEQ_33, H_73SEQ_68, 
                       H_104FACT, H_105AUX, H_106DSL_Q_25, H_107SEQ_39, 
                       H_102TMP_27, H_103SEQ_40, H_74TMP_26, H_75DSL_Q_22, 
                       H_95GET_5, H_96SEQ_50, H_97READ_6, H_98DSL_Q_21, 
                       H_99SEQ_49, H_100SEQ_48, H_94TMP_29, H_90FACT, 
                       H_91AUX, H_92DSL_Q_18, H_93SEQ_53, H_76TMP_28, 
                       H_84GET_1, H_85SEQ_62, H_86READ_2, H_87DSL_Q_17, 
                       H_88SEQ_61, H_89SEQ_60, H_83TMP_31, H_79FACT, 
                       H_80AUX, H_81DSL_Q_14, H_82SEQ_65, H_77TMP_30, 
                       H_78SEQ_66, H_101SEQ_67);
  signal state_108 : state_108_T;
begin
  process(reset,clk) begin
    if reset = '1' then
      state_108 <= H_70Q_69;
        v_8 <= "00000000000000000000000000000000";
        v_4 <= "00000000000000000000000000000000";
        params_63n <= to_signed(0,31);
        params_63acc <= to_signed(0,31);
        params_57r_3 <= "00000000000000000000000000000000";
        params_55n <= to_signed(0,31);
        params_51n <= to_signed(0,31);
        params_51acc <= to_signed(0,31);
        params_45r_7 <= "00000000000000000000000000000000";
        params_43n <= to_signed(0,31);
        params_37n <= to_signed(0,31);
        params_37acc <= to_signed(0,31);
        params_36n <= to_signed(0,31);
        dsl_cond_9 <= false;
        dsl_23 <= to_signed(0,31);
        dsl_19 <= to_signed(0,31);
        dsl_15 <= to_signed(0,31);
        dsl_12 <= to_signed(0,31);
        dsl_11 <= to_signed(0,31);
    elsif rising_edge(clk) then
      case state_108 is
        when H_70Q_69 =>
          if true then
            
            state_108 <= H_71IDLE;
          end if;
        when H_71IDLE =>
          if start /= '1' then
            rdy <= '1';
            state_108 <= H_72SEQ_33;
          elsif start = '1' then
            rdy <= '0';
            state_108 <= H_73SEQ_68;
          end if;
        when H_72SEQ_33 =>
          if true then
            
            state_108 <= H_71IDLE;
          end if;
        when H_73SEQ_68 =>
          if true then
            params_36n <= to_signed(6,31);
            state_108 <= H_104FACT;
          end if;
        when H_104FACT =>
          if true then
            params_37n <= params_36n;
            params_37acc <= to_signed(1,31);
            state_108 <= H_105AUX;
          end if;
        when H_105AUX =>
          if true then
            
            state_108 <= H_106DSL_Q_25;
          end if;
        when H_106DSL_Q_25 =>
          if params_37n <= to_signed(0,31) then
            dsl_23 <= params_37acc;
            state_108 <= H_107SEQ_39;
          elsif not (params_37n <= to_signed(0,31)) then
            params_37n <= params_37n - to_signed(1,31);
            params_37acc <= RESIZE((params_37n * params_37acc),31);
            state_108 <= H_105AUX;
          end if;
        when H_107SEQ_39 =>
          if true then
            
            state_108 <= H_102TMP_27;
          end if;
        when H_102TMP_27 =>
          if true then
            dsl_cond_9 <= dsl_23 = to_signed(720,31);
            state_108 <= H_103SEQ_40;
          end if;
        when H_103SEQ_40 =>
          if true then
            
            state_108 <= H_74TMP_26;
          end if;
        when H_74TMP_26 =>
          if true then
            
            state_108 <= H_75DSL_Q_22;
          end if;
        when H_75DSL_Q_22 =>
          if dsl_cond_9 then
            params_45r_7 <= r;
            state_108 <= H_95GET_5;
          elsif not dsl_cond_9 then
            result <= to_signed(42,31);
            state_108 <= H_101SEQ_67;
          end if;
        when H_95GET_5 =>
          if true then
            avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) + unsigned(params_45r_7(19 downto 0)));
            avm_rm_read <= '1';
            state_108 <= H_96SEQ_50;
          end if;
        when H_96SEQ_50 =>
          if true then
            
            state_108 <= H_97READ_6;
          end if;
        when H_97READ_6 =>
          if true then
            
            state_108 <= H_98DSL_Q_21;
          end if;
        when H_98DSL_Q_21 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_8 <= avm_rm_readdata;
            state_108 <= H_99SEQ_49;
          elsif not (avm_rm_waitrequest = '0') then
            
            state_108 <= H_97READ_6;
          end if;
        when H_99SEQ_49 =>
          if true then
            dsl_19 <= signed(v_8(31 downto 1));
            state_108 <= H_100SEQ_48;
          end if;
        when H_100SEQ_48 =>
          if true then
            
            state_108 <= H_94TMP_29;
          end if;
        when H_94TMP_29 =>
          if true then
            params_43n <= dsl_19;
            state_108 <= H_90FACT;
          end if;
        when H_90FACT =>
          if true then
            params_51n <= params_43n;
            params_51acc <= to_signed(1,31);
            state_108 <= H_91AUX;
          end if;
        when H_91AUX =>
          if true then
            
            state_108 <= H_92DSL_Q_18;
          end if;
        when H_92DSL_Q_18 =>
          if params_51n <= to_signed(0,31) then
            dsl_12 <= params_51acc;
            state_108 <= H_93SEQ_53;
          elsif not (params_51n <= to_signed(0,31)) then
            params_51n <= params_51n - to_signed(1,31);
            params_51acc <= RESIZE((params_51n * params_51acc),31);
            state_108 <= H_91AUX;
          end if;
        when H_93SEQ_53 =>
          if true then
            
            state_108 <= H_76TMP_28;
          end if;
        when H_76TMP_28 =>
          if true then
            params_57r_3 <= r;
            state_108 <= H_84GET_1;
          end if;
        when H_84GET_1 =>
          if true then
            avm_rm_address <= std_logic_vector(unsigned(caml_heap_base) + unsigned(params_57r_3(19 downto 0)));
            avm_rm_read <= '1';
            state_108 <= H_85SEQ_62;
          end if;
        when H_85SEQ_62 =>
          if true then
            
            state_108 <= H_86READ_2;
          end if;
        when H_86READ_2 =>
          if true then
            
            state_108 <= H_87DSL_Q_17;
          end if;
        when H_87DSL_Q_17 =>
          if avm_rm_waitrequest = '0' then
            avm_rm_read <= '0';
            v_4 <= avm_rm_readdata;
            state_108 <= H_88SEQ_61;
          elsif not (avm_rm_waitrequest = '0') then
            
            state_108 <= H_86READ_2;
          end if;
        when H_88SEQ_61 =>
          if true then
            dsl_15 <= signed(v_4(31 downto 1));
            state_108 <= H_89SEQ_60;
          end if;
        when H_89SEQ_60 =>
          if true then
            
            state_108 <= H_83TMP_31;
          end if;
        when H_83TMP_31 =>
          if true then
            params_55n <= dsl_15;
            state_108 <= H_79FACT;
          end if;
        when H_79FACT =>
          if true then
            params_63n <= params_55n;
            params_63acc <= to_signed(1,31);
            state_108 <= H_80AUX;
          end if;
        when H_80AUX =>
          if true then
            
            state_108 <= H_81DSL_Q_14;
          end if;
        when H_81DSL_Q_14 =>
          if params_63n <= to_signed(0,31) then
            dsl_11 <= params_63acc;
            state_108 <= H_82SEQ_65;
          elsif not (params_63n <= to_signed(0,31)) then
            params_63n <= params_63n - to_signed(1,31);
            params_63acc <= RESIZE((params_63n * params_63acc),31);
            state_108 <= H_80AUX;
          end if;
        when H_82SEQ_65 =>
          if true then
            
            state_108 <= H_77TMP_30;
          end if;
        when H_77TMP_30 =>
          if true then
            result <= dsl_11 + dsl_12;
            state_108 <= H_78SEQ_66;
          end if;
        when H_78SEQ_66 =>
          if true then
            
            state_108 <= H_71IDLE;
          end if;
        when H_101SEQ_67 =>
          if true then
            
            state_108 <= H_71IDLE;
          end if;
      end case;
    end if;
  end process;
  
end architecture;
