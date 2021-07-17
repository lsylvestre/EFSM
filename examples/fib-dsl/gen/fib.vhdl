library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fib is
  port(signal clk : in std_logic;
       signal reset : in std_logic;
       signal x8 : in integer;
       signal x7 : in integer;
       signal x6 : in integer;
       signal x4 : in integer;
       signal x3 : in integer;
       signal x2 : in integer;
       signal x1 : in integer;
       signal start : in std_logic;
       signal result : out integer;
       signal rdy : out std_logic);
end entity;
architecture RTL of fib is
  signal rdy_690 : boolean;
  signal r_700 : integer;
  signal params_76n : integer;
  signal params_76b : integer;
  signal params_76a : integer;
  signal params_75n : integer;
  signal rdy_691 : boolean;
  signal r_701 : integer;
  signal params_83n : integer;
  signal params_83b : integer;
  signal params_83a : integer;
  signal params_82n : integer;
  signal start_66 : boolean;
  signal rdy_620 : boolean;
  signal r_630 : integer;
  signal dsl_20 : integer;
  signal dsl_19 : integer;
  signal rdy_621 : boolean;
  signal r_631 : integer;
  signal params_96n : integer;
  signal params_96b : integer;
  signal params_96a : integer;
  signal params_95n : integer;
  signal start_59 : boolean;
  signal rdy_550 : boolean;
  signal r_560 : integer;
  signal dsl_17 : integer;
  signal dsl_16 : integer;
  signal rdy_551 : boolean;
  signal r_561 : integer;
  signal params_109n : integer;
  signal params_109b : integer;
  signal params_109a : integer;
  signal params_108n : integer;
  signal start_52 : boolean;
  signal rdy_480 : boolean;
  signal r_490 : integer;
  signal dsl_14 : integer;
  signal dsl_13 : integer;
  signal rdy_481 : boolean;
  signal r_491 : integer;
  signal params_122n : integer;
  signal params_122b : integer;
  signal params_122a : integer;
  signal params_121n : integer;
  signal start_45 : boolean;
  signal rdy_410 : boolean;
  signal r_420 : integer;
  signal dsl_11 : integer;
  signal dsl_10 : integer;
  signal rdy_411 : boolean;
  signal r_421 : integer;
  signal params_135n : integer;
  signal params_135b : integer;
  signal params_135a : integer;
  signal params_134n : integer;
  signal start_38 : boolean;
  signal rdy_340 : boolean;
  signal r_350 : integer;
  signal dsl_8 : integer;
  signal dsl_7 : integer;
  signal rdy_341 : boolean;
  signal r_351 : integer;
  signal params_148n : integer;
  signal params_148b : integer;
  signal params_148a : integer;
  signal params_147n : integer;
  signal start_31 : boolean;
  signal rdy_270 : boolean;
  signal r_280 : integer;
  signal dsl_5 : integer;
  signal dsl_4 : integer;
  signal rdy_271 : boolean;
  signal r_281 : integer;
  signal params_161n : integer;
  signal params_161b : integer;
  signal params_161a : integer;
  signal params_160n : integer;
  signal start_24 : boolean;
  signal dsl_2 : integer;
  signal dsl_1 : integer;
  
  type state_243_T is (LEVEL_168Q_78, LEVEL_169IDLE_650, LEVEL_169WAIT_680, 
                       LEVEL_170Q_710, LEVEL_171FIB, LEVEL_172AUX, 
                       LEVEL_173DSL_Q_22);
  signal state_243 : state_243_T;
  type state_244_T is (LEVEL_174Q_85, LEVEL_175IDLE_651, LEVEL_175WAIT_681, 
                       LEVEL_176Q_711, LEVEL_177FIB, LEVEL_178AUX, 
                       LEVEL_179DSL_Q_21);
  signal state_244 : state_244_T;
  type state_245_T is (LEVEL_180Q_91, LEVEL_181IDLE_580, LEVEL_181WAIT_610, 
                       LEVEL_182Q_640, LEVEL_183TOP_67, LEVEL_183WAIT_68);
  signal state_245 : state_245_T;
  type state_246_T is (LEVEL_184Q_98, LEVEL_185IDLE_581, LEVEL_185WAIT_611, 
                       LEVEL_186Q_641, LEVEL_187FIB, LEVEL_188AUX, 
                       LEVEL_189DSL_Q_18);
  signal state_246 : state_246_T;
  type state_247_T is (LEVEL_190Q_104, LEVEL_191IDLE_510, LEVEL_191WAIT_540, 
                       LEVEL_192Q_570, LEVEL_193TOP_60, LEVEL_193WAIT_61);
  signal state_247 : state_247_T;
  type state_248_T is (LEVEL_194Q_111, LEVEL_195IDLE_511, LEVEL_195WAIT_541, 
                       LEVEL_196Q_571, LEVEL_197FIB, LEVEL_198AUX, 
                       LEVEL_199DSL_Q_15);
  signal state_248 : state_248_T;
  type state_249_T is (LEVEL_200Q_117, LEVEL_201IDLE_440, LEVEL_201WAIT_470, 
                       LEVEL_202Q_500, LEVEL_203TOP_53, LEVEL_203WAIT_54);
  signal state_249 : state_249_T;
  type state_250_T is (LEVEL_204Q_124, LEVEL_205IDLE_441, LEVEL_205WAIT_471, 
                       LEVEL_206Q_501, LEVEL_207FIB, LEVEL_208AUX, 
                       LEVEL_209DSL_Q_12);
  signal state_250 : state_250_T;
  type state_251_T is (LEVEL_210Q_130, LEVEL_211IDLE_370, LEVEL_211WAIT_400, 
                       LEVEL_212Q_430, LEVEL_213TOP_46, LEVEL_213WAIT_47);
  signal state_251 : state_251_T;
  type state_252_T is (LEVEL_214Q_137, LEVEL_215IDLE_371, LEVEL_215WAIT_401, 
                       LEVEL_216Q_431, LEVEL_217FIB, LEVEL_218AUX, 
                       LEVEL_219DSL_Q_9);
  signal state_252 : state_252_T;
  type state_253_T is (LEVEL_220Q_143, LEVEL_221IDLE_300, LEVEL_221WAIT_330, 
                       LEVEL_222Q_360, LEVEL_223TOP_39, LEVEL_223WAIT_40);
  signal state_253 : state_253_T;
  type state_254_T is (LEVEL_224Q_150, LEVEL_225IDLE_301, LEVEL_225WAIT_331, 
                       LEVEL_226Q_361, LEVEL_227FIB, LEVEL_228AUX, 
                       LEVEL_229DSL_Q_6);
  signal state_254 : state_254_T;
  type state_255_T is (LEVEL_230Q_156, LEVEL_231IDLE_230, LEVEL_231WAIT_260, 
                       LEVEL_232Q_290, LEVEL_233TOP_32, LEVEL_233WAIT_33);
  signal state_255 : state_255_T;
  type state_256_T is (LEVEL_234Q_163, LEVEL_235IDLE_231, LEVEL_235WAIT_261, 
                       LEVEL_236Q_291, LEVEL_237FIB, LEVEL_238AUX, 
                       LEVEL_239DSL_Q_3);
  signal state_256 : state_256_T;
  type state_257_T is (LEVEL_240Q_167, LEVEL_241IDLE, LEVEL_242TOP_25, 
                       LEVEL_242WAIT_26);
  signal state_257 : state_257_T;
