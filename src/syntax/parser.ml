
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | ZERO
    | WILDCARD
    | UMINUS
    | TIMES
    | THEN
    | STD_LOGIC
    | SEMICOL
    | RPAREN
    | RIGHT_ARROW
    | RETURN
    | REF
    | REC
    | RBRACKET
    | QUOTE of (
# 24 "src/syntax/parser.mly"
       (string)
# 24 "src/syntax/parser.ml"
  )
    | PTR
    | PLUS
    | PIPE_PIPE
    | PIPE
    | ONE
    | NOT
    | NEQ
    | MINUS
    | LT
    | LPAREN
    | LIST_TL
    | LIST_HD
    | LIST
    | LET
    | LEFT_ARROW
    | LE
    | LBRACKET
    | LAND
    | INT_LIT of (
# 13 "src/syntax/parser.mly"
       (int)
# 47 "src/syntax/parser.ml"
  )
    | INT
    | IN
    | IF
    | IDENT of (
# 11 "src/syntax/parser.mly"
       (string)
# 55 "src/syntax/parser.ml"
  )
    | HAT
    | GT
    | GE
    | EQ
    | EOF
    | END
    | ELSE
    | DOT
    | COMMA
    | COLONEQ
    | COL
    | CIRCUIT
    | CALL
    | BOOL_LIT of (
# 12 "src/syntax/parser.mly"
       (bool)
# 73 "src/syntax/parser.ml"
  )
    | BOOL
    | BANG
    | AUTOMATON
    | ARRAY_LENGTH
    | ARRAY
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState380
  | MenhirState374
  | MenhirState371
  | MenhirState367
  | MenhirState364
  | MenhirState360
  | MenhirState358
  | MenhirState356
  | MenhirState355
  | MenhirState352
  | MenhirState350
  | MenhirState348
  | MenhirState346
  | MenhirState341
  | MenhirState338
  | MenhirState335
  | MenhirState327
  | MenhirState321
  | MenhirState315
  | MenhirState311
  | MenhirState305
  | MenhirState302
  | MenhirState299
  | MenhirState296
  | MenhirState293
  | MenhirState290
  | MenhirState286
  | MenhirState284
  | MenhirState274
  | MenhirState272
  | MenhirState268
  | MenhirState264
  | MenhirState260
  | MenhirState257
  | MenhirState255
  | MenhirState253
  | MenhirState251
  | MenhirState249
  | MenhirState247
  | MenhirState245
  | MenhirState243
  | MenhirState241
  | MenhirState237
  | MenhirState235
  | MenhirState232
  | MenhirState227
  | MenhirState224
  | MenhirState222
  | MenhirState221
  | MenhirState219
  | MenhirState217
  | MenhirState213
  | MenhirState212
  | MenhirState210
  | MenhirState208
  | MenhirState207
  | MenhirState203
  | MenhirState201
  | MenhirState200
  | MenhirState199
  | MenhirState198
  | MenhirState197
  | MenhirState196
  | MenhirState195
  | MenhirState194
  | MenhirState193
  | MenhirState192
  | MenhirState190
  | MenhirState184
  | MenhirState181
  | MenhirState177
  | MenhirState174
  | MenhirState172
  | MenhirState170
  | MenhirState169
  | MenhirState167
  | MenhirState165
  | MenhirState163
  | MenhirState157
  | MenhirState151
  | MenhirState149
  | MenhirState147
  | MenhirState145
  | MenhirState144
  | MenhirState142
  | MenhirState139
  | MenhirState134
  | MenhirState131
  | MenhirState128
  | MenhirState124
  | MenhirState121
  | MenhirState118
  | MenhirState113
  | MenhirState109
  | MenhirState106
  | MenhirState102
  | MenhirState100
  | MenhirState98
  | MenhirState97
  | MenhirState93
  | MenhirState91
  | MenhirState90
  | MenhirState86
  | MenhirState80
  | MenhirState77
  | MenhirState74
  | MenhirState58
  | MenhirState55
  | MenhirState51
  | MenhirState48
  | MenhirState46
  | MenhirState44
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState36
  | MenhirState34
  | MenhirState32
  | MenhirState30
  | MenhirState25
  | MenhirState22
  | MenhirState15
  | MenhirState13
  | MenhirState7
  | MenhirState6
  | MenhirState5
  | MenhirState2
  | MenhirState0

# 1 "src/syntax/parser.mly"
  
    open Ast
    open Types

# 231 "src/syntax/parser.ml"

let rec _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1543 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1539 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1537 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 36 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 253 "src/syntax/parser.ml"
            ) = 
# 46 "src/syntax/parser.mly"
                                                          ( p )
# 257 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1535) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 36 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 265 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1533) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 36 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 273 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1531) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 36 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 281 "src/syntax/parser.ml"
            )) : (
# 36 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 285 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1532)) : 'freshtv1534)) : 'freshtv1536)) : 'freshtv1538)) : 'freshtv1540)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1541 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1542)) : 'freshtv1544)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1547 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1545 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 305 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1546)) : 'freshtv1548)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_psi_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState350 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1525 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1521 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState371 _v
            | LET ->
                _menhir_run349 _menhir_env (Obj.magic _menhir_stack) MenhirState371
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState371
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState371
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState371) : 'freshtv1522)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1523 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1524)) : 'freshtv1526)
    | MenhirState374 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1529 * _menhir_state * 'tv_psi_psm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1527 * _menhir_state * 'tv_psi_psm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_psm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_psm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_psm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 356 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1528)) : 'freshtv1530)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_psi_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1515 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1511 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
            | LET ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | RETURN ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv1512)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1513 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1514)) : 'freshtv1516)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1519 * _menhir_state * 'tv_psi_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1517 * _menhir_state * 'tv_psi_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_csm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_csm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_csm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 409 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1518)) : 'freshtv1520)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState348 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1505 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1501 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1499 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 38 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 435 "src/syntax/parser.ml"
            ) = 
# 75 "src/syntax/parser.mly"
                                                         ( p )
# 439 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1497) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 38 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 447 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1495) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 38 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 455 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1493) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 38 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 463 "src/syntax/parser.ml"
            )) : (
# 38 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 467 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1494)) : 'freshtv1496)) : 'freshtv1498)) : 'freshtv1500)) : 'freshtv1502)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1503 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1504)) : 'freshtv1506)
    | MenhirState380 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1509 * _menhir_state * 'tv_automaton_psm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1507 * _menhir_state * 'tv_automaton_psm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_psm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 487 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1508)) : 'freshtv1510)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1487) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1485) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ = 
# 144 "<standard.mly>"
    ( x )
# 508 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1483) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1481 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1477 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLONEQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1473 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv1469 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ARRAY_LENGTH ->
                        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | BANG ->
                        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | BOOL_LIT _v ->
                        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState321 _v
                    | CALL ->
                        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | IDENT _v ->
                        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState321 _v
                    | IF ->
                        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | INT_LIT _v ->
                        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState321 _v
                    | LBRACKET ->
                        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | LET ->
                        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | LIST_HD ->
                        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | LIST_TL ->
                        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | LPAREN ->
                        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | MINUS ->
                        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | NOT ->
                        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | ONE ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | RPAREN ->
                        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | WILDCARD ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | ZERO ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState321
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState321) : 'freshtv1470)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv1471 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1472)) : 'freshtv1474)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1475 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1476)) : 'freshtv1478)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1479 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1480)) : 'freshtv1482)) : 'freshtv1484)) : 'freshtv1486)) : 'freshtv1488)
    | MenhirState311 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1491 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1489 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 613 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1490)) : 'freshtv1492)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_psi_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1463 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1459 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
            | LET ->
                _menhir_run166 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState181
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181) : 'freshtv1460)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1461 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1462)) : 'freshtv1464)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1467 * _menhir_state * 'tv_psi_hsm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1465 * _menhir_state * 'tv_psi_hsm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_hsm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_hsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_hsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 662 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1466)) : 'freshtv1468)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_psi_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1453 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1449 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1447 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (_2 : 'tv_option_PIPE_)), _, (l : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_automaton_efsm = 
# 49 "src/syntax/parser.mly"
                                                               ( EFSM.Automaton l )
# 690 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1445) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_automaton_efsm) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1443 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PIPE_PIPE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1437 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AUTOMATON ->
                    _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState163) : 'freshtv1438)
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1439 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 721 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1440)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1441 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1442)) : 'freshtv1444)) : 'freshtv1446)) : 'freshtv1448)) : 'freshtv1450)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1451 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1452)) : 'freshtv1454)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1457 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1455 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 748 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1456)) : 'freshtv1458)
    | _ ->
        _menhir_fail ()

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1435 * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_ty = 
# 227 "src/syntax/parser.mly"
                                       ( TCamlRef ty )
# 764 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1436)

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1433 * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_ty = 
# 229 "src/syntax/parser.mly"
                                       ( TCamlList ty )
# 778 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1434)

and _menhir_run65 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1427 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT_LIT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1423 * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
            let (_v : (
# 13 "src/syntax/parser.mly"
       (int)
# 799 "src/syntax/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1419 * _menhir_state * 'tv_ty))) * (
# 13 "src/syntax/parser.mly"
       (int)
# 810 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1417 * _menhir_state * 'tv_ty))) * (
# 13 "src/syntax/parser.mly"
       (int)
# 817 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (ty : 'tv_ty)), (n : (
# 13 "src/syntax/parser.mly"
       (int)
# 822 "src/syntax/parser.ml"
                ))) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_ty = 
# 230 "src/syntax/parser.mly"
                                       ( TArray{ty;size=TSize n} )
