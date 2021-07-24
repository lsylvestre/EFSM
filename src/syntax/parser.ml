
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
# 42 "src/syntax/parser.ml"
  )
    | INT
    | IN
    | IF
    | IDENT of (
# 11 "src/syntax/parser.mly"
       (string)
# 50 "src/syntax/parser.ml"
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
    | CALL
    | BOOL_LIT of (
# 12 "src/syntax/parser.mly"
       (bool)
# 67 "src/syntax/parser.ml"
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
  | MenhirState367
  | MenhirState361
  | MenhirState358
  | MenhirState354
  | MenhirState351
  | MenhirState347
  | MenhirState345
  | MenhirState343
  | MenhirState342
  | MenhirState339
  | MenhirState337
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

# 221 "src/syntax/parser.ml"

let rec _menhir_goto_separated_nonempty_list_AND_psi_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState337 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1485 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1481 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState358 _v
            | LET ->
                _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState358
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState358
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState358
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState358) : 'freshtv1482)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1483 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1484)) : 'freshtv1486)
    | MenhirState361 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1489 * _menhir_state * 'tv_psi_psm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1487 * _menhir_state * 'tv_psi_psm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_psm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_psm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_psm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 268 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1488)) : 'freshtv1490)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_psi_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1475 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1471 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv1472)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1473 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1474)) : 'freshtv1476)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1479 * _menhir_state * 'tv_psi_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1477 * _menhir_state * 'tv_psi_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_csm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_csm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_csm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 321 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1478)) : 'freshtv1480)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1465 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1461 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1459 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 34 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 347 "src/syntax/parser.ml"
            ) = 
# 42 "src/syntax/parser.mly"
                                                          ( p )
# 351 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1457) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 34 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 359 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1455) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 34 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 367 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1453) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 34 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 375 "src/syntax/parser.ml"
            )) : (
# 34 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 379 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1454)) : 'freshtv1456)) : 'freshtv1458)) : 'freshtv1460)) : 'freshtv1462)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1463 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1464)) : 'freshtv1466)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1469 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1467 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 399 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1468)) : 'freshtv1470)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState335 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1447 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1443 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1441 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 36 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 425 "src/syntax/parser.ml"
            ) = 
# 71 "src/syntax/parser.mly"
                                                         ( p )
# 429 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1439) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 36 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 437 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1437) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 36 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 445 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1435) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 36 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 453 "src/syntax/parser.ml"
            )) : (
# 36 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 457 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1436)) : 'freshtv1438)) : 'freshtv1440)) : 'freshtv1442)) : 'freshtv1444)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1445 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1446)) : 'freshtv1448)
    | MenhirState367 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1451 * _menhir_state * 'tv_automaton_psm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1449 * _menhir_state * 'tv_automaton_psm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_psm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 477 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1450)) : 'freshtv1452)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1429) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1427) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ = 
# 144 "<standard.mly>"
    ( x )
# 498 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1425) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1423 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1419 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLONEQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1415 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv1411 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___))) = Obj.magic _menhir_stack in
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
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState321) : 'freshtv1412)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv1413 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1414)) : 'freshtv1416)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1417 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1418)) : 'freshtv1420)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1421 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1422)) : 'freshtv1424)) : 'freshtv1426)) : 'freshtv1428)) : 'freshtv1430)
    | MenhirState311 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1433 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1431 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 603 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1432)) : 'freshtv1434)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState354 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1395 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1393 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_psm_) : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_psm)) = _menhir_stack in
        let _v : 'tv_list_transition_psm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 625 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1394)) : 'freshtv1396)
    | MenhirState342 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1409 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1407 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_psm_) : 'tv_list_transition_psm_) = _v in
        ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_ident__)) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_psi_psm = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 644 "src/syntax/parser.ml"
         in
        
# 79 "src/syntax/parser.mly"
                                                                             ( (q,xs,ts) )
# 649 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1405) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_psm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1403 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1397 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState361 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState361
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState361) : 'freshtv1398)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1399 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_psm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_psm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 682 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1400)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1401 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1402)) : 'freshtv1404)) : 'freshtv1406)) : 'freshtv1408)) : 'freshtv1410)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1377 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1375 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_csm_) : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_csm)) = _menhir_stack in
        let _v : 'tv_list_transition_csm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 711 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1376)) : 'freshtv1378)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1391 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1389 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_csm_) : 'tv_list_transition_csm_) = _v in
        ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_ident__)) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_psi_csm = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 730 "src/syntax/parser.ml"
         in
        
# 97 "src/syntax/parser.mly"
                                                                             ( (q,xs,ts) )
# 735 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1387) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_csm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1385 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1379 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124) : 'freshtv1380)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1381 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_csm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_csm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 768 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1383 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1384)) : 'freshtv1386)) : 'freshtv1388)) : 'freshtv1390)) : 'freshtv1392)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_psi_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1369 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1365 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181) : 'freshtv1366)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1367 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1368)) : 'freshtv1370)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1373 * _menhir_state * 'tv_psi_hsm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1371 * _menhir_state * 'tv_psi_hsm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_hsm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_hsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_hsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 824 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1372)) : 'freshtv1374)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_psi_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1359 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1355 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1353 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (_2 : 'tv_option_PIPE_)), _, (l : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_automaton_efsm = 
# 45 "src/syntax/parser.mly"
                                                               ( EFSM.Automaton l )
# 852 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1351) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_automaton_efsm) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1349 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PIPE_PIPE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1343 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AUTOMATON ->
                    _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState163
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState163) : 'freshtv1344)
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1345 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 883 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1346)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1347 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1348)) : 'freshtv1350)) : 'freshtv1352)) : 'freshtv1354)) : 'freshtv1356)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1357 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1358)) : 'freshtv1360)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1363 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1361 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 910 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1362)) : 'freshtv1364)
    | _ ->
        _menhir_fail ()

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1341 * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_ty = 
# 223 "src/syntax/parser.mly"
                                       ( TCamlRef ty )
# 926 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1342)

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1339 * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_ty = 
# 225 "src/syntax/parser.mly"
                                       ( TCamlList ty )
# 940 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1340)

and _menhir_run65 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1333 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT_LIT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1329 * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
            let (_v : (
# 13 "src/syntax/parser.mly"
       (int)
# 961 "src/syntax/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1325 * _menhir_state * 'tv_ty))) * (
# 13 "src/syntax/parser.mly"
       (int)
# 972 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1323 * _menhir_state * 'tv_ty))) * (
# 13 "src/syntax/parser.mly"
       (int)
# 979 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (ty : 'tv_ty)), (n : (
# 13 "src/syntax/parser.mly"
       (int)
# 984 "src/syntax/parser.ml"
                ))) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_ty = 
# 226 "src/syntax/parser.mly"
                                       ( TArray{ty;size=TSize n} )
# 992 "src/syntax/parser.ml"
                 in
                _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1324)) : 'freshtv1326)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1327 * _menhir_state * 'tv_ty))) * (
# 13 "src/syntax/parser.mly"
       (int)
# 1002 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1328)) : 'freshtv1330)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1331 * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1332)) : 'freshtv1334)
    | ARRAY | LIST | REF | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1335 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ty = 
# 224 "src/syntax/parser.mly"
                                       ( TCamlArray ty )
# 1021 "src/syntax/parser.ml"
         in
        _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1336)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1337 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1338)