begin
  process(reset,clk) begin
    if reset = '1' then
      state_243 <= LEVEL_168Q_78;
        rdy_690 <= false;
        r_700 <= 0;
        params_76n <= 0;
        params_76b <= 0;
        params_76a <= 0;
        params_75n <= 0;
    elsif rising_edge(clk) then
      case state_243 is
        when LEVEL_168Q_78 =>
          if true then
            
            state_243 <= LEVEL_169IDLE_650;
          else NULL;
          end if;
        when LEVEL_169IDLE_650 =>
          if true then
            rdy_690 <= true;
            state_243 <= LEVEL_169WAIT_680;
          else NULL;
          end if;
        when LEVEL_169WAIT_680 =>
          if start_66 then
            rdy_690 <= false;
            state_243 <= LEVEL_170Q_710;
          else NULL;
          end if;
        when LEVEL_170Q_710 =>
          if true then
            params_75n <= x1;
            state_243 <= LEVEL_171FIB;
          else NULL;
          end if;
        when LEVEL_171FIB =>
          if true then
            params_76n <= params_75n;
            params_76a <= 1;
            params_76b <= 1;
            state_243 <= LEVEL_172AUX;
          else NULL;
          end if;
        when LEVEL_172AUX =>
          if true then
            
            state_243 <= LEVEL_173DSL_Q_22;
          else NULL;
          end if;
        when LEVEL_173DSL_Q_22 =>
          if params_76n <= 0 then
            r_700 <= params_76a;
            state_243 <= LEVEL_169IDLE_650;
          elsif not (params_76n <= 0) then
            params_76n <= params_76n - 1;
            params_76a <= params_76b;
            params_76b <= params_76a + params_76b;
            state_243 <= LEVEL_172AUX;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_244 <= LEVEL_174Q_85;
        rdy_691 <= false;
        r_701 <= 0;
        params_83n <= 0;
        params_83b <= 0;
        params_83a <= 0;
        params_82n <= 0;
    elsif rising_edge(clk) then
      case state_244 is
        when LEVEL_174Q_85 =>
          if true then
            
            state_244 <= LEVEL_175IDLE_651;
          else NULL;
          end if;
        when LEVEL_175IDLE_651 =>
          if true then
            rdy_691 <= true;
            state_244 <= LEVEL_175WAIT_681;
          else NULL;
          end if;
        when LEVEL_175WAIT_681 =>
          if start_66 then
            rdy_691 <= false;
            state_244 <= LEVEL_176Q_711;
          else NULL;
          end if;
        when LEVEL_176Q_711 =>
          if true then
            params_82n <= x2;
            state_244 <= LEVEL_177FIB;
          else NULL;
          end if;
        when LEVEL_177FIB =>
          if true then
            params_83n <= params_82n;
            params_83a <= 1;
            params_83b <= 1;
            state_244 <= LEVEL_178AUX;
          else NULL;
          end if;
        when LEVEL_178AUX =>
          if true then
            
            state_244 <= LEVEL_179DSL_Q_21;
          else NULL;
          end if;
        when LEVEL_179DSL_Q_21 =>
          if params_83n <= 0 then
            r_701 <= params_83a;
            state_244 <= LEVEL_175IDLE_651;
          elsif not (params_83n <= 0) then
            params_83n <= params_83n - 1;
            params_83a <= params_83b;
            params_83b <= params_83a + params_83b;
            state_244 <= LEVEL_178AUX;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_245 <= LEVEL_180Q_91;
        start_66 <= false;
        rdy_620 <= false;
        r_630 <= 0;
        dsl_20 <= 0;
        dsl_19 <= 0;
    elsif rising_edge(clk) then
      case state_245 is
        when LEVEL_180Q_91 =>
          if true then
            
            state_245 <= LEVEL_181IDLE_580;
          else NULL;
          end if;
        when LEVEL_181IDLE_580 =>
          if true then
            rdy_620 <= true;
            state_245 <= LEVEL_181WAIT_610;
          else NULL;
          end if;
        when LEVEL_181WAIT_610 =>
          if start_59 then
            rdy_620 <= false;
            state_245 <= LEVEL_182Q_640;
          else NULL;
          end if;
        when LEVEL_182Q_640 =>
          if true then
            start_66 <= true;
            state_245 <= LEVEL_183TOP_67;
          else NULL;
          end if;
        when LEVEL_183TOP_67 =>
          if true then
            start_66 <= false;
            state_245 <= LEVEL_183WAIT_68;
          else NULL;
          end if;
        when LEVEL_183WAIT_68 =>
          if rdy_690 and (rdy_691 and true) then
            dsl_19 <= r_700;
            dsl_20 <= r_701;
            r_630 <= dsl_19 + dsl_20;
            state_245 <= LEVEL_181IDLE_580;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_246 <= LEVEL_184Q_98;
        rdy_621 <= false;
        r_631 <= 0;
        params_96n <= 0;
        params_96b <= 0;
        params_96a <= 0;
        params_95n <= 0;
    elsif rising_edge(clk) then
      case state_246 is
        when LEVEL_184Q_98 =>
          if true then
            
            state_246 <= LEVEL_185IDLE_581;
          else NULL;
          end if;
        when LEVEL_185IDLE_581 =>
          if true then
            rdy_621 <= true;
            state_246 <= LEVEL_185WAIT_611;
          else NULL;
          end if;
        when LEVEL_185WAIT_611 =>
          if start_59 then
            rdy_621 <= false;
            state_246 <= LEVEL_186Q_641;
          else NULL;
          end if;
        when LEVEL_186Q_641 =>
          if true then
            params_95n <= x3;
            state_246 <= LEVEL_187FIB;
          else NULL;
          end if;
        when LEVEL_187FIB =>
          if true then
            params_96n <= params_95n;
            params_96a <= 1;
            params_96b <= 1;
            state_246 <= LEVEL_188AUX;
          else NULL;
          end if;
        when LEVEL_188AUX =>
          if true then
            
            state_246 <= LEVEL_189DSL_Q_18;
          else NULL;
          end if;
        when LEVEL_189DSL_Q_18 =>
          if params_96n <= 0 then
            r_631 <= params_96a;
            state_246 <= LEVEL_185IDLE_581;
          elsif not (params_96n <= 0) then
            params_96n <= params_96n - 1;
            params_96a <= params_96b;
            params_96b <= params_96a + params_96b;
            state_246 <= LEVEL_188AUX;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_247 <= LEVEL_190Q_104;
        start_59 <= false;
        rdy_550 <= false;
        r_560 <= 0;
        dsl_17 <= 0;
        dsl_16 <= 0;
    elsif rising_edge(clk) then
      case state_247 is
        when LEVEL_190Q_104 =>
          if true then
            
            state_247 <= LEVEL_191IDLE_510;
          else NULL;
          end if;
        when LEVEL_191IDLE_510 =>
          if true then
            rdy_550 <= true;
            state_247 <= LEVEL_191WAIT_540;
          else NULL;
          end if;
        when LEVEL_191WAIT_540 =>
          if start_52 then
            rdy_550 <= false;
            state_247 <= LEVEL_192Q_570;
          else NULL;
          end if;
        when LEVEL_192Q_570 =>
          if true then
            start_59 <= true;
            state_247 <= LEVEL_193TOP_60;
          else NULL;
          end if;
        when LEVEL_193TOP_60 =>
          if true then
            start_59 <= false;
            state_247 <= LEVEL_193WAIT_61;
          else NULL;
          end if;
        when LEVEL_193WAIT_61 =>
          if rdy_620 and (rdy_621 and true) then
            dsl_16 <= r_630;
            dsl_17 <= r_631;
            r_560 <= dsl_16 + dsl_17;
            state_247 <= LEVEL_191IDLE_510;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_248 <= LEVEL_194Q_111;
        rdy_551 <= false;
        r_561 <= 0;
        params_109n <= 0;
        params_109b <= 0;
        params_109a <= 0;
        params_108n <= 0;
    elsif rising_edge(clk) then
      case state_248 is
        when LEVEL_194Q_111 =>
          if true then
            
            state_248 <= LEVEL_195IDLE_511;
          else NULL;
          end if;
        when LEVEL_195IDLE_511 =>
          if true then
            rdy_551 <= true;
            state_248 <= LEVEL_195WAIT_541;
          else NULL;
          end if;
        when LEVEL_195WAIT_541 =>
          if start_52 then
            rdy_551 <= false;
            state_248 <= LEVEL_196Q_571;
          else NULL;
          end if;
        when LEVEL_196Q_571 =>
          if true then
            params_108n <= x4;
            state_248 <= LEVEL_197FIB;
          else NULL;
          end if;
        when LEVEL_197FIB =>
          if true then
            params_109n <= params_108n;
            params_109a <= 1;
            params_109b <= 1;
            state_248 <= LEVEL_198AUX;
          else NULL;
          end if;
        when LEVEL_198AUX =>
          if true then
            
            state_248 <= LEVEL_199DSL_Q_15;
          else NULL;
          end if;
        when LEVEL_199DSL_Q_15 =>
          if params_109n <= 0 then
            r_561 <= params_109a;
            state_248 <= LEVEL_195IDLE_511;
          elsif not (params_109n <= 0) then
            params_109n <= params_109n - 1;
            params_109a <= params_109b;
            params_109b <= params_109a + params_109b;
            state_248 <= LEVEL_198AUX;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_249 <= LEVEL_200Q_117;
        start_52 <= false;
        rdy_480 <= false;
        r_490 <= 0;
        dsl_14 <= 0;
        dsl_13 <= 0;
    elsif rising_edge(clk) then
      case state_249 is
        when LEVEL_200Q_117 =>
          if true then
            
            state_249 <= LEVEL_201IDLE_440;
          else NULL;
          end if;
        when LEVEL_201IDLE_440 =>
          if true then
            rdy_480 <= true;
            state_249 <= LEVEL_201WAIT_470;
          else NULL;
          end if;
        when LEVEL_201WAIT_470 =>
          if start_45 then
            rdy_480 <= false;
            state_249 <= LEVEL_202Q_500;
          else NULL;
          end if;
        when LEVEL_202Q_500 =>
          if true then
            start_52 <= true;
            state_249 <= LEVEL_203TOP_53;
          else NULL;
          end if;
        when LEVEL_203TOP_53 =>
          if true then
            start_52 <= false;
            state_249 <= LEVEL_203WAIT_54;
          else NULL;
          end if;
        when LEVEL_203WAIT_54 =>
          if rdy_550 and (rdy_551 and true) then
            dsl_13 <= r_560;
            dsl_14 <= r_561;
            r_490 <= dsl_13 + dsl_14;
            state_249 <= LEVEL_201IDLE_440;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_250 <= LEVEL_204Q_124;
        rdy_481 <= false;
        r_491 <= 0;
        params_122n <= 0;
        params_122b <= 0;
        params_122a <= 0;
        params_121n <= 0;
    elsif rising_edge(clk) then
      case state_250 is
        when LEVEL_204Q_124 =>
          if true then
            
            state_250 <= LEVEL_205IDLE_441;
          else NULL;
          end if;
        when LEVEL_205IDLE_441 =>
          if true then
            rdy_481 <= true;
            state_250 <= LEVEL_205WAIT_471;
          else NULL;
          end if;
        when LEVEL_205WAIT_471 =>
          if start_45 then
            rdy_481 <= false;
            state_250 <= LEVEL_206Q_501;
          else NULL;
          end if;
        when LEVEL_206Q_501 =>
          if true then
            params_121n <= 5;
            state_250 <= LEVEL_207FIB;
          else NULL;
          end if;
        when LEVEL_207FIB =>
          if true then
            params_122n <= params_121n;
            params_122a <= 1;
            params_122b <= 1;
            state_250 <= LEVEL_208AUX;
          else NULL;
          end if;
        when LEVEL_208AUX =>
          if true then
            
            state_250 <= LEVEL_209DSL_Q_12;
          else NULL;
          end if;
        when LEVEL_209DSL_Q_12 =>
          if params_122n <= 0 then
            r_491 <= params_122a;
            state_250 <= LEVEL_205IDLE_441;
          elsif not (params_122n <= 0) then
            params_122n <= params_122n - 1;
            params_122a <= params_122b;
            params_122b <= params_122a + params_122b;
            state_250 <= LEVEL_208AUX;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_251 <= LEVEL_210Q_130;
        start_45 <= false;
        rdy_410 <= false;
        r_420 <= 0;
        dsl_11 <= 0;
        dsl_10 <= 0;
    elsif rising_edge(clk) then
      case state_251 is
        when LEVEL_210Q_130 =>
          if true then
            
            state_251 <= LEVEL_211IDLE_370;
          else NULL;
          end if;
        when LEVEL_211IDLE_370 =>
          if true then
            rdy_410 <= true;
            state_251 <= LEVEL_211WAIT_400;
          else NULL;
          end if;
        when LEVEL_211WAIT_400 =>
          if start_38 then
            rdy_410 <= false;
            state_251 <= LEVEL_212Q_430;
          else NULL;
          end if;
        when LEVEL_212Q_430 =>
          if true then
            start_45 <= true;
            state_251 <= LEVEL_213TOP_46;
          else NULL;
          end if;
        when LEVEL_213TOP_46 =>
          if true then
            start_45 <= false;
            state_251 <= LEVEL_213WAIT_47;
          else NULL;
          end if;
        when LEVEL_213WAIT_47 =>
          if rdy_480 and (rdy_481 and true) then
            dsl_10 <= r_490;
            dsl_11 <= r_491;
            r_420 <= dsl_10 + dsl_11;
            state_251 <= LEVEL_211IDLE_370;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_252 <= LEVEL_214Q_137;
        rdy_411 <= false;
        r_421 <= 0;
        params_135n <= 0;
        params_135b <= 0;
        params_135a <= 0;
        params_134n <= 0;
    elsif rising_edge(clk) then
      case state_252 is
        when LEVEL_214Q_137 =>
          if true then
            
            state_252 <= LEVEL_215IDLE_371;
          else NULL;
          end if;
        when LEVEL_215IDLE_371 =>
          if true then
            rdy_411 <= true;
            state_252 <= LEVEL_215WAIT_401;
          else NULL;
          end if;
        when LEVEL_215WAIT_401 =>
          if start_38 then
            rdy_411 <= false;
            state_252 <= LEVEL_216Q_431;
          else NULL;
          end if;
        when LEVEL_216Q_431 =>
          if true then
            params_134n <= x6;
            state_252 <= LEVEL_217FIB;
          else NULL;
          end if;
        when LEVEL_217FIB =>
          if true then
            params_135n <= params_134n;
            params_135a <= 1;
            params_135b <= 1;
            state_252 <= LEVEL_218AUX;
          else NULL;
          end if;
        when LEVEL_218AUX =>
          if true then
            
            state_252 <= LEVEL_219DSL_Q_9;
          else NULL;
          end if;
        when LEVEL_219DSL_Q_9 =>
          if params_135n <= 0 then
            r_421 <= params_135a;
            state_252 <= LEVEL_215IDLE_371;
          elsif not (params_135n <= 0) then
            params_135n <= params_135n - 1;
            params_135a <= params_135b;
            params_135b <= params_135a + params_135b;
            state_252 <= LEVEL_218AUX;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_253 <= LEVEL_220Q_143;
        start_38 <= false;
        rdy_340 <= false;
        r_350 <= 0;
        dsl_8 <= 0;
        dsl_7 <= 0;
    elsif rising_edge(clk) then
      case state_253 is
        when LEVEL_220Q_143 =>
          if true then
            
            state_253 <= LEVEL_221IDLE_300;
          else NULL;
          end if;
        when LEVEL_221IDLE_300 =>
          if true then
            rdy_340 <= true;
            state_253 <= LEVEL_221WAIT_330;
          else NULL;
          end if;
        when LEVEL_221WAIT_330 =>
          if start_31 then
            rdy_340 <= false;
            state_253 <= LEVEL_222Q_360;
          else NULL;
          end if;
        when LEVEL_222Q_360 =>
          if true then
            start_38 <= true;
            state_253 <= LEVEL_223TOP_39;
          else NULL;
          end if;
        when LEVEL_223TOP_39 =>
          if true then
            start_38 <= false;
            state_253 <= LEVEL_223WAIT_40;
          else NULL;
          end if;
        when LEVEL_223WAIT_40 =>
          if rdy_410 and (rdy_411 and true) then
            dsl_7 <= r_420;
            dsl_8 <= r_421;
            r_350 <= dsl_7 + dsl_8;
            state_253 <= LEVEL_221IDLE_300;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_254 <= LEVEL_224Q_150;
        rdy_341 <= false;
        r_351 <= 0;
        params_148n <= 0;
        params_148b <= 0;
        params_148a <= 0;
        params_147n <= 0;
    elsif rising_edge(clk) then
      case state_254 is
        when LEVEL_224Q_150 =>
          if true then
            
            state_254 <= LEVEL_225IDLE_301;
          else NULL;
          end if;
        when LEVEL_225IDLE_301 =>
          if true then
            rdy_341 <= true;
            state_254 <= LEVEL_225WAIT_331;
          else NULL;
          end if;
        when LEVEL_225WAIT_331 =>
          if start_31 then
            rdy_341 <= false;
            state_254 <= LEVEL_226Q_361;
          else NULL;
          end if;
        when LEVEL_226Q_361 =>
          if true then
            params_147n <= x7;
            state_254 <= LEVEL_227FIB;
          else NULL;
          end if;
        when LEVEL_227FIB =>
          if true then
            params_148n <= params_147n;
            params_148a <= 1;
            params_148b <= 1;
            state_254 <= LEVEL_228AUX;
          else NULL;
          end if;
        when LEVEL_228AUX =>
          if true then
            
            state_254 <= LEVEL_229DSL_Q_6;
          else NULL;
          end if;
        when LEVEL_229DSL_Q_6 =>
          if params_148n <= 0 then
            r_351 <= params_148a;
            state_254 <= LEVEL_225IDLE_301;
          elsif not (params_148n <= 0) then
            params_148n <= params_148n - 1;
            params_148a <= params_148b;
            params_148b <= params_148a + params_148b;
            state_254 <= LEVEL_228AUX;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_255 <= LEVEL_230Q_156;
        start_31 <= false;
        rdy_270 <= false;
        r_280 <= 0;
        dsl_5 <= 0;
        dsl_4 <= 0;
    elsif rising_edge(clk) then
      case state_255 is
        when LEVEL_230Q_156 =>
          if true then
            
            state_255 <= LEVEL_231IDLE_230;
          else NULL;
          end if;
        when LEVEL_231IDLE_230 =>
          if true then
            rdy_270 <= true;
            state_255 <= LEVEL_231WAIT_260;
          else NULL;
          end if;
        when LEVEL_231WAIT_260 =>
          if start_24 then
            rdy_270 <= false;
            state_255 <= LEVEL_232Q_290;
          else NULL;
          end if;
        when LEVEL_232Q_290 =>
          if true then
            start_31 <= true;
            state_255 <= LEVEL_233TOP_32;
          else NULL;
          end if;
        when LEVEL_233TOP_32 =>
          if true then
            start_31 <= false;
            state_255 <= LEVEL_233WAIT_33;
          else NULL;
          end if;
        when LEVEL_233WAIT_33 =>
          if rdy_340 and (rdy_341 and true) then
            dsl_4 <= r_350;
            dsl_5 <= r_351;
            r_280 <= dsl_4 + dsl_5;
            state_255 <= LEVEL_231IDLE_230;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_256 <= LEVEL_234Q_163;
        rdy_271 <= false;
        r_281 <= 0;
        params_161n <= 0;
        params_161b <= 0;
        params_161a <= 0;
        params_160n <= 0;
    elsif rising_edge(clk) then
      case state_256 is
        when LEVEL_234Q_163 =>
          if true then
            
            state_256 <= LEVEL_235IDLE_231;
          else NULL;
          end if;
        when LEVEL_235IDLE_231 =>
          if true then
            rdy_271 <= true;
            state_256 <= LEVEL_235WAIT_261;
          else NULL;
          end if;
        when LEVEL_235WAIT_261 =>
          if start_24 then
            rdy_271 <= false;
            state_256 <= LEVEL_236Q_291;
          else NULL;
          end if;
        when LEVEL_236Q_291 =>
          if true then
            params_160n <= x8;
            state_256 <= LEVEL_237FIB;
          else NULL;
          end if;
        when LEVEL_237FIB =>
          if true then
            params_161n <= params_160n;
            params_161a <= 1;
            params_161b <= 1;
            state_256 <= LEVEL_238AUX;
          else NULL;
          end if;
        when LEVEL_238AUX =>
          if true then
            
            state_256 <= LEVEL_239DSL_Q_3;
          else NULL;
          end if;
        when LEVEL_239DSL_Q_3 =>
          if params_161n <= 0 then
            r_281 <= params_161a;
            state_256 <= LEVEL_235IDLE_231;
          elsif not (params_161n <= 0) then
            params_161n <= params_161n - 1;
            params_161a <= params_161b;
            params_161b <= params_161a + params_161b;
            state_256 <= LEVEL_238AUX;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  process(reset,clk) begin
    if reset = '1' then
      state_257 <= LEVEL_240Q_167;
        start_24 <= false;
        dsl_2 <= 0;
        dsl_1 <= 0;
    elsif rising_edge(clk) then
      case state_257 is
        when LEVEL_240Q_167 =>
          if true then
            
            state_257 <= LEVEL_241IDLE;
          else NULL;
          end if;
        when LEVEL_241IDLE =>
          if start /= '1' then
            rdy <= '1';
            state_257 <= LEVEL_241IDLE;
          elsif start = '1' then
            rdy <= '0';
            start_24 <= true;
            state_257 <= LEVEL_242TOP_25;
          else NULL;
          end if;
        when LEVEL_242TOP_25 =>
          if true then
            start_24 <= false;
            state_257 <= LEVEL_242WAIT_26;
          else NULL;
          end if;
        when LEVEL_242WAIT_26 =>
          if rdy_270 and (rdy_271 and true) then
            dsl_1 <= r_280;
            dsl_2 <= r_281;
            result <= dsl_1 + dsl_2;
            state_257 <= LEVEL_241IDLE;
          else NULL;
          end if;
      end case;
    end if;
  end process;
  
end architecture;