# 830 "src/syntax/parser.ml"
                 in
                _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1418)) : 'freshtv1420)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1421 * _menhir_state * 'tv_ty))) * (
# 13 "src/syntax/parser.mly"
       (int)
# 840 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1422)) : 'freshtv1424)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1425 * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1426)) : 'freshtv1428)
    | ARRAY | LIST | REF | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1429 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ty = 
# 228 "src/syntax/parser.mly"
                                       ( TCamlArray ty )
# 859 "src/syntax/parser.ml"
         in
        _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1430)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1431 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1432)

and _menhir_goto_nonempty_list_circuit_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_circuit_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState335 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1411 * _menhir_state * 'tv_nonempty_list_circuit_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | QUOTE _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1407 * _menhir_state * 'tv_nonempty_list_circuit_) = Obj.magic _menhir_stack in
            let (_v : (
# 24 "src/syntax/parser.mly"
       (string)
# 886 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1405 * _menhir_state * 'tv_nonempty_list_circuit_) = Obj.magic _menhir_stack in
            let ((s : (
# 24 "src/syntax/parser.mly"
       (string)
# 893 "src/syntax/parser.ml"
            )) : (
# 24 "src/syntax/parser.mly"
       (string)
# 897 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_stack, _menhir_s, (fs : 'tv_nonempty_list_circuit_)) = _menhir_stack in
            let _v : (
# 41 "src/syntax/parser.mly"
       (Ast.PLATFORM.prog)
# 903 "src/syntax/parser.ml"
            ) = 
# 240 "src/syntax/parser.mly"
                     ( (fs,s))
# 907 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1403) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 41 "src/syntax/parser.mly"
       (Ast.PLATFORM.prog)
# 915 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1401) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 41 "src/syntax/parser.mly"
       (Ast.PLATFORM.prog)
# 923 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1399) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 41 "src/syntax/parser.mly"
       (Ast.PLATFORM.prog)
# 931 "src/syntax/parser.ml"
            )) : (
# 41 "src/syntax/parser.mly"
       (Ast.PLATFORM.prog)
# 935 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1400)) : 'freshtv1402)) : 'freshtv1404)) : 'freshtv1406)) : 'freshtv1408)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1409 * _menhir_state * 'tv_nonempty_list_circuit_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1410)) : 'freshtv1412)
    | MenhirState346 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1415 * _menhir_state * 'tv_circuit) * _menhir_state * 'tv_nonempty_list_circuit_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1413 * _menhir_state * 'tv_circuit) * _menhir_state * 'tv_nonempty_list_circuit_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_circuit)), _, (xs : 'tv_nonempty_list_circuit_)) = _menhir_stack in
        let _v : 'tv_nonempty_list_circuit_ = 
# 223 "<standard.mly>"
    ( x :: xs )
# 954 "src/syntax/parser.ml"
         in
        _menhir_goto_nonempty_list_circuit_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1414)) : 'freshtv1416)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_binding_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1393 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1389 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | BANG ->
                _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | BOOL_LIT _v ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState299 _v
            | CALL ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState299 _v
            | IF ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | INT_LIT _v ->
                _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState299 _v
            | LBRACKET ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | LET ->
                _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | LIST_HD ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | LIST_TL ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | LPAREN ->
                _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | MINUS ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | NOT ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | RPAREN ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState299) : 'freshtv1390)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1391 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1392)) : 'freshtv1394)
    | MenhirState305 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1397 * _menhir_state * 'tv_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1395 * _menhir_state * 'tv_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_li)), _, (xs : 'tv_separated_nonempty_list_AND_binding_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_binding_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1033 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1396)) : 'freshtv1398)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_fun_binding_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1383 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1379 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | BANG ->
                _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | BOOL_LIT _v ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
            | CALL ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
            | IF ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | INT_LIT _v ->
                _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
            | LBRACKET ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | LET ->
                _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | LIST_HD ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | LIST_TL ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | LPAREN ->
                _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | MINUS ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | NOT ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | RPAREN ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState203) : 'freshtv1380)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1381 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1382)) : 'freshtv1384)
    | MenhirState296 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1387 * _menhir_state * 'tv_fun_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1385 * _menhir_state * 'tv_fun_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_fun_binding_li)), _, (xs : 'tv_separated_nonempty_list_AND_fun_binding_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_fun_binding_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1112 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1386)) : 'freshtv1388)
    | _ ->
        _menhir_fail ()

and _menhir_goto_inst_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_inst_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1377 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1373 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | BANG ->
            _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | BOOL_LIT _v ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | CALL ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | IDENT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | IF ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | INT_LIT _v ->
            _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | LBRACKET ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | LET ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | LIST_HD ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | LIST_TL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | LPAREN ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | MINUS ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | NOT ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | ONE ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | RPAREN ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | WILDCARD ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | ZERO ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState219) : 'freshtv1374)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1375 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1376)) : 'freshtv1378)

and _menhir_goto_separated_nonempty_list_COMMA_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState268 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1345 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1341 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1339 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (e1 : 'tv_exp_li)), _, (es : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 131 "src/syntax/parser.mly"
                            ( LI.App(x,e1::es) )
# 1203 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1340)) : 'freshtv1342)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1343 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1344)) : 'freshtv1346)
    | MenhirState272 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1349 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1347 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_exp_li)), _, (xs : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_exp_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1223 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1348)) : 'freshtv1350)
    | MenhirState210 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1357 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1353 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1351 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (x : 'tv_ident)), _, (args : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 186 "src/syntax/parser.mly"
                                ( mk_call x args )
# 1245 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1352)) : 'freshtv1354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1355 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1356)) : 'freshtv1358)
    | MenhirState321 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1371 * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1369 * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_exp_li__ = 
# 144 "<standard.mly>"
    ( x )
# 1264 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1367) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1365 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1361 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1359 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)), _, (xs_inlined1 : 'tv_loption_separated_nonempty_list_COMMA_exp_li__)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_inst_exp_li_ = let es =
              let xs = xs_inlined1 in
              
# 232 "<standard.mly>"
    ( xs )
# 1293 "src/syntax/parser.ml"
              
            in
            let xs = 
# 232 "<standard.mly>"
    ( xs )
# 1299 "src/syntax/parser.ml"
             in
            
# 215 "src/syntax/parser.mly"
  ( Inst.Assign (List.combine xs es) )
# 1304 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1360)) : 'freshtv1362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1363 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1364)) : 'freshtv1366)) : 'freshtv1368)) : 'freshtv1370)) : 'freshtv1372)
    | _ ->
        _menhir_fail ()

and _menhir_goto_caml_prim : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_caml_prim -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1337) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_caml_prim) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1335) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : 'tv_caml_prim) : 'tv_caml_prim) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 138 "src/syntax/parser.mly"
                            ( LI.CamlPrim e )
# 1330 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1336)) : 'freshtv1338)

and _menhir_goto_prim_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prim_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1333) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_prim_exp_li_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1331) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_prim_exp_li_) : 'tv_prim_exp_li_) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 121 "src/syntax/parser.mly"
                           ( LI.Prim p )
# 1347 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1332)) : 'freshtv1334)

and _menhir_run227 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState227

and _menhir_reduce87 : _menhir_env -> ((('ttv_tail * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_exp_li)) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _v : 'tv_lvalue_exp_li_ = 
# 219 "src/syntax/parser.mly"
                                 ( (x,Some a) )
# 1405 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce123 : _menhir_env -> ((('ttv_tail * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_exp_li)) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _v : 'tv_prim_exp_li_ = 
# 181 "src/syntax/parser.mly"
                                ( mk_array_get x a )
# 1417 "src/syntax/parser.ml"
     in
    _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run237 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState237

and _menhir_run241 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState241

and _menhir_run243 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState243

and _menhir_run245 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState245

and _menhir_run247 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState247

and _menhir_run249 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState249
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState249

and _menhir_run251 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState251
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState251

and _menhir_run229 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT_LIT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1327 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        let (_v : (
# 13 "src/syntax/parser.mly"
       (int)
# 1754 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1325 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        let ((n : (
# 13 "src/syntax/parser.mly"
       (int)
# 1762 "src/syntax/parser.ml"
        )) : (
# 13 "src/syntax/parser.mly"
       (int)
# 1766 "src/syntax/parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_exp_li)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_prim_exp_li_ = 
# 182 "src/syntax/parser.mly"
                                ( mk_array_make n e )
# 1773 "src/syntax/parser.ml"
         in
        _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1326)) : 'freshtv1328)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1329 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1330)

and _menhir_run253 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState253 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState253 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState253 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState253
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState253

and _menhir_run255 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState255
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState255

and _menhir_run257 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState257 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState257 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState257 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState257
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState257

and _menhir_run231 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1321 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | BANG ->
            _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | BOOL_LIT _v ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | CALL ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | IDENT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | IF ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | INT_LIT _v ->
            _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | LBRACKET ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | LET ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | LIST_HD ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | LIST_TL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | LPAREN ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | MINUS ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | NOT ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | ONE ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | RPAREN ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | WILDCARD ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | ZERO ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState232
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState232) : 'freshtv1322)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1323 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1324)

and _menhir_goto_list_transition_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState367 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1305 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1303 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_psm_) : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_psm)) = _menhir_stack in
        let _v : 'tv_list_transition_psm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1997 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1304)) : 'freshtv1306)
    | MenhirState355 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1319 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1317 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_psm_) : 'tv_list_transition_psm_) = _v in
        ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_ident__)) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_psi_psm = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 2016 "src/syntax/parser.ml"
         in
        
# 83 "src/syntax/parser.mly"
                                                                             ( (q,xs,ts) )