and _menhir_goto_separated_nonempty_list_AND_binding_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1317 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1313 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState299) : 'freshtv1314)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1315 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1316)) : 'freshtv1318)
    | MenhirState305 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1321 * _menhir_state * 'tv_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1319 * _menhir_state * 'tv_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_li)), _, (xs : 'tv_separated_nonempty_list_AND_binding_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_binding_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1105 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1320)) : 'freshtv1322)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_fun_binding_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1307 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1303 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState203) : 'freshtv1304)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1305 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1306)) : 'freshtv1308)
    | MenhirState296 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1311 * _menhir_state * 'tv_fun_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1309 * _menhir_state * 'tv_fun_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_fun_binding_li)), _, (xs : 'tv_separated_nonempty_list_AND_fun_binding_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_fun_binding_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1184 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1310)) : 'freshtv1312)
    | _ ->
        _menhir_fail ()

and _menhir_goto_inst_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_inst_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1301 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1297 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState219) : 'freshtv1298)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1299 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1300)) : 'freshtv1302)

and _menhir_goto_separated_nonempty_list_COMMA_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState268 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1269 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1265 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1263 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (e1 : 'tv_exp_li)), _, (es : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 127 "src/syntax/parser.mly"
                            ( LI.App(x,e1::es) )
# 1275 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1264)) : 'freshtv1266)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1267 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1268)) : 'freshtv1270)
    | MenhirState272 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1273 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1271 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_exp_li)), _, (xs : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_exp_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1295 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1272)) : 'freshtv1274)
    | MenhirState210 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1281 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1277 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1275 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (x : 'tv_ident)), _, (args : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 182 "src/syntax/parser.mly"
                                ( mk_call x args )
# 1317 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1276)) : 'freshtv1278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1279 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1280)) : 'freshtv1282)
    | MenhirState321 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1295 * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1293 * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_exp_li__ = 
# 144 "<standard.mly>"
    ( x )
# 1336 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1291) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1289 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1285 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1283 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
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
# 1365 "src/syntax/parser.ml"
              
            in
            let xs = 
# 232 "<standard.mly>"
    ( xs )
# 1371 "src/syntax/parser.ml"
             in
            
# 211 "src/syntax/parser.mly"
  ( Inst.Assign (List.combine xs es) )
# 1376 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1284)) : 'freshtv1286)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1287 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1288)) : 'freshtv1290)) : 'freshtv1292)) : 'freshtv1294)) : 'freshtv1296)
    | _ ->
        _menhir_fail ()

and _menhir_goto_caml_prim : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_caml_prim -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1261) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_caml_prim) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1259) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : 'tv_caml_prim) : 'tv_caml_prim) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 134 "src/syntax/parser.mly"
                            ( LI.CamlPrim e )
# 1402 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1260)) : 'freshtv1262)

and _menhir_goto_prim_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prim_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1257) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_prim_exp_li_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1255) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_prim_exp_li_) : 'tv_prim_exp_li_) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 117 "src/syntax/parser.mly"
                           ( LI.Prim p )
# 1419 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1256)) : 'freshtv1258)

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

and _menhir_reduce85 : _menhir_env -> ((('ttv_tail * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_exp_li)) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _v : 'tv_lvalue_exp_li_ = 
# 215 "src/syntax/parser.mly"
                                 ( (x,Some a) )
# 1477 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce118 : _menhir_env -> ((('ttv_tail * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_exp_li)) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _v : 'tv_prim_exp_li_ = 
# 177 "src/syntax/parser.mly"
                                ( mk_array_get x a )
# 1489 "src/syntax/parser.ml"
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
        let (_menhir_stack : ('freshtv1251 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        let (_v : (
# 13 "src/syntax/parser.mly"
       (int)
# 1826 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1249 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        let ((n : (
# 13 "src/syntax/parser.mly"
       (int)
# 1834 "src/syntax/parser.ml"
        )) : (
# 13 "src/syntax/parser.mly"
       (int)
# 1838 "src/syntax/parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_exp_li)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_prim_exp_li_ = 
# 178 "src/syntax/parser.mly"
                                ( mk_array_make n e )
# 1845 "src/syntax/parser.ml"
         in
        _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1250)) : 'freshtv1252)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1253 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1254)

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
        let (_menhir_stack : ('freshtv1245 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState232) : 'freshtv1246)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1247 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1248)

and _menhir_goto_automaton_psm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_psm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState351 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1223 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1221 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_automaton_psm = 
# 75 "src/syntax/parser.mly"
                                       ( PSM.Seq(s,a) )
# 2067 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1222)) : 'freshtv1224)
    | MenhirState345 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1231 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1229 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_psm = 
# 82 "src/syntax/parser.mly"
                                 ( (g,a) )
# 2081 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1227) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_psm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1225 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run343 _menhir_env (Obj.magic _menhir_stack) MenhirState354
        | AND | IN ->
            _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack) MenhirState354
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState354) : 'freshtv1226)) : 'freshtv1228)) : 'freshtv1230)) : 'freshtv1232)
    | MenhirState358 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1235 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1233 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_psi_psm_)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_psm = 
# 76 "src/syntax/parser.mly"
                                                                     ( PSM.LetRec (bs,a) )
# 2113 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1234)) : 'freshtv1236)
    | MenhirState367 | MenhirState335 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1243 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE_PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1237 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _v
            | LET ->
                _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState367
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState367
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState367
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState367) : 'freshtv1238)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1239 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_psm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2147 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1241 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1242)) : 'freshtv1244)
    | _ ->
        _menhir_fail ()

and _menhir_reduce147 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)) = _menhir_stack in
    let _v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2166 "src/syntax/parser.ml"
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

and _menhir_reduce70 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_psm_ = 
# 211 "<standard.mly>"
    ( [] )
# 2235 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_psm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run343 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState343 _v
    | CALL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState343
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState343 _v
    | INT_LIT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState343 _v
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState343
    | LPAREN ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState343
    | MINUS ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState343
    | NOT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState343
    | ONE ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState343
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState343
    | ZERO ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState343
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState343

and _menhir_reduce64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_csm_ = 
# 211 "<standard.mly>"
    ( [] )
# 2277 "src/syntax/parser.ml"
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

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1215 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1211 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1209 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 35 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 2334 "src/syntax/parser.ml"
            ) = 
# 56 "src/syntax/parser.mly"
                                                         ( p )
# 2338 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1207) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 35 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 2346 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1205) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 35 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 2354 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1203) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 35 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 2362 "src/syntax/parser.ml"
            )) : (
# 35 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 2366 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1204)) : 'freshtv1206)) : 'freshtv1208)) : 'freshtv1210)) : 'freshtv1212)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1213 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1214)) : 'freshtv1216)
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1219 * _menhir_state * 'tv_automaton_hsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1217 * _menhir_state * 'tv_automaton_hsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_hsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2386 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1218)) : 'freshtv1220)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1187 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1185 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_hsm_) : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_hsm)) = _menhir_stack in
        let _v : 'tv_list_transition_hsm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 2408 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1186)) : 'freshtv1188)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1201 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1199 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_hsm_) : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_psi_hsm = 
# 63 "src/syntax/parser.mly"
                                ( (q,ts) )
# 2425 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1197) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_hsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1195 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1189 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184) : 'freshtv1190)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1191 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_hsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_hsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2458 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1193 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1194)) : 'freshtv1196)) : 'freshtv1198)) : 'freshtv1200)) : 'freshtv1202)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1169 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1167 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_efsm)) = _menhir_stack in
        let _v : 'tv_list_transition_efsm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 2487 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1168)) : 'freshtv1170)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1183 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1181 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_psi_efsm = 
# 48 "src/syntax/parser.mly"
                                         ( (q,ts) )
# 2504 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1179) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_efsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1177 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1171 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState157) : 'freshtv1172)
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1173 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2537 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1175 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1176)) : 'freshtv1178)) : 'freshtv1180)) : 'freshtv1182)) : 'freshtv1184)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_lvalue_atom__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1161) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1159) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ = 
# 144 "<standard.mly>"
    ( x )
# 2565 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1160)) : 'freshtv1162)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1165 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1163 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2582 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1164)) : 'freshtv1166)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_binding_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1153 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1149 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv1150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1151 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1152)) : 'freshtv1154)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1157 * _menhir_state * 'tv_binding_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1155 * _menhir_state * 'tv_binding_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_csm)), _, (xs : 'tv_separated_nonempty_list_AND_binding_csm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_binding_csm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2635 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1156)) : 'freshtv1158)
    | _ ->
        _menhir_fail ()

and _menhir_goto_transition_csm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_transition_csm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1147 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
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
        _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv1148)

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1129 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv1125 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1123 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (ty : 'tv_ty)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ty = 
# 218 "src/syntax/parser.mly"
                                       ( ty )
# 2696 "src/syntax/parser.ml"
             in
            _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1124)) : 'freshtv1126)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1127 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1128)) : 'freshtv1130)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1137 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ((('freshtv1133 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1131 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_atom)), _, (t : 'tv_ty)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 179 "src/syntax/parser.mly"
                                ( mk_ty_annot e t )
# 2731 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1132)) : 'freshtv1134)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1135 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1136)) : 'freshtv1138)
    | MenhirState327 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1145 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ((('freshtv1141 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1139 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)), _, (t : 'tv_ty)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 179 "src/syntax/parser.mly"
                                ( mk_ty_annot e t )
# 2766 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1140)) : 'freshtv1142)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1143 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1144)) : 'freshtv1146)
    | _ ->
        _menhir_fail ()

and _menhir_goto_exp_li : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState224 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv849 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv845 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND | COL | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                _menhir_reduce118 _menhir_env (Obj.magic _menhir_stack)
            | COLONEQ | COMMA ->
                _menhir_reduce85 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv843 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv844)) : 'freshtv846)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv847 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv848)) : 'freshtv850)
    | MenhirState227 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv855 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv851 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 197 "src/syntax/parser.mly"
        ( Atom.Mul )
# 2857 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 2862 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv852)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv853 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv854)) : 'freshtv856)
    | MenhirState232 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv867 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ((('freshtv863 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RIGHT_ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv857 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState235) : 'freshtv858)
            | AND | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv859 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (arr : 'tv_exp_li)), _, (idx : 'tv_exp_li)) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_caml_prim = 
# 142 "src/syntax/parser.mly"
                            ( LI.ArrayAccess{arr;idx} )
# 2964 "src/syntax/parser.ml"
                 in
                _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv860)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv861 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv862)) : 'freshtv864)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv865 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv866)) : 'freshtv868)
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv873 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | IN | LPAREN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv869 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (arr : 'tv_exp_li)), _, (idx : 'tv_exp_li)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_caml_prim = 
# 146 "src/syntax/parser.mly"
                            ( LI.ArrayAssign{arr;idx;e} )
# 3026 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv870)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv871 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv872)) : 'freshtv874)
    | MenhirState237 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv879 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv875 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 195 "src/syntax/parser.mly"
       ( Atom.Add )
# 3056 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3061 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv876)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv877 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv878)) : 'freshtv880)
    | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv885 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | IN | LPAREN | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv881 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 205 "src/syntax/parser.mly"
            ( Atom.Or )
# 3109 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3114 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv882)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv883 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv884)) : 'freshtv886)
    | MenhirState243 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv891 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv887 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 203 "src/syntax/parser.mly"
      ( Atom.Neq )
# 3148 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3153 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv888)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv889 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv890)) : 'freshtv892)
    | MenhirState245 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv897 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv893 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 196 "src/syntax/parser.mly"
        ( Atom.Sub )
# 3183 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3188 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv894)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv895 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv896)) : 'freshtv898)
    | MenhirState247 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv903 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv899 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 198 "src/syntax/parser.mly"
     ( Atom.Lt )
# 3222 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3227 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv900)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv901 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv902)) : 'freshtv904)
    | MenhirState249 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv909 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv905 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 199 "src/syntax/parser.mly"
     ( Atom.Le )
# 3261 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3266 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv906)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv907 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv908)) : 'freshtv910)
    | MenhirState251 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv915 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | IN | LAND | LPAREN | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv911 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 204 "src/syntax/parser.mly"
       ( Atom.And )
# 3312 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3317 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv912)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv913 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv914)) : 'freshtv916)
    | MenhirState253 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv921 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv917 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 200 "src/syntax/parser.mly"
     ( Atom.Gt )
# 3351 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3356 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv918)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv919 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv920)) : 'freshtv922)
    | MenhirState255 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv927 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv923 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 201 "src/syntax/parser.mly"
     ( Atom.Ge )
# 3390 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3395 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv924)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv925 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv926)) : 'freshtv928)
    | MenhirState257 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv933 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv929 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 202 "src/syntax/parser.mly"
     ( Atom.Eq )
# 3429 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3434 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv930)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv931 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv932)) : 'freshtv934)
    | MenhirState260 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv939 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | IN | LPAREN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv935 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_caml_prim = 
# 140 "src/syntax/parser.mly"
                            ( LI.RefAssign{r=Var x;e} )
# 3484 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv936)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv937 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv938)) : 'freshtv940)
    | MenhirState193 | MenhirState197 | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv949 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv945 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLONEQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv941 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState264) : 'freshtv942)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv943 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv944)) : 'freshtv946)
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
            let (_menhir_stack : ('freshtv947 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv948)) : 'freshtv950)
    | MenhirState264 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv955 * _menhir_state) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | IN | LPAREN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv951 * _menhir_state) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (r : 'tv_exp_li)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_caml_prim = 
# 139 "src/syntax/parser.mly"
                            ( LI.RefAssign{r;e} )
# 3634 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv952)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv953 * _menhir_state) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv954)) : 'freshtv956)
    | MenhirState221 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv965 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv957 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState268) : 'freshtv958)
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
            let (_menhir_stack : (('freshtv961 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv959 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 129 "src/syntax/parser.mly"
                            ( LI.App(x,[e]) )
# 3732 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv960)) : 'freshtv962)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv963 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv964)) : 'freshtv966)
    | MenhirState321 | MenhirState210 | MenhirState272 | MenhirState268 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv973 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv967 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState272) : 'freshtv968)
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
            let (_menhir_stack : 'freshtv969 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_exp_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3829 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv970)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv971 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv972)) : 'freshtv974)
    | MenhirState274 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv981 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv977 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                _menhir_reduce118 _menhir_env (Obj.magic _menhir_stack)
            | COLONEQ ->
                _menhir_reduce85 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv975 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv976)) : 'freshtv978)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv979 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv980)) : 'freshtv982)
    | MenhirState219 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv987 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | IN | LPAREN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv983 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_exp_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 120 "src/syntax/parser.mly"
                                   ( LI.Seq(s,e) )