# 2021 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1315) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_psm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1313 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1307 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState374 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState374
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState374) : 'freshtv1308)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1309 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_psm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_psm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2054 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1311 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1312)) : 'freshtv1314)) : 'freshtv1316)) : 'freshtv1318)) : 'freshtv1320)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1287 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1285 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_csm_) : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_csm)) = _menhir_stack in
        let _v : 'tv_list_transition_csm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 2083 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1286)) : 'freshtv1288)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1301 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1299 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_csm_) : 'tv_list_transition_csm_) = _v in
        ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_ident__)) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_psi_csm = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 2102 "src/syntax/parser.ml"
         in
        
# 101 "src/syntax/parser.mly"
                                                                             ( (q,xs,ts) )
# 2107 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1297) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_csm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1295 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1289 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124) : 'freshtv1290)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1291 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_csm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_csm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2140 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1292)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1293 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1294)) : 'freshtv1296)) : 'freshtv1298)) : 'freshtv1300)) : 'freshtv1302)
    | _ ->
        _menhir_fail ()

and _menhir_goto_automaton_psm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_psm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState364 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1263 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1261 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_automaton_psm = 
# 79 "src/syntax/parser.mly"
                                       ( PSM.Seq(s,a) )
# 2167 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1262)) : 'freshtv1264)
    | MenhirState358 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1271 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1269 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_psm = 
# 86 "src/syntax/parser.mly"
                                 ( (g,a) )
# 2181 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1267) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_psm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1265 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run356 _menhir_env (Obj.magic _menhir_stack) MenhirState367
        | AND | IN ->
            _menhir_reduce72 _menhir_env (Obj.magic _menhir_stack) MenhirState367
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState367) : 'freshtv1266)) : 'freshtv1268)) : 'freshtv1270)) : 'freshtv1272)
    | MenhirState371 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1275 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1273 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_psi_psm_)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_psm = 
# 80 "src/syntax/parser.mly"
                                                                     ( PSM.LetRec (bs,a) )
# 2213 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1274)) : 'freshtv1276)
    | MenhirState380 | MenhirState348 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1283 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE_PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1277 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState380 _v
            | LET ->
                _menhir_run349 _menhir_env (Obj.magic _menhir_stack) MenhirState380
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState380
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState380
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState380) : 'freshtv1278)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1279 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_psm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2247 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1280)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1281 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1282)) : 'freshtv1284)
    | _ ->
        _menhir_fail ()

and _menhir_reduce152 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)) = _menhir_stack in
    let _v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2266 "src/syntax/parser.ml"
     in
    _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run311 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState311 _v
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState311
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState311

and _menhir_run217 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState217

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1255 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1251 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1249 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 37 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 2350 "src/syntax/parser.ml"
            ) = 
# 60 "src/syntax/parser.mly"
                                                         ( p )
# 2354 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1247) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 37 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 2362 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1245) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 37 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 2370 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1243) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 37 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 2378 "src/syntax/parser.ml"
            )) : (
# 37 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 2382 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1244)) : 'freshtv1246)) : 'freshtv1248)) : 'freshtv1250)) : 'freshtv1252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1253 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1254)) : 'freshtv1256)
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1259 * _menhir_state * 'tv_automaton_hsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1257 * _menhir_state * 'tv_automaton_hsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_hsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2402 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1258)) : 'freshtv1260)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1227 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1225 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_hsm_) : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_hsm)) = _menhir_stack in
        let _v : 'tv_list_transition_hsm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 2424 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1226)) : 'freshtv1228)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1241 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1239 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_hsm_) : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_psi_hsm = 
# 67 "src/syntax/parser.mly"
                                ( (q,ts) )
# 2441 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1237) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_hsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1235 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1229 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState184
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184) : 'freshtv1230)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1231 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_hsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_hsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2474 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1232)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1233 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1234)) : 'freshtv1236)) : 'freshtv1238)) : 'freshtv1240)) : 'freshtv1242)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1209 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1207 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_efsm)) = _menhir_stack in
        let _v : 'tv_list_transition_efsm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 2503 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1208)) : 'freshtv1210)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1223 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1221 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_psi_efsm = 
# 52 "src/syntax/parser.mly"
                                         ( (q,ts) )
# 2520 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1219) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_efsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1217 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1211 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState157 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState157
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState157) : 'freshtv1212)
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1213 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2553 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1214)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1215 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1216)) : 'freshtv1218)) : 'freshtv1220)) : 'freshtv1222)) : 'freshtv1224)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_lvalue_atom__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1201) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1199) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ = 
# 144 "<standard.mly>"
    ( x )
# 2581 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1200)) : 'freshtv1202)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1205 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1203 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2598 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1204)) : 'freshtv1206)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_binding_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1193 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1189 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | LET ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | RETURN ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv1190)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1191 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1192)) : 'freshtv1194)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1197 * _menhir_state * 'tv_binding_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1195 * _menhir_state * 'tv_binding_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_csm)), _, (xs : 'tv_separated_nonempty_list_AND_binding_csm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_binding_csm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2651 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1196)) : 'freshtv1198)
    | _ ->
        _menhir_fail ()

and _menhir_goto_transition_csm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_transition_csm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1187 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
    | IF ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | LET ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | LPAREN ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | RETURN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | AND | IN ->
        _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv1188)

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1169 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LIST ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1165 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1163 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (ty : 'tv_ty)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ty = 
# 222 "src/syntax/parser.mly"
                                       ( ty )
# 2712 "src/syntax/parser.ml"
             in
            _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1164)) : 'freshtv1166)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1167 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1168)) : 'freshtv1170)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1177 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LIST ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1173 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1171 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_atom)), _, (t : 'tv_ty)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 183 "src/syntax/parser.mly"
                                ( mk_ty_annot e t )
# 2747 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1172)) : 'freshtv1174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1175 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1176)) : 'freshtv1178)
    | MenhirState327 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1185 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | LIST ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1181 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1179 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)), _, (t : 'tv_ty)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 183 "src/syntax/parser.mly"
                                ( mk_ty_annot e t )
# 2782 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1180)) : 'freshtv1182)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1183 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1184)) : 'freshtv1186)
    | _ ->
        _menhir_fail ()

and _menhir_goto_exp_li : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState224 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv877 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv873 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND | CIRCUIT | COL | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                _menhir_reduce123 _menhir_env (Obj.magic _menhir_stack)
            | COLONEQ | COMMA ->
                _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv871 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv872)) : 'freshtv874)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv875 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv876)) : 'freshtv878)
    | MenhirState227 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv883 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv879 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 201 "src/syntax/parser.mly"
        ( Atom.Mul )
# 2873 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 2878 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv880)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv881 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv882)) : 'freshtv884)
    | MenhirState232 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv895 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv891 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RIGHT_ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv885 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ARRAY_LENGTH ->
                    _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | BANG ->
                    _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | BOOL_LIT _v ->
                    _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
                | CALL ->
                    _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | IDENT _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
                | IF ->
                    _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | INT_LIT _v ->
                    _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
                | LBRACKET ->
                    _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | LET ->
                    _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | LIST_HD ->
                    _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | LIST_TL ->
                    _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | LPAREN ->
                    _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | MINUS ->
                    _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | NOT ->
                    _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | ONE ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | RPAREN ->
                    _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | WILDCARD ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | ZERO ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState235
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState235) : 'freshtv886)
            | AND | CIRCUIT | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv887 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (arr : 'tv_exp_li)), _, (idx : 'tv_exp_li)) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_caml_prim = 
# 146 "src/syntax/parser.mly"
                            ( LI.ArrayAccess{arr;idx} )
# 2980 "src/syntax/parser.ml"
                 in
                _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv888)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv889 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv890)) : 'freshtv892)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv893 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv894)) : 'freshtv896)
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv901 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv897 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (arr : 'tv_exp_li)), _, (idx : 'tv_exp_li)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_caml_prim = 
# 150 "src/syntax/parser.mly"
                            ( LI.ArrayAssign{arr;idx;e} )
# 3042 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv898)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv899 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv900)) : 'freshtv902)
    | MenhirState237 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv907 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv903 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 199 "src/syntax/parser.mly"
       ( Atom.Add )
# 3072 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3077 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv904)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv905 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv906)) : 'freshtv908)
    | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv913 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv909 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 209 "src/syntax/parser.mly"
            ( Atom.Or )
# 3125 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3130 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv910)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv911 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv912)) : 'freshtv914)
    | MenhirState243 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv919 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv915 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 207 "src/syntax/parser.mly"
      ( Atom.Neq )
# 3164 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3169 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv916)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv917 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv918)) : 'freshtv920)
    | MenhirState245 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv925 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv921 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 200 "src/syntax/parser.mly"
        ( Atom.Sub )
# 3199 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3204 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv922)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv923 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv924)) : 'freshtv926)
    | MenhirState247 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv931 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv927 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 202 "src/syntax/parser.mly"
     ( Atom.Lt )
# 3238 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3243 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv928)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv929 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv930)) : 'freshtv932)
    | MenhirState249 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv937 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv933 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 203 "src/syntax/parser.mly"
     ( Atom.Le )
# 3277 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3282 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv934)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv935 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv936)) : 'freshtv938)
    | MenhirState251 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv943 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LAND | LPAREN | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv939 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 208 "src/syntax/parser.mly"
       ( Atom.And )
# 3328 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3333 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv940)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv941 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv942)) : 'freshtv944)
    | MenhirState253 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv949 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv945 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 204 "src/syntax/parser.mly"
     ( Atom.Gt )
# 3367 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3372 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv946)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv947 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv948)) : 'freshtv950)
    | MenhirState255 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv955 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv951 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 205 "src/syntax/parser.mly"
     ( Atom.Ge )