# 3935 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv984)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv985 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv986)) : 'freshtv988)
    | MenhirState217 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv993 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv989 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_inst_exp_li_ = 
# 208 "src/syntax/parser.mly"
                          ( Inst.Assign [ (x,a) ] )
# 3985 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv990)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv991 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv992)) : 'freshtv994)
    | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv999 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv995 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_caml_prim = 
# 147 "src/syntax/parser.mly"
                            ( LI.ArrayLength e )
# 4013 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv996)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv997 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv998)) : 'freshtv1000)
    | MenhirState212 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1005 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1001 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_caml_prim = 
# 137 "src/syntax/parser.mly"
                            ( LI.RefAccess e )
# 4041 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1002)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1003 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1004)) : 'freshtv1006)
    | MenhirState207 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1011 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv1007 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState284) : 'freshtv1008)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1009 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1010)) : 'freshtv1012)
    | MenhirState284 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1017 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1013 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState286) : 'freshtv1014)
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
            let (_menhir_stack : ((('freshtv1015 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1016)) : 'freshtv1018)
    | MenhirState286 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1023 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | IN | LPAREN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1019 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_exp_li)), _, (e2 : 'tv_exp_li)), _, (e3 : 'tv_exp_li)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 133 "src/syntax/parser.mly"
                            ( LI.If(e1,e2,e3) )
# 4263 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1020)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1021 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1022)) : 'freshtv1024)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1029 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | IN | LPAREN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1025 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_fun_binding_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 124 "src/syntax/parser.mly"
                           ( LI.LetRec (bs,e) )
# 4315 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1026)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1027 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1028)) : 'freshtv1030)
    | MenhirState293 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1045 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ((((('freshtv1041 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (f : 'tv_ident)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_ident__)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_fun_binding_li = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 4367 "src/syntax/parser.ml"
             in
            
# 158 "src/syntax/parser.mly"
                                                                   ( (f,xs,e) )
# 4372 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1039) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_fun_binding_li) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1037 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1031 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState296) : 'freshtv1032)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1033 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_fun_binding_li)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_fun_binding_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4405 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1034)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1035 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1036)) : 'freshtv1038)) : 'freshtv1040)) : 'freshtv1042)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1043 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1044)) : 'freshtv1046)
    | MenhirState299 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1051 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | ELSE | EOF | IN | LPAREN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1047 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_binding_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 122 "src/syntax/parser.mly"
                           ( LI.Let (bs,e) )
# 4463 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1048)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1049 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1050)) : 'freshtv1052)
    | MenhirState302 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1067 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv1063 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_binding_li = 
# 155 "src/syntax/parser.mly"
                           ( (x,e) )
# 4513 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1061) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_binding_li) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1059 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1053 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState305) : 'freshtv1054)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1055 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_li)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_binding_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4546 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1056)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1057 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1058)) : 'freshtv1060)) : 'freshtv1062)) : 'freshtv1064)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1065 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1066)) : 'freshtv1068)
    | MenhirState199 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1073 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1069 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_caml_prim = 
# 148 "src/syntax/parser.mly"
                            ( LI.ListHd e )
# 4581 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1070)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1071 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1072)) : 'freshtv1074)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1079 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1075 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_caml_prim = 
# 149 "src/syntax/parser.mly"
                            ( LI.ListTl e )
# 4609 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1076)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1077 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1078)) : 'freshtv1080)
    | MenhirState315 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1085 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv1081 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce85 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv1082)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1083 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1084)) : 'freshtv1086)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1095 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1087 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState327) : 'freshtv1088)
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
            let (_menhir_stack : ('freshtv1091 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1089 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li = 
# 111 "src/syntax/parser.mly"
                           ( e )
# 4725 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1090)) : 'freshtv1092)
        | TIMES ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1093 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1094)) : 'freshtv1096)
    | MenhirState195 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1101 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1097 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 176 "src/syntax/parser.mly"
                                ( mk_unop Atom.Uminus a )
# 4755 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1098)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1099 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1100)) : 'freshtv1102)
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1107 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1103 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 175 "src/syntax/parser.mly"
                                ( mk_unop Atom.Not a  )
# 4783 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1104)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1105 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1106)) : 'freshtv1108)
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1121 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1117 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1115 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 38 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4811 "src/syntax/parser.ml"
            ) = 
# 108 "src/syntax/parser.mly"
               ( e )
# 4815 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1113) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 38 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4823 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1111) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 38 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4831 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1109) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 38 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4839 "src/syntax/parser.ml"
            )) : (
# 38 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4843 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1110)) : 'freshtv1112)) : 'freshtv1114)) : 'freshtv1116)) : 'freshtv1118)
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
            let (_menhir_stack : 'freshtv1119 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1120)) : 'freshtv1122)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_atom__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv825 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv821 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv819 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
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
# 4907 "src/syntax/parser.ml"
              
            in
            let xs = 
# 232 "<standard.mly>"
    ( xs )
# 4913 "src/syntax/parser.ml"
             in
            
# 211 "src/syntax/parser.mly"
  ( Inst.Assign (List.combine xs es) )
# 4918 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv820)) : 'freshtv822)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv823 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv824)) : 'freshtv826)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv833 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv829 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv827 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_automaton_csm = let es = 
# 232 "<standard.mly>"
    ( xs )
# 4946 "src/syntax/parser.ml"
             in
            
# 90 "src/syntax/parser.mly"
                                                      ( CSM.State (q,es) )
# 4951 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv828)) : 'freshtv830)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv831 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv832)) : 'freshtv834)
    | MenhirState347 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv841 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv837 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv835 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_automaton_psm = let es = 
# 232 "<standard.mly>"
    ( xs )
# 4979 "src/syntax/parser.ml"
             in
            
# 74 "src/syntax/parser.mly"
                                                      ( PSM.State (q,es) )
# 4984 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv836)) : 'freshtv838)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv839 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv840)) : 'freshtv842)
    | _ ->
        _menhir_fail ()

and _menhir_goto_lvalue_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState192 | MenhirState193 | MenhirState194 | MenhirState195 | MenhirState321 | MenhirState315 | MenhirState197 | MenhirState198 | MenhirState199 | MenhirState302 | MenhirState299 | MenhirState293 | MenhirState203 | MenhirState286 | MenhirState284 | MenhirState207 | MenhirState210 | MenhirState212 | MenhirState274 | MenhirState272 | MenhirState268 | MenhirState221 | MenhirState264 | MenhirState260 | MenhirState257 | MenhirState255 | MenhirState253 | MenhirState251 | MenhirState249 | MenhirState247 | MenhirState245 | MenhirState243 | MenhirState241 | MenhirState237 | MenhirState235 | MenhirState232 | MenhirState227 | MenhirState224 | MenhirState222 | MenhirState219 | MenhirState217 | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv809 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv807 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv808)) : 'freshtv810)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv813 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run311 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce147 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv811 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv812)) : 'freshtv814)
    | MenhirState311 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv817 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run311 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce147 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv815 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv816)) : 'freshtv818)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_ident__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_ident__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv785 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv781 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv777 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
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
                    _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState97
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv778)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv779 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv780)) : 'freshtv782)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv783 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv784)) : 'freshtv786)
    | MenhirState290 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv795 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv791 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv787 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState293) : 'freshtv788)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv789 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv790)) : 'freshtv792)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv793 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv794)) : 'freshtv796)
    | MenhirState339 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv805 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv801 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv797 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IF ->
                    _menhir_run343 _menhir_env (Obj.magic _menhir_stack) MenhirState342
                | AND | IN ->
                    _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack) MenhirState342
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState342) : 'freshtv798)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv799 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv800)) : 'freshtv802)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv803 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv804)) : 'freshtv806)
    | _ ->
        _menhir_fail ()