# 3406 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3411 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv952)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv953 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv954)) : 'freshtv956)
    | MenhirState257 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv961 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv957 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 206 "src/syntax/parser.mly"
     ( Atom.Eq )
# 3445 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3450 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv958)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv959 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv960)) : 'freshtv962)
    | MenhirState260 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv967 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv963 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_caml_prim = 
# 144 "src/syntax/parser.mly"
                            ( LI.RefAssign{r=Var x;e} )
# 3500 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv964)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv965 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv966)) : 'freshtv968)
    | MenhirState193 | MenhirState197 | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv977 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv973 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLONEQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv969 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ARRAY_LENGTH ->
                    _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | BANG ->
                    _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | BOOL_LIT _v ->
                    _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
                | CALL ->
                    _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | IDENT _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
                | IF ->
                    _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | INT_LIT _v ->
                    _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
                | LBRACKET ->
                    _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | LET ->
                    _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | LIST_HD ->
                    _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | LIST_TL ->
                    _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | LPAREN ->
                    _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | MINUS ->
                    _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | NOT ->
                    _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | ONE ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | RPAREN ->
                    _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | WILDCARD ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | ZERO ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState264
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState264) : 'freshtv970)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv971 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv972)) : 'freshtv974)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv975 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv976)) : 'freshtv978)
    | MenhirState264 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv983 * _menhir_state) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv979 * _menhir_state) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (r : 'tv_exp_li)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_caml_prim = 
# 143 "src/syntax/parser.mly"
                            ( LI.RefAssign{r;e} )
# 3650 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv980)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv981 * _menhir_state) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv982)) : 'freshtv984)
    | MenhirState221 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv993 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv985 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | BANG ->
                _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | BOOL_LIT _v ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState268 _v
            | CALL ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState268 _v
            | IF ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | INT_LIT _v ->
                _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState268 _v
            | LBRACKET ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | LET ->
                _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | LIST_HD ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | LIST_TL ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | LPAREN ->
                _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | MINUS ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | NOT ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | RPAREN ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState268) : 'freshtv986)
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv989 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv987 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 133 "src/syntax/parser.mly"
                            ( LI.App(x,[e]) )
# 3748 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv988)) : 'freshtv990)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv991 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv992)) : 'freshtv994)
    | MenhirState321 | MenhirState210 | MenhirState272 | MenhirState268 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1001 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv995 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | BANG ->
                _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | BOOL_LIT _v ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | CALL ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | IF ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | INT_LIT _v ->
                _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | LBRACKET ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | LET ->
                _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | LIST_HD ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | LIST_TL ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | LPAREN ->
                _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | MINUS ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | NOT ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | RPAREN ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState272) : 'freshtv996)
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv997 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_exp_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3845 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv998)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv999 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1000)) : 'freshtv1002)
    | MenhirState274 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1009 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1005 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND | CIRCUIT | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                _menhir_reduce123 _menhir_env (Obj.magic _menhir_stack)
            | COLONEQ ->
                _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1003 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1004)) : 'freshtv1006)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1007 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1008)) : 'freshtv1010)
    | MenhirState219 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1015 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1011 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_exp_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 124 "src/syntax/parser.mly"
                                   ( LI.Seq(s,e) )
# 3951 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1012)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1013 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1014)) : 'freshtv1016)
    | MenhirState217 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1021 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1017 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_inst_exp_li_ = 
# 212 "src/syntax/parser.mly"
                          ( Inst.Assign [ (x,a) ] )
# 4001 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1018)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1019 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1020)) : 'freshtv1022)
    | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1027 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1023 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_caml_prim = 
# 151 "src/syntax/parser.mly"
                            ( LI.ArrayLength e )
# 4029 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1024)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1025 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1026)) : 'freshtv1028)
    | MenhirState212 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1033 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1029 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_caml_prim = 
# 141 "src/syntax/parser.mly"
                            ( LI.RefAccess e )
# 4057 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1030)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1031 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1032)) : 'freshtv1034)
    | MenhirState207 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1039 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1035 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | BANG ->
                _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | BOOL_LIT _v ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState284 _v
            | CALL ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState284 _v
            | IF ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | INT_LIT _v ->
                _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState284 _v
            | LBRACKET ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | LET ->
                _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | LIST_HD ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | LIST_TL ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | LPAREN ->
                _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | MINUS ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | NOT ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | RPAREN ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState284) : 'freshtv1036)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1037 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1038)) : 'freshtv1040)
    | MenhirState284 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1045 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1041 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | BANG ->
                _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | BOOL_LIT _v ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState286 _v
            | CALL ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState286 _v
            | IF ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | INT_LIT _v ->
                _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState286 _v
            | LBRACKET ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | LET ->
                _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | LIST_HD ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | LIST_TL ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | LPAREN ->
                _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | MINUS ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | NOT ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | RPAREN ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState286
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState286) : 'freshtv1042)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1043 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1044)) : 'freshtv1046)
    | MenhirState286 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1051 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1047 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_exp_li)), _, (e2 : 'tv_exp_li)), _, (e3 : 'tv_exp_li)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 137 "src/syntax/parser.mly"
                            ( LI.If(e1,e2,e3) )
# 4279 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1048)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1049 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1050)) : 'freshtv1052)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1057 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1053 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_fun_binding_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 128 "src/syntax/parser.mly"
                           ( LI.LetRec (bs,e) )
# 4331 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1054)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1055 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1056)) : 'freshtv1058)
    | MenhirState293 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1073 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1069 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (f : 'tv_ident)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_ident__)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_fun_binding_li = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 4383 "src/syntax/parser.ml"
             in
            
# 162 "src/syntax/parser.mly"
                                                                   ( (f,xs,e) )
# 4388 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1067) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_fun_binding_li) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1065 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1059 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState296 _v
                | WILDCARD ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState296
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState296) : 'freshtv1060)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1061 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_fun_binding_li)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_fun_binding_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4421 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1062)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1063 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1064)) : 'freshtv1066)) : 'freshtv1068)) : 'freshtv1070)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1071 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1072)) : 'freshtv1074)
    | MenhirState299 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1079 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1075 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_binding_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 126 "src/syntax/parser.mly"
                           ( LI.Let (bs,e) )
# 4479 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1076)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1077 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1078)) : 'freshtv1080)
    | MenhirState302 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1095 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1091 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_binding_li = 
# 159 "src/syntax/parser.mly"
                           ( (x,e) )
# 4529 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1089) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_binding_li) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1087 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1081 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _v
                | WILDCARD ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState305
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState305) : 'freshtv1082)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1083 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_li)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_binding_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4562 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1084)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1085 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1086)) : 'freshtv1088)) : 'freshtv1090)) : 'freshtv1092)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1093 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1094)) : 'freshtv1096)
    | MenhirState199 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1101 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1097 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_caml_prim = 
# 152 "src/syntax/parser.mly"
                            ( LI.ListHd e )
# 4597 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1098)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1099 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1100)) : 'freshtv1102)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1107 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1103 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_caml_prim = 
# 153 "src/syntax/parser.mly"
                            ( LI.ListTl e )
# 4625 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1104)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1105 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1106)) : 'freshtv1108)
    | MenhirState315 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1113 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1109 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv1110)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1111 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1112)) : 'freshtv1114)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1123 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1115 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState327
            | INT ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState327
            | LPAREN ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState327
            | PTR ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState327
            | STD_LOGIC ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState327
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState327) : 'freshtv1116)
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1119 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1117 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li = 
# 115 "src/syntax/parser.mly"
                           ( e )
# 4741 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1118)) : 'freshtv1120)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1121 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1122)) : 'freshtv1124)
    | MenhirState195 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1129 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1125 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 180 "src/syntax/parser.mly"
                                ( mk_unop Atom.Uminus a )
# 4771 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1126)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1127 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1128)) : 'freshtv1130)
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1135 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1131 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 179 "src/syntax/parser.mly"
                                ( mk_unop Atom.Not a  )
# 4799 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1132)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1133 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1134)) : 'freshtv1136)
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1149 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1145 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1143 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 40 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4827 "src/syntax/parser.ml"
            ) = 
# 112 "src/syntax/parser.mly"
               ( e )
# 4831 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1141) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 40 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4839 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1139) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 40 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4847 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1137) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 40 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4855 "src/syntax/parser.ml"
            )) : (
# 40 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4859 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1138)) : 'freshtv1140)) : 'freshtv1142)) : 'freshtv1144)) : 'freshtv1146)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1147 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1148)) : 'freshtv1150)
    | MenhirState341 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv1161 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 4898 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run257 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run255 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run253 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run249 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | CIRCUIT | QUOTE _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv1157 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 4934 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), (x : (
# 11 "src/syntax/parser.mly"
       (string)
# 4939 "src/syntax/parser.ml"
            ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_ident__)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_circuit = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 4948 "src/syntax/parser.ml"
             in
            
# 246 "src/syntax/parser.mly"
                  ( (x,xs,e) )
# 4953 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1155) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_circuit) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1153 * _menhir_state * 'tv_circuit) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CIRCUIT ->
                _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState346
            | QUOTE _ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1151 * _menhir_state * 'tv_circuit) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_circuit)) = _menhir_stack in
                let _v : 'tv_nonempty_list_circuit_ = 
# 221 "<standard.mly>"
    ( [ x ] )
# 4974 "src/syntax/parser.ml"
                 in
                _menhir_goto_nonempty_list_circuit_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1152)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState346) : 'freshtv1154)) : 'freshtv1156)) : 'freshtv1158)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv1159 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 4988 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1160)) : 'freshtv1162)
    | _ ->
        _menhir_fail ()

and _menhir_reduce72 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_psm_ = 
# 211 "<standard.mly>"
    ( [] )