and _menhir_goto_automaton_hsm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_hsm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv763 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv761 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_hsm)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_hsm = 
# 66 "src/syntax/parser.mly"
                                                      ( (g,s,a) )
# 5240 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv759) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_hsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv757 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | AND | IN ->
            _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177) : 'freshtv758)) : 'freshtv760)) : 'freshtv762)) : 'freshtv764)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv767 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv765 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_psi_hsm_)), _, (a : 'tv_automaton_hsm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_hsm = 
# 60 "src/syntax/parser.mly"
                                                                     ( HSM.LetRec (bs,a) )
# 5272 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_hsm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv766)) : 'freshtv768)
    | MenhirState190 | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv775 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE_PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv769 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190) : 'freshtv770)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv771 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_hsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5304 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv772)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv773 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv774)) : 'freshtv776)
    | _ ->
        _menhir_fail ()

and _menhir_reduce68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_hsm_ = 
# 211 "<standard.mly>"
    ( [] )
# 5322 "src/syntax/parser.ml"
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

and _menhir_reduce66 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_efsm_ = 
# 211 "<standard.mly>"
    ( [] )
# 5364 "src/syntax/parser.ml"
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
        let (_menhir_stack : 'freshtv737 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv733 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv734)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv735 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv736)) : 'freshtv738)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv743 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv739 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149) : 'freshtv740)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv741 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv742)) : 'freshtv744)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv749 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv745 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState174) : 'freshtv746)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv747 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv748)) : 'freshtv750)
    | MenhirState367 | MenhirState335 | MenhirState358 | MenhirState351 | MenhirState345 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv755 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv751 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState351 _v
            | LET ->
                _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState351
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState351
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState351
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState351) : 'freshtv752)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv753 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv754)) : 'freshtv756)
    | _ ->
        _menhir_fail ()

and _menhir_goto_lvalue_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState77 | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv725 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv719 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv720)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv721 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5559 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv722)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv723 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv724)) : 'freshtv726)
    | MenhirState367 | MenhirState335 | MenhirState358 | MenhirState351 | MenhirState345 | MenhirState172 | MenhirState147 | MenhirState0 | MenhirState131 | MenhirState128 | MenhirState121 | MenhirState97 | MenhirState113 | MenhirState109 | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv731 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv727 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv728)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv729 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv730)) : 'freshtv732)
    | _ ->
        _menhir_fail ()

and _menhir_goto_automaton_csm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_csm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv673 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv671 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_automaton_csm = 
# 91 "src/syntax/parser.mly"
                                       ( CSM.Seq(s,a) )
# 5631 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv672)) : 'freshtv674)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv677 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv675 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_atom)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_csm = 
# 101 "src/syntax/parser.mly"
                                 ( (e,a) )
# 5645 "src/syntax/parser.ml"
         in
        _menhir_goto_transition_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv676)) : 'freshtv678)
    | MenhirState97 | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv681 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv679 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _v : 'tv_transition_csm = 
# 100 "src/syntax/parser.mly"
                  ( (mk_bool' true,a) )
# 5657 "src/syntax/parser.ml"
         in
        _menhir_goto_transition_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv680)) : 'freshtv682)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv685 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv683 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_psi_csm_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_csm = 
# 92 "src/syntax/parser.mly"
                                                                     ( CSM.LetRec (bs,a) )
# 5672 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv684)) : 'freshtv686)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv689 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv687 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_binding_csm_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_automaton_csm = 
# 94 "src/syntax/parser.mly"
                                                                     ( CSM.Let (bs,a) )
# 5686 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv688)) : 'freshtv690)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv703 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv701 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_binding_csm = 
# 104 "src/syntax/parser.mly"
                             ( (x,a) )
# 5699 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv699) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binding_csm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv697 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv691 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv692)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv693 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_csm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_binding_csm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5732 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_binding_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv694)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv695 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv696)) : 'freshtv698)) : 'freshtv700)) : 'freshtv702)) : 'freshtv704)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv717 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv713 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv711 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (a : 'tv_automaton_csm)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 37 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 5758 "src/syntax/parser.ml"
            ) = 
# 87 "src/syntax/parser.mly"
                      ( a )
# 5762 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv709) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 37 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 5770 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv707) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 37 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 5778 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv705) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 37 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 5786 "src/syntax/parser.ml"
            )) : (
# 37 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 5790 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv706)) : 'freshtv708)) : 'freshtv710)) : 'freshtv712)) : 'freshtv714)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv715 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv716)) : 'freshtv718)
    | _ ->
        _menhir_fail ()

and _menhir_run56 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv669) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 219 "src/syntax/parser.mly"
                                       ( TStd_logic )
# 5813 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv670)

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv667) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 222 "src/syntax/parser.mly"
                                       ( TPtr )
# 5827 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv668)

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
    let (_menhir_stack : 'freshtv665) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 220 "src/syntax/parser.mly"
                                       ( TInt )
# 5862 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv666)

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv663) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 221 "src/syntax/parser.mly"
                                       ( TBool )
# 5876 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv664)

and _menhir_goto_separated_nonempty_list_COMMA_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv653 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv649 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv647 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (x : 'tv_ident)), _, (args : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 182 "src/syntax/parser.mly"
                                ( mk_call x args )
# 5903 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv648)) : 'freshtv650)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv651 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv652)) : 'freshtv654)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv657 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv655 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_atom)), _, (xs : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 5923 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv656)) : 'freshtv658)
    | MenhirState347 | MenhirState102 | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv661 * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv659 * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 144 "<standard.mly>"
    ( x )
# 5935 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv660)) : 'freshtv662)
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
    let (_menhir_stack : 'freshtv645) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_prim_atom_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv643) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_prim_atom_) : 'tv_prim_atom_) = _v in
    ((let _v : 'tv_atom = 
# 191 "src/syntax/parser.mly"
                         ( mk_prim p )
# 5986 "src/syntax/parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv644)) : 'freshtv646)

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
        let (_menhir_stack : ('freshtv639 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let (_v : (
# 13 "src/syntax/parser.mly"
       (int)
# 6225 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv637 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let ((n : (
# 13 "src/syntax/parser.mly"
       (int)
# 6233 "src/syntax/parser.ml"
        )) : (
# 13 "src/syntax/parser.mly"
       (int)
# 6237 "src/syntax/parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_atom)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_prim_atom_ = 
# 178 "src/syntax/parser.mly"
                                ( mk_array_make n e )
# 6244 "src/syntax/parser.ml"
         in
        _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv638)) : 'freshtv640)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv641 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv642)

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
    let (_menhir_stack : 'freshtv635) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_const_atom_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv633) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : 'tv_const_atom_) : 'tv_const_atom_) = _v in
    ((let _v : 'tv_atom = 
# 190 "src/syntax/parser.mly"
                         ( mk_const c )
# 6364 "src/syntax/parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv634)) : 'freshtv636)

and _menhir_goto_exp_li_without_paren : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_li_without_paren -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv631) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exp_li_without_paren) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv629) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : 'tv_exp_li_without_paren) : 'tv_exp_li_without_paren) = _v in
    ((let _v : 'tv_exp_li = 
# 112 "src/syntax/parser.mly"
                           ( e )
# 6381 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li _menhir_env _menhir_stack _menhir_s _v) : 'freshtv630)) : 'freshtv632)

and _menhir_reduce72 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 142 "<standard.mly>"
    ( [] )
# 6390 "src/syntax/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce76 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_ident__ = 
# 142 "<standard.mly>"
    ( [] )
# 6404 "src/syntax/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_ident__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce84 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_lvalue_exp_li_ = 
# 214 "src/syntax/parser.mly"
                                 ( (x,None) )
# 6414 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce44 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_exp_li_without_paren = 
# 115 "src/syntax/parser.mly"
                           ( LI.Var x )
# 6424 "src/syntax/parser.ml"
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
        let (_menhir_stack : ('freshtv627 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | PLUS | RBRACKET | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv625 * _menhir_state * 'tv_ident)) * _menhir_state) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 130 "src/syntax/parser.mly"
                            ( LI.App(x,[]) )
# 6516 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv626)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState222) : 'freshtv628)
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
    | MenhirState339 | MenhirState290 | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv619) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv617) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_ident_) : 'tv_separated_nonempty_list_COMMA_ident_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_ident__ = 
# 144 "<standard.mly>"
    ( x )
# 6593 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_ident__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv618)) : 'freshtv620)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv623 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv621 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_ident_) : 'tv_separated_nonempty_list_COMMA_ident_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_ident_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 6610 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_ident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv622)) : 'freshtv624)
    | _ ->
        _menhir_fail ()

and _menhir_reduce157 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_state = 
# 164 "src/syntax/parser.mly"
          ( x )
# 6622 "src/syntax/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv615) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_state) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState124 | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv571 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv567 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | RPAREN ->
                _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv568)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv569 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv570)) : 'freshtv572)
    | MenhirState0 | MenhirState131 | MenhirState128 | MenhirState121 | MenhirState97 | MenhirState113 | MenhirState109 | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv577 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv573 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
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
                _menhir_reduce72 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv574)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv575 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv576)) : 'freshtv578)
    | MenhirState157 | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv583 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv579 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | END | PIPE ->
                _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv580)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv581 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv582)) : 'freshtv584)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv591 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv589 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (s : 'tv_inst_atom_)), _, (q : 'tv_state)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_efsm = 
# 51 "src/syntax/parser.mly"
                                              ( (g,s,q) )
# 6745 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv587) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_efsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv585 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | END | PIPE ->
            _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv586)) : 'freshtv588)) : 'freshtv590)) : 'freshtv592)
    | MenhirState184 | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv597 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv593 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | AND | IN ->
                _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169) : 'freshtv594)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv595 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv596)) : 'freshtv598)
    | MenhirState190 | MenhirState165 | MenhirState181 | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv601 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv599 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _v : 'tv_automaton_hsm = 
# 59 "src/syntax/parser.mly"
          ( HSM.State q )
# 6801 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_hsm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv600)) : 'freshtv602)
    | MenhirState361 | MenhirState337 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv607 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv603 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState339 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState339
            | RPAREN ->
                _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack) MenhirState339
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState339) : 'freshtv604)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv605 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv606)) : 'freshtv608)
    | MenhirState367 | MenhirState335 | MenhirState358 | MenhirState351 | MenhirState345 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv613 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv609 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _v
            | CALL ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState347
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _v
            | INT_LIT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _v
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState347
            | LPAREN ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState347
            | MINUS ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState347
            | NOT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState347
            | ONE ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState347
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState347
            | ZERO ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState347
            | RPAREN ->
                _menhir_reduce72 _menhir_env (Obj.magic _menhir_stack) MenhirState347
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState347) : 'freshtv610)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv611 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv612)) : 'freshtv614)
    | _ ->
        _menhir_fail ()) : 'freshtv616)

and _menhir_reduce82 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_lvalue_atom_ = 
# 214 "src/syntax/parser.mly"
                                 ( (x,None) )
# 6889 "src/syntax/parser.ml"
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
        let (_menhir_stack : (('freshtv425 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv421 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv419 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_atom)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_prim_atom_ = 
# 177 "src/syntax/parser.mly"
                                ( mk_array_get x a )
# 6969 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv420)) : 'freshtv422)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv423 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)) : 'freshtv426)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv431 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv427 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 197 "src/syntax/parser.mly"
        ( Atom.Mul )
# 6997 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7002 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv429 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv430)) : 'freshtv432)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv437 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv433 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 195 "src/syntax/parser.mly"
       ( Atom.Add )
# 7030 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7035 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv435 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)) : 'freshtv438)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv443 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv439 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 205 "src/syntax/parser.mly"
            ( Atom.Or )
# 7081 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7086 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv441 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)) : 'freshtv444)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv449 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv445 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 203 "src/syntax/parser.mly"
      ( Atom.Neq )
# 7118 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7123 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv447 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv448)) : 'freshtv450)
    | MenhirState36 ->
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
# 196 "src/syntax/parser.mly"
        ( Atom.Sub )
# 7151 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7156 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv452)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv453 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv454)) : 'freshtv456)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv461 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv457 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 198 "src/syntax/parser.mly"
     ( Atom.Lt )
# 7188 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7193 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv459 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv460)) : 'freshtv462)
    | MenhirState40 ->
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
# 199 "src/syntax/parser.mly"
     ( Atom.Le )
# 7225 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7230 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv465 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv466)) : 'freshtv468)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv473 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv469 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 204 "src/syntax/parser.mly"
       ( Atom.And )
# 7274 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7279 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv470)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv471 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv472)) : 'freshtv474)
    | MenhirState44 ->
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
# 200 "src/syntax/parser.mly"
     ( Atom.Gt )
# 7311 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7316 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv476)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv477 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv478)) : 'freshtv480)
    | MenhirState46 ->
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
# 201 "src/syntax/parser.mly"
     ( Atom.Ge )
# 7348 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7353 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv482)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv483 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv484)) : 'freshtv486)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv491 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv487 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 202 "src/syntax/parser.mly"
     ( Atom.Eq )
# 7385 "src/syntax/parser.ml"
             in
            
# 174 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 7390 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv489 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)) : 'freshtv492)
    | MenhirState347 | MenhirState102 | MenhirState86 | MenhirState51 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv499 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv493 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv494)
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
            let (_menhir_stack : 'freshtv495 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 7469 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv497 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv498)) : 'freshtv500)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv509 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv501 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv502)
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
            let (_menhir_stack : ('freshtv505 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv503 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_atom = 
# 192 "src/syntax/parser.mly"
                         ( a )
# 7539 "src/syntax/parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv504)) : 'freshtv506)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv507 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv508)) : 'freshtv510)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv515 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv511 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 176 "src/syntax/parser.mly"
                                ( mk_unop Atom.Uminus a )
# 7567 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv512)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv513 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv514)) : 'freshtv516)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv521 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv517 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 175 "src/syntax/parser.mly"
                                ( mk_unop Atom.Not a  )
# 7593 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv519 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv520)) : 'freshtv522)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv527 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv523 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_automaton_csm = 
# 93 "src/syntax/parser.mly"
                ( CSM.Return a )
# 7641 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv525 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv526)) : 'freshtv528)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv535 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv531 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv529 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_atom)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_lvalue_atom_ = 
# 215 "src/syntax/parser.mly"
                                 ( (x,Some a) )
# 7691 "src/syntax/parser.ml"
             in
            _menhir_goto_lvalue_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv530)) : 'freshtv532)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv533 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv534)) : 'freshtv536)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv541 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv537 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv538)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv539 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv540)) : 'freshtv542)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv547 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv543 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)), _, (a : 'tv_atom)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_inst_atom_ = 