# 5000 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_psm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run356 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState356 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState356
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState356 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState356 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState356
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState356
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState356
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState356
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState356
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState356
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState356
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState356

and _menhir_reduce66 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_csm_ = 
# 211 "<standard.mly>"
    ( [] )
# 5042 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_csm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run98 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98

and _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_atom__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv853 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv849 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv847 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)), _, (xs_inlined1 : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_inst_atom_ = let es =
              let xs = xs_inlined1 in
              
# 232 "<standard.mly>"
    ( xs )
# 5106 "src/syntax/parser.ml"
              
            in
            let xs = 
# 232 "<standard.mly>"
    ( xs )
# 5112 "src/syntax/parser.ml"
             in
            
# 215 "src/syntax/parser.mly"
  ( Inst.Assign (List.combine xs es) )
# 5117 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv848)) : 'freshtv850)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv851 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv852)) : 'freshtv854)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv861 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv857 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv855 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_automaton_csm = let es = 
# 232 "<standard.mly>"
    ( xs )
# 5145 "src/syntax/parser.ml"
             in
            
# 94 "src/syntax/parser.mly"
                                                      ( CSM.State (q,es) )
# 5150 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv856)) : 'freshtv858)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv859 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv860)) : 'freshtv862)
    | MenhirState360 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv869 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv865 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv863 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_automaton_psm = let es = 
# 232 "<standard.mly>"
    ( xs )
# 5178 "src/syntax/parser.ml"
             in
            
# 78 "src/syntax/parser.mly"
                                                      ( PSM.State (q,es) )
# 5183 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv864)) : 'freshtv866)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv867 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv868)) : 'freshtv870)
    | _ ->
        _menhir_fail ()

and _menhir_goto_lvalue_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState341 | MenhirState192 | MenhirState193 | MenhirState194 | MenhirState195 | MenhirState321 | MenhirState315 | MenhirState197 | MenhirState198 | MenhirState199 | MenhirState302 | MenhirState299 | MenhirState293 | MenhirState203 | MenhirState286 | MenhirState284 | MenhirState207 | MenhirState210 | MenhirState212 | MenhirState274 | MenhirState272 | MenhirState268 | MenhirState221 | MenhirState264 | MenhirState260 | MenhirState257 | MenhirState255 | MenhirState253 | MenhirState251 | MenhirState249 | MenhirState247 | MenhirState245 | MenhirState243 | MenhirState241 | MenhirState237 | MenhirState235 | MenhirState232 | MenhirState227 | MenhirState224 | MenhirState222 | MenhirState219 | MenhirState217 | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv837 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv835 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv836)) : 'freshtv838)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv841 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run311 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce152 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv839 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv840)) : 'freshtv842)
    | MenhirState311 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv845 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run311 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce152 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv843 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv844)) : 'freshtv846)
    | _ ->
        _menhir_fail ()

and _menhir_goto_automaton_hsm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_hsm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv821 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv819 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_hsm)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_hsm = 
# 70 "src/syntax/parser.mly"
                                                      ( (g,s,a) )
# 5270 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv817) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_hsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv815 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | AND | IN ->
            _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177) : 'freshtv816)) : 'freshtv818)) : 'freshtv820)) : 'freshtv822)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv825 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv823 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_psi_hsm_)), _, (a : 'tv_automaton_hsm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_hsm = 
# 64 "src/syntax/parser.mly"
                                                                     ( HSM.LetRec (bs,a) )
# 5302 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_hsm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv824)) : 'freshtv826)
    | MenhirState190 | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv833 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE_PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv827 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
            | LET ->
                _menhir_run166 _menhir_env (Obj.magic _menhir_stack) MenhirState190
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState190
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190) : 'freshtv828)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv829 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_hsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5334 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv830)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv831 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv832)) : 'freshtv834)
    | _ ->
        _menhir_fail ()

and _menhir_reduce70 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_hsm_ = 
# 211 "<standard.mly>"
    ( [] )
# 5352 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_hsm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run170 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState170
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState170

and _menhir_reduce68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_efsm_ = 
# 211 "<standard.mly>"
    ( [] )
# 5394 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_efsm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run145 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145

and _menhir_goto_inst_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_inst_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState131 | MenhirState128 | MenhirState121 | MenhirState97 | MenhirState113 | MenhirState109 | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv795 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv791 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | LET ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | RETURN ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv792)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv793 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv794)) : 'freshtv796)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv801 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv797 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149) : 'freshtv798)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv799 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv800)) : 'freshtv802)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv807 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv803 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
            | LET ->
                _menhir_run166 _menhir_env (Obj.magic _menhir_stack) MenhirState174
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState174
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState174) : 'freshtv804)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv805 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv806)) : 'freshtv808)
    | MenhirState380 | MenhirState348 | MenhirState371 | MenhirState364 | MenhirState358 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv813 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv809 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState364 _v
            | LET ->
                _menhir_run349 _menhir_env (Obj.magic _menhir_stack) MenhirState364
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState364
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState364
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState364) : 'freshtv810)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv811 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv812)) : 'freshtv814)
    | _ ->
        _menhir_fail ()

and _menhir_goto_lvalue_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState77 | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv783 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv777 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv778)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv779 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5589 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv780)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv781 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv782)) : 'freshtv784)
    | MenhirState380 | MenhirState348 | MenhirState371 | MenhirState364 | MenhirState358 | MenhirState172 | MenhirState147 | MenhirState0 | MenhirState131 | MenhirState128 | MenhirState121 | MenhirState97 | MenhirState113 | MenhirState109 | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv789 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv785 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | CALL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | INT_LIT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | LPAREN ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | MINUS ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv786)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv787 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv788)) : 'freshtv790)
    | _ ->
        _menhir_fail ()

and _menhir_goto_automaton_csm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_csm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv731 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv729 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_automaton_csm = 
# 95 "src/syntax/parser.mly"
                                       ( CSM.Seq(s,a) )
# 5661 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv730)) : 'freshtv732)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv735 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv733 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_atom)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_csm = 
# 105 "src/syntax/parser.mly"
                                 ( (e,a) )
# 5675 "src/syntax/parser.ml"
         in
        _menhir_goto_transition_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv734)) : 'freshtv736)
    | MenhirState97 | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv739 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv737 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _v : 'tv_transition_csm = 
# 104 "src/syntax/parser.mly"
                  ( (mk_bool' true,a) )
# 5687 "src/syntax/parser.ml"
         in
        _menhir_goto_transition_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv738)) : 'freshtv740)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv743 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv741 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_psi_csm_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_csm = 
# 96 "src/syntax/parser.mly"
                                                                     ( CSM.LetRec (bs,a) )
# 5702 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv742)) : 'freshtv744)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv747 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv745 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_binding_csm_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_automaton_csm = 
# 98 "src/syntax/parser.mly"
                                                                     ( CSM.Let (bs,a) )
# 5716 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv746)) : 'freshtv748)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv761 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv759 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_binding_csm = 
# 108 "src/syntax/parser.mly"
                             ( (x,a) )
# 5729 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv757) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binding_csm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv755 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv749 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv750)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv751 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_csm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_binding_csm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5762 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_binding_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv752)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv753 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv754)) : 'freshtv756)) : 'freshtv758)) : 'freshtv760)) : 'freshtv762)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv775 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv771 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv769 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (a : 'tv_automaton_csm)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 39 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 5788 "src/syntax/parser.ml"
            ) = 
# 91 "src/syntax/parser.mly"
                      ( a )
# 5792 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv767) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 39 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 5800 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv765) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 39 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 5808 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv763) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 39 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 5816 "src/syntax/parser.ml"
            )) : (
# 39 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 5820 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv764)) : 'freshtv766)) : 'freshtv768)) : 'freshtv770)) : 'freshtv772)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv773 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv774)) : 'freshtv776)
    | _ ->
        _menhir_fail ()

and _menhir_run56 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv727) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 223 "src/syntax/parser.mly"
                                       ( TStd_logic )
# 5843 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv728)

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv725) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 226 "src/syntax/parser.mly"
                                       ( TPtr )
# 5857 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv726)

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | INT ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LPAREN ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | PTR ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | STD_LOGIC ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run59 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv723) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 224 "src/syntax/parser.mly"
                                       ( TInt )
# 5892 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv724)

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv721) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 225 "src/syntax/parser.mly"
                                       ( TBool )
# 5906 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv722)