# 208 "src/syntax/parser.mly"
                          ( Inst.Assign [ (x,a) ] )
# 7798 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv544)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv545 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv546)) : 'freshtv548)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv553 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv549 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147) : 'freshtv550)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv551 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv552)) : 'freshtv554)
    | MenhirState170 ->
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
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState172
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172) : 'freshtv556)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv557 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv558)) : 'freshtv560)
    | MenhirState343 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv565 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv561 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState345 _v
            | LET ->
                _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState345
            | LPAREN ->
                _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState345
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState345
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState345) : 'freshtv562)
        | TIMES ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv563 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv564)) : 'freshtv566)
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
        let (_menhir_stack : 'freshtv417 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState7 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_const_atom_ = 
# 170 "src/syntax/parser.mly"
                           ( Unit )
# 8076 "src/syntax/parser.ml"
         in
        _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv416)) : 'freshtv418)
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
        let (_menhir_stack : 'freshtv411 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_const_atom_ = 
# 171 "src/syntax/parser.mly"
                           ( EmptyList )
# 8106 "src/syntax/parser.ml"
         in
        _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)) : 'freshtv412)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv414)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "src/syntax/parser.mly"
       (int)
# 8120 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv407) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 13 "src/syntax/parser.mly"
       (int)
# 8130 "src/syntax/parser.ml"
    )) : (
# 13 "src/syntax/parser.mly"
       (int)
# 8134 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_atom_ = 
# 169 "src/syntax/parser.mly"
                           ( mk_int n )
# 8139 "src/syntax/parser.ml"
     in
    _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv408)

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
# 8161 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv405) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 12 "src/syntax/parser.mly"
       (bool)
# 8171 "src/syntax/parser.ml"
    )) : (
# 12 "src/syntax/parser.mly"
       (bool)
# 8175 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_atom_ = 
# 167 "src/syntax/parser.mly"
                           ( mk_bool b )
# 8180 "src/syntax/parser.ml"
     in
    _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)

and _menhir_goto_option_PIPE_ : _menhir_env -> 'ttv_tail -> 'tv_option_PIPE_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv403 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142) : 'freshtv404)

and _menhir_goto_std_logic : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_std_logic -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState347 | MenhirState343 | MenhirState170 | MenhirState145 | MenhirState106 | MenhirState102 | MenhirState98 | MenhirState86 | MenhirState80 | MenhirState2 | MenhirState5 | MenhirState6 | MenhirState7 | MenhirState51 | MenhirState48 | MenhirState46 | MenhirState44 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState34 | MenhirState32 | MenhirState30 | MenhirState25 | MenhirState22 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_const_atom_ = 
# 168 "src/syntax/parser.mly"
                           ( mk_std_logic v )
# 8216 "src/syntax/parser.ml"
         in
        _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)) : 'freshtv398)
    | MenhirState192 | MenhirState193 | MenhirState194 | MenhirState195 | MenhirState321 | MenhirState315 | MenhirState196 | MenhirState197 | MenhirState198 | MenhirState199 | MenhirState302 | MenhirState299 | MenhirState293 | MenhirState203 | MenhirState286 | MenhirState284 | MenhirState207 | MenhirState210 | MenhirState212 | MenhirState274 | MenhirState272 | MenhirState268 | MenhirState221 | MenhirState264 | MenhirState260 | MenhirState257 | MenhirState255 | MenhirState253 | MenhirState251 | MenhirState249 | MenhirState247 | MenhirState245 | MenhirState243 | MenhirState241 | MenhirState237 | MenhirState235 | MenhirState232 | MenhirState227 | MenhirState224 | MenhirState222 | MenhirState219 | MenhirState217 | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_const_exp_li_ = 
# 168 "src/syntax/parser.mly"
                           ( mk_std_logic v )
# 8231 "src/syntax/parser.ml"
         in
        _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)) : 'freshtv402)
    | _ ->
        _menhir_fail ()

and _menhir_goto_const_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_const_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv393) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_const_exp_li_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv391) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : 'tv_const_exp_li_) : 'tv_const_exp_li_) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 116 "src/syntax/parser.mly"
                           ( LI.Const c )
# 8250 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)) : 'freshtv394)

and _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv389 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv385 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv381 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv377 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___))) = Obj.magic _menhir_stack in
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
                    _menhir_reduce72 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv378)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv379 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv383 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv387 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)) : 'freshtv390)

and _menhir_goto_ident : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv307 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv303 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv304)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv305 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)
    | MenhirState347 | MenhirState343 | MenhirState170 | MenhirState145 | MenhirState106 | MenhirState102 | MenhirState98 | MenhirState86 | MenhirState80 | MenhirState2 | MenhirState5 | MenhirState6 | MenhirState7 | MenhirState51 | MenhirState48 | MenhirState46 | MenhirState44 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState34 | MenhirState32 | MenhirState30 | MenhirState25 | MenhirState22 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv309 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv310)
        | AND | COL | COMMA | EOF | EQ | GE | GT | HAT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES | WILDCARD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv311 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
            let _v : 'tv_atom = 
# 189 "src/syntax/parser.mly"
                         ( Atom.Var x )