and _menhir_goto_separated_nonempty_list_COMMA_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv711 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv707 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv705 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (x : 'tv_ident)), _, (args : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 186 "src/syntax/parser.mly"
                                ( mk_call x args )
# 5933 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv706)) : 'freshtv708)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv709 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv710)) : 'freshtv712)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv715 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv713 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_atom)), _, (xs : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 5953 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv714)) : 'freshtv716)
    | MenhirState360 | MenhirState102 | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv719 * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv717 * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 144 "<standard.mly>"
    ( x )
# 5965 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv718)) : 'freshtv720)
    | _ ->
        _menhir_fail ()

and _menhir_run25 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_goto_prim_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prim_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv703) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_prim_atom_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv701) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_prim_atom_) : 'tv_prim_atom_) = _v in
    ((let _v : 'tv_atom = 
# 195 "src/syntax/parser.mly"
                         ( mk_prim p )
# 6016 "src/syntax/parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv702)) : 'freshtv704)

and _menhir_run30 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run32 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run34 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run36 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run40 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT_LIT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv697 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let (_v : (
# 13 "src/syntax/parser.mly"
       (int)
# 6255 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv695 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let ((n : (
# 13 "src/syntax/parser.mly"
       (int)
# 6263 "src/syntax/parser.ml"
        )) : (
# 13 "src/syntax/parser.mly"
       (int)
# 6267 "src/syntax/parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_atom)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_prim_atom_ = 
# 182 "src/syntax/parser.mly"
                                ( mk_array_make n e )
# 6274 "src/syntax/parser.ml"
         in
        _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv696)) : 'freshtv698)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv699 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv700)

and _menhir_run44 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_goto_const_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_const_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv693) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_const_atom_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv691) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : 'tv_const_atom_) : 'tv_const_atom_) = _v in
    ((let _v : 'tv_atom = 
# 194 "src/syntax/parser.mly"
                         ( mk_const c )
# 6394 "src/syntax/parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv692)) : 'freshtv694)

and _menhir_goto_exp_li_without_paren : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_li_without_paren -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv689) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exp_li_without_paren) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv687) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : 'tv_exp_li_without_paren) : 'tv_exp_li_without_paren) = _v in
    ((let _v : 'tv_exp_li = 
# 116 "src/syntax/parser.mly"
                           ( e )
# 6411 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li _menhir_env _menhir_stack _menhir_s _v) : 'freshtv688)) : 'freshtv690)

and _menhir_goto_loption_separated_nonempty_list_COMMA_ident__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_ident__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv655 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv651 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv647 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
                | IF ->
                    _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | LET ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | LPAREN ->
                    _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | RETURN ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | WILDCARD ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | AND | IN ->
                    _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv648)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv649 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv650)) : 'freshtv652)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv653 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv654)) : 'freshtv656)
    | MenhirState290 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv665 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv661 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv657 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ARRAY_LENGTH ->
                    _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | BANG ->
                    _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | BOOL_LIT _v ->
                    _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState293 _v
                | CALL ->
                    _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | IDENT _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState293 _v
                | IF ->
                    _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | INT_LIT _v ->
                    _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState293 _v
                | LBRACKET ->
                    _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | LET ->
                    _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | LIST_HD ->
                    _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | LIST_TL ->
                    _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | LPAREN ->
                    _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | MINUS ->
                    _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | NOT ->
                    _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | ONE ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | RPAREN ->
                    _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | WILDCARD ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | ZERO ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState293
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState293) : 'freshtv658)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv659 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv660)) : 'freshtv662)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv663 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv664)) : 'freshtv666)
    | MenhirState338 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv675 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 6546 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv671 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 6556 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv667 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 6566 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ARRAY_LENGTH ->
                    _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | BANG ->
                    _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | BOOL_LIT _v ->
                    _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _v
                | CALL ->
                    _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | IDENT _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _v
                | IF ->
                    _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | INT_LIT _v ->
                    _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _v
                | LBRACKET ->
                    _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | LET ->
                    _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | LIST_HD ->
                    _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | LIST_TL ->
                    _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | LPAREN ->
                    _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | MINUS ->
                    _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | NOT ->
                    _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | ONE ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | RPAREN ->
                    _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | WILDCARD ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | ZERO ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState341
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState341) : 'freshtv668)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv669 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 6618 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv670)) : 'freshtv672)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv673 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 6629 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv674)) : 'freshtv676)
    | MenhirState352 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv685 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv681 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv677 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IF ->
                    _menhir_run356 _menhir_env (Obj.magic _menhir_stack) MenhirState355
                | AND | IN ->
                    _menhir_reduce72 _menhir_env (Obj.magic _menhir_stack) MenhirState355
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState355) : 'freshtv678)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv679 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv680)) : 'freshtv682)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv683 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv684)) : 'freshtv686)
    | _ ->
        _menhir_fail ()

and _menhir_reduce74 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 142 "<standard.mly>"
    ( [] )
# 6681 "src/syntax/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce86 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_lvalue_exp_li_ = 
# 218 "src/syntax/parser.mly"
                                 ( (x,None) )
# 6696 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce46 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_exp_li_without_paren = 
# 119 "src/syntax/parser.mly"
                           ( LI.Var x )
# 6706 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v

and _menhir_run221 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv645 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState221 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | BANG ->
            _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | BOOL_LIT _v ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | CALL ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | IDENT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | IF ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | INT_LIT _v ->
            _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | LBRACKET ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | LET ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | LIST_HD ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | LIST_TL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | LPAREN ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | MINUS ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | NOT ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | ONE ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | RPAREN ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | WILDCARD ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | ZERO ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | AND | CIRCUIT | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv643 * _menhir_state * 'tv_ident)) * _menhir_state) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 134 "src/syntax/parser.mly"
                            ( LI.App(x,[]) )
# 6798 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv644)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState222) : 'freshtv646)
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState221

and _menhir_run260 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState260
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState260

and _menhir_goto_separated_nonempty_list_COMMA_ident_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_ident_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState352 | MenhirState338 | MenhirState290 | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv637) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv635) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_ident_) : 'tv_separated_nonempty_list_COMMA_ident_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_ident__ = 
# 144 "<standard.mly>"
    ( x )
# 6875 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_ident__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv636)) : 'freshtv638)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv641 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv639 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_ident_) : 'tv_separated_nonempty_list_COMMA_ident_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_ident_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 6892 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_ident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv640)) : 'freshtv642)
    | _ ->
        _menhir_fail ()

and _menhir_reduce162 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_state = 
# 168 "src/syntax/parser.mly"
          ( x )
# 6904 "src/syntax/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv633) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_state) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState124 | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv589 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv585 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | RPAREN ->
                _menhir_reduce78 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv586)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv587 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv588)) : 'freshtv590)
    | MenhirState0 | MenhirState131 | MenhirState128 | MenhirState121 | MenhirState97 | MenhirState113 | MenhirState109 | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv595 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv591 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | CALL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | INT_LIT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | LPAREN ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | MINUS ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | RPAREN ->
                _menhir_reduce74 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv592)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv593 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv594)) : 'freshtv596)
    | MenhirState157 | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv601 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv597 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | END | PIPE ->
                _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv598)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv599 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv600)) : 'freshtv602)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv609 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv607 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (s : 'tv_inst_atom_)), _, (q : 'tv_state)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_efsm = 
# 55 "src/syntax/parser.mly"
                                              ( (g,s,q) )
# 7027 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv605) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_efsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv603 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | END | PIPE ->
            _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv604)) : 'freshtv606)) : 'freshtv608)) : 'freshtv610)
    | MenhirState184 | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv615 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv611 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | AND | IN ->
                _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169) : 'freshtv612)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv613 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv614)) : 'freshtv616)
    | MenhirState190 | MenhirState165 | MenhirState181 | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv619 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv617 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _v : 'tv_automaton_hsm = 
# 63 "src/syntax/parser.mly"
          ( HSM.State q )
# 7083 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_hsm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv618)) : 'freshtv620)
    | MenhirState374 | MenhirState350 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv625 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv621 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState352 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState352
            | RPAREN ->
                _menhir_reduce78 _menhir_env (Obj.magic _menhir_stack) MenhirState352
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState352) : 'freshtv622)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv623 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv624)) : 'freshtv626)
    | MenhirState380 | MenhirState348 | MenhirState371 | MenhirState364 | MenhirState358 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv631 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv627 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState360 _v
            | CALL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState360
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState360 _v
            | INT_LIT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState360 _v
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState360
            | LPAREN ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState360
            | MINUS ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState360
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState360
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState360
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState360
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState360
            | RPAREN ->
                _menhir_reduce74 _menhir_env (Obj.magic _menhir_stack) MenhirState360
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState360) : 'freshtv628)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv629 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv630)) : 'freshtv632)
    | _ ->
        _menhir_fail ()) : 'freshtv634)

and _menhir_reduce84 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_lvalue_atom_ = 
# 218 "src/syntax/parser.mly"
                                 ( (x,None) )
# 7171 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_atom_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_goto_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv443 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv439 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv437 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_atom)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_prim_atom_ = 
# 181 "src/syntax/parser.mly"
                                ( mk_array_get x a )
# 7251 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)) : 'freshtv440)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv441 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)) : 'freshtv444)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv449 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv445 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 201 "src/syntax/parser.mly"
        ( Atom.Mul )
# 7279 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7284 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv447 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv448)) : 'freshtv450)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv455 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv451 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 199 "src/syntax/parser.mly"
       ( Atom.Add )
# 7312 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7317 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv452)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv453 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv454)) : 'freshtv456)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv461 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | IDENT _ | IF | IN | LET | LPAREN | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv457 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 209 "src/syntax/parser.mly"
            ( Atom.Or )
# 7363 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7368 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv459 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv460)) : 'freshtv462)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv467 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv463 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 207 "src/syntax/parser.mly"
      ( Atom.Neq )
# 7400 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7405 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv465 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv466)) : 'freshtv468)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv473 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv469 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 200 "src/syntax/parser.mly"
        ( Atom.Sub )
# 7433 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7438 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv470)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv471 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv472)) : 'freshtv474)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv479 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv475 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 202 "src/syntax/parser.mly"
     ( Atom.Lt )
# 7470 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7475 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv476)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv477 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv478)) : 'freshtv480)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv485 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv481 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 203 "src/syntax/parser.mly"
     ( Atom.Le )
# 7507 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7512 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv482)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv483 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv484)) : 'freshtv486)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv491 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | IDENT _ | IF | IN | LAND | LET | LPAREN | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv487 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 208 "src/syntax/parser.mly"
       ( Atom.And )
# 7556 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7561 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv489 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)) : 'freshtv492)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv497 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv493 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 204 "src/syntax/parser.mly"
     ( Atom.Gt )
# 7593 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7598 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv494)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv495 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv496)) : 'freshtv498)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv503 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv499 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 205 "src/syntax/parser.mly"
     ( Atom.Ge )
# 7630 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7635 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv501 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv502)) : 'freshtv504)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv509 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv505 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 206 "src/syntax/parser.mly"
     ( Atom.Eq )
# 7667 "src/syntax/parser.ml"
             in
            
# 178 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7672 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv506)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv507 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv508)) : 'freshtv510)
    | MenhirState360 | MenhirState102 | MenhirState86 | MenhirState51 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv517 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv511 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
            | CALL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
            | INT_LIT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | LPAREN ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | MINUS ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv512)
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv513 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 7751 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv515 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv516)) : 'freshtv518)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv527 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv519 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | INT ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LPAREN ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | PTR ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | STD_LOGIC ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv520)
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv523 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv521 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_atom = 
# 196 "src/syntax/parser.mly"
                         ( a )
# 7821 "src/syntax/parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv522)) : 'freshtv524)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv525 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv526)) : 'freshtv528)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv533 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv529 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 180 "src/syntax/parser.mly"
                                ( mk_unop Atom.Uminus a )
# 7849 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv530)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv531 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv532)) : 'freshtv534)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv539 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv535 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 179 "src/syntax/parser.mly"
                                ( mk_unop Atom.Not a  )
# 7875 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv536)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv537 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv538)) : 'freshtv540)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv545 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AND | EOF | IDENT _ | IF | IN | LET | LPAREN | RETURN | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv541 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_automaton_csm = 
# 97 "src/syntax/parser.mly"
                ( CSM.Return a )
# 7923 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv542)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv543 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv544)) : 'freshtv546)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv553 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv549 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv547 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_atom)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_lvalue_atom_ = 
# 219 "src/syntax/parser.mly"
                                 ( (x,Some a) )
# 7973 "src/syntax/parser.ml"
             in
            _menhir_goto_lvalue_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv548)) : 'freshtv550)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv551 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv552)) : 'freshtv554)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv559 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv555 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | LET ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | RETURN ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv556)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv557 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv558)) : 'freshtv560)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv565 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv561 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)), _, (a : 'tv_atom)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_inst_atom_ = 
# 212 "src/syntax/parser.mly"
                          ( Inst.Assign [ (x,a) ] )
# 8080 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv562)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv563 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv564)) : 'freshtv566)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv571 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv567 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147) : 'freshtv568)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv569 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv570)) : 'freshtv572)
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv577 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv573 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172) : 'freshtv574)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv575 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv576)) : 'freshtv578)
    | MenhirState356 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv583 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv579 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState358 _v
            | LET ->
                _menhir_run349 _menhir_env (Obj.magic _menhir_stack) MenhirState358
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState358
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState358
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState358) : 'freshtv580)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv581 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv582)) : 'freshtv584)
    | _ ->
        _menhir_fail ()

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv435 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState7 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv433 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_const_atom_ = 
# 174 "src/syntax/parser.mly"
                           ( Unit )
# 8358 "src/syntax/parser.ml"
         in
        _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)) : 'freshtv436)
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv429 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv427 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_const_atom_ = 
# 175 "src/syntax/parser.mly"
                           ( EmptyList )
# 8388 "src/syntax/parser.ml"
         in
        _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)) : 'freshtv430)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv431 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv432)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "src/syntax/parser.mly"
       (int)
# 8402 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv425) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 13 "src/syntax/parser.mly"
       (int)
# 8412 "src/syntax/parser.ml"
    )) : (
# 13 "src/syntax/parser.mly"
       (int)
# 8416 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_atom_ = 
# 173 "src/syntax/parser.mly"
                           ( mk_int n )
# 8421 "src/syntax/parser.ml"
     in
    _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv426)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "src/syntax/parser.mly"
       (bool)
# 8443 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv423) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 12 "src/syntax/parser.mly"
       (bool)
# 8453 "src/syntax/parser.ml"
    )) : (
# 12 "src/syntax/parser.mly"
       (bool)
# 8457 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_atom_ = 
# 171 "src/syntax/parser.mly"
                           ( mk_bool b )
# 8462 "src/syntax/parser.ml"
     in
    _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)

and _menhir_goto_option_PIPE_ : _menhir_env -> 'ttv_tail -> 'tv_option_PIPE_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv421 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142) : 'freshtv422)

and _menhir_goto_std_logic : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_std_logic -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState360 | MenhirState356 | MenhirState170 | MenhirState145 | MenhirState106 | MenhirState102 | MenhirState98 | MenhirState86 | MenhirState80 | MenhirState2 | MenhirState5 | MenhirState6 | MenhirState7 | MenhirState51 | MenhirState48 | MenhirState46 | MenhirState44 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState34 | MenhirState32 | MenhirState30 | MenhirState25 | MenhirState22 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_const_atom_ = 
# 172 "src/syntax/parser.mly"
                           ( mk_std_logic v )
# 8498 "src/syntax/parser.ml"
         in
        _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)) : 'freshtv416)
    | MenhirState341 | MenhirState192 | MenhirState193 | MenhirState194 | MenhirState195 | MenhirState321 | MenhirState315 | MenhirState196 | MenhirState197 | MenhirState198 | MenhirState199 | MenhirState302 | MenhirState299 | MenhirState293 | MenhirState203 | MenhirState286 | MenhirState284 | MenhirState207 | MenhirState210 | MenhirState212 | MenhirState274 | MenhirState272 | MenhirState268 | MenhirState221 | MenhirState264 | MenhirState260 | MenhirState257 | MenhirState255 | MenhirState253 | MenhirState251 | MenhirState249 | MenhirState247 | MenhirState245 | MenhirState243 | MenhirState241 | MenhirState237 | MenhirState235 | MenhirState232 | MenhirState227 | MenhirState224 | MenhirState222 | MenhirState219 | MenhirState217 | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_const_exp_li_ = 
# 172 "src/syntax/parser.mly"
                           ( mk_std_logic v )
# 8513 "src/syntax/parser.ml"
         in
        _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)) : 'freshtv420)
    | _ ->
        _menhir_fail ()

and _menhir_goto_const_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_const_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv411) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_const_exp_li_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv409) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : 'tv_const_exp_li_) : 'tv_const_exp_li_) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 120 "src/syntax/parser.mly"
                           ( LI.Const c )
# 8532 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)) : 'freshtv412)

and _menhir_reduce78 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_ident__ = 
# 142 "<standard.mly>"
    ( [] )
# 8541 "src/syntax/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_ident__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv407 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv399 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv395 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL_LIT _v ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | CALL ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | IDENT _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | INT_LIT _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | LBRACKET ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | LPAREN ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | MINUS ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | NOT ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | ONE ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | WILDCARD ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | ZERO ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | RPAREN ->
                    _menhir_reduce74 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv396)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv397 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv398)) : 'freshtv400)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv401 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv405 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)) : 'freshtv408)

and _menhir_goto_ident : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv325 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv321 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
            | CALL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
            | INT_LIT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | LPAREN ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | MINUS ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv322)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv323 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
    | MenhirState360 | MenhirState356 | MenhirState170 | MenhirState145 | MenhirState106 | MenhirState102 | MenhirState98 | MenhirState86 | MenhirState80 | MenhirState2 | MenhirState5 | MenhirState6 | MenhirState7 | MenhirState51 | MenhirState48 | MenhirState46 | MenhirState44 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState34 | MenhirState32 | MenhirState30 | MenhirState25 | MenhirState22 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv333 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv327 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | CALL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | INT_LIT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | LPAREN ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | MINUS ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv328)
        | AND | COL | COMMA | EOF | EQ | GE | GT | HAT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
            let _v : 'tv_atom = 
# 193 "src/syntax/parser.mly"
                         ( Atom.Var x )