# 8424 "src/syntax/parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv313 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
    | MenhirState172 | MenhirState147 | MenhirState74 | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | COLONEQ | COMMA | RPAREN ->
            _menhir_reduce82 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv317 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)) : 'freshtv320)
    | MenhirState367 | MenhirState335 | MenhirState358 | MenhirState345 | MenhirState351 | MenhirState0 | MenhirState131 | MenhirState128 | MenhirState121 | MenhirState97 | MenhirState113 | MenhirState100 | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            _menhir_reduce157 _menhir_env (Obj.magic _menhir_stack)
        | COLONEQ ->
            _menhir_reduce82 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv321 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)) : 'freshtv324)
    | MenhirState339 | MenhirState290 | MenhirState118 | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv325 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv326)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv327 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_ident_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 8497 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_ident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | MenhirState337 | MenhirState361 | MenhirState190 | MenhirState165 | MenhirState167 | MenhirState184 | MenhirState181 | MenhirState174 | MenhirState142 | MenhirState157 | MenhirState149 | MenhirState91 | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv333 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        (_menhir_reduce157 _menhir_env (Obj.magic _menhir_stack) : 'freshtv334)
    | MenhirState134 | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv339 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv335 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv336)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv337 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv345 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv341 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState210) : 'freshtv342)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv343 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
    | MenhirState194 | MenhirState195 | MenhirState321 | MenhirState198 | MenhirState199 | MenhirState299 | MenhirState203 | MenhirState286 | MenhirState210 | MenhirState212 | MenhirState213 | MenhirState272 | MenhirState268 | MenhirState221 | MenhirState264 | MenhirState260 | MenhirState257 | MenhirState255 | MenhirState253 | MenhirState251 | MenhirState249 | MenhirState247 | MenhirState245 | MenhirState243 | MenhirState241 | MenhirState237 | MenhirState235 | MenhirState227 | MenhirState219 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv351 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run260 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv347 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState274) : 'freshtv348)
        | LPAREN ->
            _menhir_run221 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv349 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)
    | MenhirState192 | MenhirState193 | MenhirState196 | MenhirState315 | MenhirState197 | MenhirState302 | MenhirState293 | MenhirState284 | MenhirState207 | MenhirState217 | MenhirState274 | MenhirState232 | MenhirState224 | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv357 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run260 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv353 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState224) : 'freshtv354)
        | LPAREN ->
            _menhir_run221 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_reduce84 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv355 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)
    | MenhirState296 | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv363 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv359 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState290 _v
            | WILDCARD ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | RPAREN ->
                _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState290) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv361 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)
    | MenhirState305 | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv369 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv365 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState302) : 'freshtv366)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv367 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)) : 'freshtv370)
    | MenhirState311 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv375 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv371 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState315) : 'freshtv372)
        | COMMA | RPAREN ->
            _menhir_reduce84 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv373 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)) : 'freshtv376)
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
        let (_menhir_stack : 'freshtv301 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv302)
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
        let (_menhir_stack : 'freshtv295) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv293) = Obj.magic _menhir_stack in
        ((let x = () in
        let _v : 'tv_option_PIPE_ = 
# 116 "<standard.mly>"
    ( Some x )
# 8967 "src/syntax/parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv294)) : 'freshtv296)
    | IDENT _ | WILDCARD ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_PIPE_ = 
# 114 "<standard.mly>"
    ( None )
# 8976 "src/syntax/parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv298)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)

and _menhir_run166 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167) : 'freshtv290)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv287) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_std_logic = 
# 185 "src/syntax/parser.mly"
       ( Atom.Zero )
# 9025 "src/syntax/parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)

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
    let (_menhir_stack : 'freshtv285) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_std_logic = 
# 186 "src/syntax/parser.mly"
       ( Atom.One )
# 9086 "src/syntax/parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)

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
        let (_menhir_stack : 'freshtv283 * _menhir_state) = Obj.magic _menhir_stack in
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
        | AND | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | PLUS | RBRACKET | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv281 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_const_exp_li_ = 
# 170 "src/syntax/parser.mly"
                           ( Unit )
# 9273 "src/syntax/parser.ml"
             in
            _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState197) : 'freshtv284)
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
        let (_menhir_stack : 'freshtv279 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState201) : 'freshtv280)
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
        let (_menhir_stack : 'freshtv275 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_const_exp_li_ = 
# 171 "src/syntax/parser.mly"
                           ( EmptyList )
# 9432 "src/syntax/parser.ml"
         in
        _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)) : 'freshtv276)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)

and _menhir_run206 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "src/syntax/parser.mly"
       (int)
# 9446 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv271) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 13 "src/syntax/parser.mly"
       (int)
# 9456 "src/syntax/parser.ml"
    )) : (
# 13 "src/syntax/parser.mly"
       (int)
# 9460 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_exp_li_ = 
# 169 "src/syntax/parser.mly"
                           ( mk_int n )
# 9465 "src/syntax/parser.ml"
     in
    _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv272)

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
# 9534 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv269) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 12 "src/syntax/parser.mly"
       (bool)
# 9544 "src/syntax/parser.ml"
    )) : (
# 12 "src/syntax/parser.mly"
       (bool)
# 9548 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_exp_li_ = 
# 167 "src/syntax/parser.mly"
                           ( mk_bool b )
# 9553 "src/syntax/parser.ml"
     in
    _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)

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

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState367 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * 'tv_automaton_psm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState361 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * 'tv_psi_psm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState358 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv25 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState354 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState351 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState347 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState345 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv33 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState343 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState342 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv37 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState339 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState337 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState335 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv44)
    | MenhirState327 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState321 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv47 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState315 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState311 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState305 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_binding_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState302 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState299 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState296 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_fun_binding_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState293 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv61 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState290 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState286 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv65 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState284 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState274 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState272 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState268 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv73 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState264 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv75 * _menhir_state) * _menhir_state * 'tv_exp_li))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState260 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState257 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState255 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState253 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState251 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState249 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState247 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState245 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState243 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState237 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv99 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState232 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv101 * _menhir_state * 'tv_exp_li))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState227 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState224 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv107 * _menhir_state * 'tv_ident)) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState221 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState219 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state * 'tv_inst_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState217 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState212 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState210 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState207 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv125 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState199 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv135 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState195 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv146)
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state * 'tv_automaton_hsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state * 'tv_psi_hsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv151 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv155 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv166)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state * 'tv_automaton_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * 'tv_psi_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv173 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv184)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state * 'tv_binding_csm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv189 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state * 'tv_psi_csm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv193 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv205 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv209 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv217 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv227 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv247 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv251 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv268)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ident = 
# 230 "src/syntax/parser.mly"
           ( Gensym.gensym "wildcard" )
# 10280 "src/syntax/parser.ml"
     in
    _menhir_goto_ident _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)

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
        let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState74 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ = 
# 142 "<standard.mly>"
    ( [] )
# 10301 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run336 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _v
        | WILDCARD ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState337
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState337) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/syntax/parser.mly"
       (string)
# 10340 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 11 "src/syntax/parser.mly"
       (string)
# 10350 "src/syntax/parser.ml"
    )) : (
# 11 "src/syntax/parser.mly"
       (string)
# 10354 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_ident = 
# 229 "src/syntax/parser.mly"
          ( x )
# 10359 "src/syntax/parser.ml"
     in
    _menhir_goto_ident _menhir_env _menhir_stack _menhir_s _v) : 'freshtv12)

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
# 37 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 10378 "src/syntax/parser.ml"
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv10))

and efsm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 34 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 10410 "src/syntax/parser.ml"
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
    | AUTOMATON ->
        _menhir_run140 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139) : 'freshtv8))

and hsm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 35 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 10434 "src/syntax/parser.ml"
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
    | IDENT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState165 _v
    | LET ->
        _menhir_run166 _menhir_env (Obj.magic _menhir_stack) MenhirState165
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState165
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState165) : 'freshtv6))

and li : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 38 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 10462 "src/syntax/parser.ml"
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState192) : 'freshtv4))

and psm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 36 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 10520 "src/syntax/parser.ml"
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
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _v
    | LET ->
        _menhir_run336 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | LPAREN ->
        _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | WILDCARD ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState335
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState335) : 'freshtv2))

# 269 "<standard.mly>"
  

# 10550 "src/syntax/parser.ml"