# 8715 "src/syntax/parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv331 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)) : 'freshtv334)
    | MenhirState172 | MenhirState147 | MenhirState74 | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv337 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | COLONEQ | COMMA | RPAREN ->
            _menhir_reduce84 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv335 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)) : 'freshtv338)
    | MenhirState380 | MenhirState348 | MenhirState371 | MenhirState358 | MenhirState364 | MenhirState0 | MenhirState131 | MenhirState128 | MenhirState121 | MenhirState97 | MenhirState113 | MenhirState100 | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_reduce162 _menhir_env (Obj.magic _menhir_stack)
        | COLONEQ ->
            _menhir_reduce84 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv339 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)
    | MenhirState352 | MenhirState338 | MenhirState290 | MenhirState118 | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv349 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv343 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv344)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv345 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_ident_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 8788 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_ident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv346)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv347 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)) : 'freshtv350)
    | MenhirState350 | MenhirState374 | MenhirState190 | MenhirState165 | MenhirState167 | MenhirState184 | MenhirState181 | MenhirState174 | MenhirState142 | MenhirState157 | MenhirState149 | MenhirState91 | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv351 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        (_menhir_reduce162 _menhir_env (Obj.magic _menhir_stack) : 'freshtv352)
    | MenhirState134 | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv357 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv353 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | LET ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | RETURN ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv355 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv363 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv359 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | BANG ->
                _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | BOOL_LIT _v ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
            | CALL ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
            | IF ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | INT_LIT _v ->
                _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
            | LBRACKET ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | LET ->
                _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | LIST_HD ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | LIST_TL ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | LPAREN ->
                _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | MINUS ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | NOT ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | RPAREN ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState210) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv361 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)
    | MenhirState194 | MenhirState195 | MenhirState321 | MenhirState198 | MenhirState199 | MenhirState299 | MenhirState203 | MenhirState286 | MenhirState210 | MenhirState212 | MenhirState213 | MenhirState272 | MenhirState268 | MenhirState221 | MenhirState264 | MenhirState260 | MenhirState257 | MenhirState255 | MenhirState253 | MenhirState251 | MenhirState249 | MenhirState247 | MenhirState245 | MenhirState243 | MenhirState241 | MenhirState237 | MenhirState235 | MenhirState227 | MenhirState219 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv369 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run260 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv365 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | BANG ->
                _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | BOOL_LIT _v ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | CALL ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | IF ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | INT_LIT _v ->
                _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | LBRACKET ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | LET ->
                _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | LIST_HD ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | LIST_TL ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | LPAREN ->
                _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | MINUS ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | NOT ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | RPAREN ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState274) : 'freshtv366)
        | LPAREN ->
            _menhir_run221 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv367 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)) : 'freshtv370)
    | MenhirState341 | MenhirState192 | MenhirState193 | MenhirState196 | MenhirState315 | MenhirState197 | MenhirState302 | MenhirState293 | MenhirState284 | MenhirState207 | MenhirState217 | MenhirState274 | MenhirState232 | MenhirState224 | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv375 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run260 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv371 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | BANG ->
                _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | BOOL_LIT _v ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
            | CALL ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
            | IF ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | INT_LIT _v ->
                _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
            | LBRACKET ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | LET ->
                _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | LIST_HD ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | LIST_TL ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | LPAREN ->
                _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | MINUS ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | NOT ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | RPAREN ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState224
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState224) : 'freshtv372)
        | LPAREN ->
            _menhir_run221 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_reduce86 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv373 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)) : 'freshtv376)
    | MenhirState296 | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv381 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv377 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState290 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | RPAREN ->
                _menhir_reduce78 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState290) : 'freshtv378)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv379 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)) : 'freshtv382)
    | MenhirState305 | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv383 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | BANG ->
                _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | BOOL_LIT _v ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState302 _v
            | CALL ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState302 _v
            | IF ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | INT_LIT _v ->
                _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState302 _v
            | LBRACKET ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | LET ->
                _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | LIST_HD ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | LIST_TL ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | LPAREN ->
                _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | MINUS ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | NOT ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | RPAREN ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState302
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState302) : 'freshtv384)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)
    | MenhirState311 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | BANG ->
                _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | BOOL_LIT _v ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState315 _v
            | CALL ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState315 _v
            | IF ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | INT_LIT _v ->
                _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState315 _v
            | LBRACKET ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | LET ->
                _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | LIST_HD ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | LIST_TL ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | LPAREN ->
                _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | MINUS ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | NOT ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | RPAREN ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState315
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState315) : 'freshtv390)
        | COMMA | RPAREN ->
            _menhir_reduce86 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv392)) : 'freshtv394)
    | _ ->
        _menhir_fail ()

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState90 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | WILDCARD ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv320)
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90

and _menhir_run140 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PIPE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv311) = Obj.magic _menhir_stack in
        ((let x = () in
        let _v : 'tv_option_PIPE_ = 
# 116 "<standard.mly>"
    ( Some x )
# 9258 "src/syntax/parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv312)) : 'freshtv314)
    | IDENT _ | WILDCARD ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_PIPE_ = 
# 114 "<standard.mly>"
    ( None )
# 9267 "src/syntax/parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv316)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)

and _menhir_run166 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv307 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
        | WILDCARD ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState167
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167) : 'freshtv308)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv305) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_std_logic = 
# 189 "src/syntax/parser.mly"
       ( Atom.Zero )
# 9316 "src/syntax/parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)

and _menhir_run193 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState193

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv303) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_std_logic = 
# 190 "src/syntax/parser.mly"
       ( Atom.One )
# 9377 "src/syntax/parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)

and _menhir_run194 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState194

and _menhir_run195 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState195

and _menhir_run196 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv301 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState196 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | BANG ->
            _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | BOOL_LIT _v ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | CALL ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | IDENT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | IF ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | INT_LIT _v ->
            _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | LBRACKET ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | LET ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | LIST_HD ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | LIST_TL ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | LPAREN ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | MINUS ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | NOT ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ONE ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | RPAREN ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | WILDCARD ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ZERO ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | AND | CIRCUIT | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv299 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_const_exp_li_ = 
# 174 "src/syntax/parser.mly"
                           ( Unit )
# 9564 "src/syntax/parser.ml"
             in
            _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState197) : 'freshtv302)
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState196
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState196

and _menhir_run198 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState198

and _menhir_run199 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState199

and _menhir_run200 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState200 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | WILDCARD ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState201
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState201) : 'freshtv298)
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState200
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState200

and _menhir_run204 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv293 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_const_exp_li_ = 
# 175 "src/syntax/parser.mly"
                           ( EmptyList )
# 9723 "src/syntax/parser.ml"
         in
        _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)) : 'freshtv294)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv295 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)

and _menhir_run206 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "src/syntax/parser.mly"
       (int)
# 9737 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv289) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 13 "src/syntax/parser.mly"
       (int)
# 9747 "src/syntax/parser.ml"
    )) : (
# 13 "src/syntax/parser.mly"
       (int)
# 9751 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_exp_li_ = 
# 173 "src/syntax/parser.mly"
                           ( mk_int n )
# 9756 "src/syntax/parser.ml"
     in
    _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)

and _menhir_run207 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState207

and _menhir_run208 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208

and _menhir_run211 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "src/syntax/parser.mly"
       (bool)
# 9825 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv287) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 12 "src/syntax/parser.mly"
       (bool)
# 9835 "src/syntax/parser.ml"
    )) : (
# 12 "src/syntax/parser.mly"
       (bool)
# 9839 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_exp_li_ = 
# 171 "src/syntax/parser.mly"
                           ( mk_bool b )
# 9844 "src/syntax/parser.ml"
     in
    _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)

and _menhir_run212 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState212

and _menhir_run213 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState213

and _menhir_run336 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv283 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "src/syntax/parser.mly"
       (string)
# 9954 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv279 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 9965 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState338 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState338
            | RPAREN ->
                _menhir_reduce78 _menhir_env (Obj.magic _menhir_stack) MenhirState338
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState338) : 'freshtv280)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv281 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 9987 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)) : 'freshtv284)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv285 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState380 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * 'tv_automaton_psm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState374 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state * 'tv_psi_psm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState371 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv27 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState367 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState364 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState360 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState358 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv35 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState356 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState355 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv39 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState352 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState350 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState348 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv46)
    | MenhirState346 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * 'tv_circuit) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState341 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv49 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 10071 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState338 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 10080 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState335 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv54)
    | MenhirState327 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState321 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv57 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState315 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState311 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState305 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_binding_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState302 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState299 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState296 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_fun_binding_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState293 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv71 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState290 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState286 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv75 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState284 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv77 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState274 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState272 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState268 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv83 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState264 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv85 * _menhir_state) * _menhir_state * 'tv_exp_li))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState260 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState257 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState255 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState253 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState251 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState249 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState247 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState245 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState243 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState237 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv109 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState232 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state * 'tv_exp_li))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState227 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState224 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv117 * _menhir_state * 'tv_ident)) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState221 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState219 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state * 'tv_inst_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState217 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState212 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState210 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv129 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState207 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv135 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState199 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState195 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv156)
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state * 'tv_automaton_hsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state * 'tv_psi_hsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv161 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv165 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv176)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state * 'tv_automaton_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * _menhir_state * 'tv_psi_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv183 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv185 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv194)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state * 'tv_binding_csm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv199 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state * 'tv_psi_csm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv203 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv219 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv227 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv247 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv251 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv255 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv259 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv261 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv263 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv265 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv278)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ident = 
# 234 "src/syntax/parser.mly"
           ( Gensym.gensym "wildcard" )
# 10655 "src/syntax/parser.ml"
     in
    _menhir_goto_ident _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)

and _menhir_run74 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState74 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ = 
# 142 "<standard.mly>"
    ( [] )
# 10676 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run349 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState350 _v
        | WILDCARD ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState350
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState350) : 'freshtv16)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/syntax/parser.mly"
       (string)
# 10715 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 11 "src/syntax/parser.mly"
       (string)
# 10725 "src/syntax/parser.ml"
    )) : (
# 11 "src/syntax/parser.mly"
       (string)
# 10729 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_ident = 
# 233 "src/syntax/parser.mly"
          ( x )
# 10734 "src/syntax/parser.ml"
     in
    _menhir_goto_ident _menhir_env _menhir_stack _menhir_s _v) : 'freshtv14)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and csm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 39 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 10753 "src/syntax/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RETURN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv12))

and efsm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 36 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 10785 "src/syntax/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AUTOMATON ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139) : 'freshtv10))

and hsm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 37 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 10809 "src/syntax/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState165 _v
    | LET ->
        _menhir_run166 _menhir_env (Obj.magic _menhir_stack) MenhirState165
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState165
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState165) : 'freshtv8))

and li : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 40 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 10837 "src/syntax/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | BANG ->
        _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | BOOL_LIT _v ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
    | CALL ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
    | IF ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | INT_LIT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
    | LBRACKET ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | LET ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | LIST_HD ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | LIST_TL ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | LPAREN ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | MINUS ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | NOT ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | RPAREN ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState192) : 'freshtv6))

and platform : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 41 "src/syntax/parser.mly"
       (Ast.PLATFORM.prog)
# 10895 "src/syntax/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CIRCUIT ->
        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState335) : 'freshtv4))

and psm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 38 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 10919 "src/syntax/parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState348 _v
    | LET ->
        _menhir_run349 _menhir_env (Obj.magic _menhir_stack) MenhirState348
    | LPAREN ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState348
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState348
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState348) : 'freshtv2))

# 269 "<standard.mly>"
  

# 10949 "src/syntax/parser.ml"
