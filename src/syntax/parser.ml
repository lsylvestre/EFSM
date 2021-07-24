
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | ZERO
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
# 12 "src/syntax/parser.mly"
       (int)
# 41 "src/syntax/parser.ml"
  )
    | INT
    | IN
    | IF
    | IDENT of (
# 10 "src/syntax/parser.mly"
       (string)
# 49 "src/syntax/parser.ml"
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
# 11 "src/syntax/parser.mly"
       (bool)
# 66 "src/syntax/parser.ml"
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
  | MenhirState353
  | MenhirState347
  | MenhirState344
  | MenhirState340
  | MenhirState337
  | MenhirState333
  | MenhirState331
  | MenhirState329
  | MenhirState328
  | MenhirState325
  | MenhirState323
  | MenhirState321
  | MenhirState313
  | MenhirState307
  | MenhirState299
  | MenhirState297
  | MenhirState291
  | MenhirState288
  | MenhirState285
  | MenhirState282
  | MenhirState279
  | MenhirState275
  | MenhirState273
  | MenhirState269
  | MenhirState266
  | MenhirState260
  | MenhirState252
  | MenhirState250
  | MenhirState248
  | MenhirState246
  | MenhirState244
  | MenhirState242
  | MenhirState240
  | MenhirState238
  | MenhirState236
  | MenhirState233
  | MenhirState230
  | MenhirState225
  | MenhirState222
  | MenhirState220
  | MenhirState216
  | MenhirState215
  | MenhirState213
  | MenhirState210
  | MenhirState207
  | MenhirState205
  | MenhirState201
  | MenhirState198
  | MenhirState196
  | MenhirState195
  | MenhirState194
  | MenhirState193
  | MenhirState192
  | MenhirState191
  | MenhirState190
  | MenhirState189
  | MenhirState187
  | MenhirState181
  | MenhirState178
  | MenhirState174
  | MenhirState171
  | MenhirState169
  | MenhirState167
  | MenhirState166
  | MenhirState164
  | MenhirState162
  | MenhirState160
  | MenhirState154
  | MenhirState148
  | MenhirState146
  | MenhirState144
  | MenhirState142
  | MenhirState141
  | MenhirState139
  | MenhirState136
  | MenhirState131
  | MenhirState128
  | MenhirState125
  | MenhirState122
  | MenhirState119
  | MenhirState114
  | MenhirState111
  | MenhirState108
  | MenhirState104
  | MenhirState101
  | MenhirState99
  | MenhirState98
  | MenhirState93
  | MenhirState91
  | MenhirState88
  | MenhirState87
  | MenhirState83
  | MenhirState78
  | MenhirState73
  | MenhirState71
  | MenhirState55
  | MenhirState52
  | MenhirState46
  | MenhirState44
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState36
  | MenhirState34
  | MenhirState32
  | MenhirState30
  | MenhirState28
  | MenhirState26
  | MenhirState22
  | MenhirState14
  | MenhirState11
  | MenhirState6
  | MenhirState5
  | MenhirState4
  | MenhirState1
  | MenhirState0

# 1 "src/syntax/parser.mly"
  
    open Ast
    open Types

# 212 "src/syntax/parser.ml"

let rec _menhir_goto_separated_nonempty_list_AND_psi_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState323 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1405 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1401 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState344 _v
            | LET ->
                _menhir_run322 _menhir_env (Obj.magic _menhir_stack) MenhirState344
            | LPAREN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState344
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState344) : 'freshtv1402)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1403 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1404)) : 'freshtv1406)
    | MenhirState347 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1409 * _menhir_state * 'tv_psi_psm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1407 * _menhir_state * 'tv_psi_psm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_psm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_psm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_psm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 257 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1408)) : 'freshtv1410)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_psi_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1395 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1391 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
            | LET ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | LPAREN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | RETURN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState119
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv1392)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1393 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1394)) : 'freshtv1396)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1399 * _menhir_state * 'tv_psi_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1397 * _menhir_state * 'tv_psi_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_csm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_csm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_csm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 308 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1398)) : 'freshtv1400)
    | _ ->
        _menhir_fail ()

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1389 * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_ty = 
# 209 "src/syntax/parser.mly"
                                       ( TCamlRef ty )
# 324 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1390)

and _menhir_run61 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1387 * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_ty = 
# 211 "src/syntax/parser.mly"
                                       ( TCamlList ty )
# 338 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1388)

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1381 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT_LIT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1377 * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
            let (_v : (
# 12 "src/syntax/parser.mly"
       (int)
# 359 "src/syntax/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1373 * _menhir_state * 'tv_ty))) * (
# 12 "src/syntax/parser.mly"
       (int)
# 370 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1371 * _menhir_state * 'tv_ty))) * (
# 12 "src/syntax/parser.mly"
       (int)
# 377 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (ty : 'tv_ty)), (n : (
# 12 "src/syntax/parser.mly"
       (int)
# 382 "src/syntax/parser.ml"
                ))) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_ty = 
# 212 "src/syntax/parser.mly"
                                       ( TArray{ty;size=TSize n} )
# 390 "src/syntax/parser.ml"
                 in
                _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1372)) : 'freshtv1374)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1375 * _menhir_state * 'tv_ty))) * (
# 12 "src/syntax/parser.mly"
       (int)
# 400 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1376)) : 'freshtv1378)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1379 * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1380)) : 'freshtv1382)
    | ARRAY | LIST | REF | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1383 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ty = 
# 210 "src/syntax/parser.mly"
                                       ( TCamlArray ty )
# 419 "src/syntax/parser.ml"
         in
        _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1384)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1385 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1386)

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1365 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1361 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1359 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 32 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 450 "src/syntax/parser.ml"
            ) = 
# 40 "src/syntax/parser.mly"
                                                          ( p )
# 454 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1357) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 32 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 462 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1355) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 32 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 470 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1353) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 32 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 478 "src/syntax/parser.ml"
            )) : (
# 32 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 482 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1354)) : 'freshtv1356)) : 'freshtv1358)) : 'freshtv1360)) : 'freshtv1362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1363 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1364)) : 'freshtv1366)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1369 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1367 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 502 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1368)) : 'freshtv1370)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState321 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1347 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1343 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1341 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 34 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 528 "src/syntax/parser.ml"
            ) = 
# 69 "src/syntax/parser.mly"
                                                         ( p )
# 532 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1339) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 34 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 540 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1337) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 34 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 548 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1335) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 34 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 556 "src/syntax/parser.ml"
            )) : (
# 34 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 560 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1336)) : 'freshtv1338)) : 'freshtv1340)) : 'freshtv1342)) : 'freshtv1344)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1345 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1346)) : 'freshtv1348)
    | MenhirState353 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1351 * _menhir_state * 'tv_automaton_psm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1349 * _menhir_state * 'tv_automaton_psm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_psm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 580 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1350)) : 'freshtv1352)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState340 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1319 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1317 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_psm_) : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_psm)) = _menhir_stack in
        let _v : 'tv_list_transition_psm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 602 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1318)) : 'freshtv1320)
    | MenhirState328 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1333 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1331 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_psm_) : 'tv_list_transition_psm_) = _v in
        ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_psi_psm = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 621 "src/syntax/parser.ml"
         in
        
# 77 "src/syntax/parser.mly"
                                                                             ( (q,xs,ts) )
# 626 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1329) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_psm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1327 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1321 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState347) : 'freshtv1322)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1323 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_psm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_psm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 657 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1324)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1325 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1326)) : 'freshtv1328)) : 'freshtv1330)) : 'freshtv1332)) : 'freshtv1334)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1301 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1299 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_csm_) : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_csm)) = _menhir_stack in
        let _v : 'tv_list_transition_csm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 686 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1300)) : 'freshtv1302)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1315 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1313 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_csm_) : 'tv_list_transition_csm_) = _v in
        ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_psi_csm = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 705 "src/syntax/parser.ml"
         in
        
# 95 "src/syntax/parser.mly"
                                                                             ( (q,xs,ts) )
# 710 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1311) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_csm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1309 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1303 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv1304)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1305 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_csm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_csm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 741 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1307 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1308)) : 'freshtv1310)) : 'freshtv1312)) : 'freshtv1314)) : 'freshtv1316)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_binding_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1293 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1289 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | LET ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | LPAREN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | RETURN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv1290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1291 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1292)) : 'freshtv1294)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1297 * _menhir_state * 'tv_binding_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1295 * _menhir_state * 'tv_binding_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_csm)), _, (xs : 'tv_separated_nonempty_list_AND_binding_csm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_binding_csm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 799 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1296)) : 'freshtv1298)
    | _ ->
        _menhir_fail ()

and _menhir_goto_transition_csm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_transition_csm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1287 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
    | IF ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | LET ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | LPAREN ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | RETURN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | AND | IN ->
        _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv1288)

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1269 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LIST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1265 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1263 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (ty : 'tv_ty)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ty = 
# 204 "src/syntax/parser.mly"
                                       ( ty )
# 858 "src/syntax/parser.ml"
             in
            _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1264)) : 'freshtv1266)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1267 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1268)) : 'freshtv1270)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1277 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LIST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1273 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1271 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_atom)), _, (t : 'tv_ty)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 165 "src/syntax/parser.mly"
                                ( mk_ty_annot e t )
# 893 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1272)) : 'freshtv1274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1275 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1276)) : 'freshtv1278)
    | MenhirState313 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1285 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
        | LIST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1281 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1279 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)), _, (t : 'tv_ty)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 165 "src/syntax/parser.mly"
                                ( mk_ty_annot e t )
# 928 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1280)) : 'freshtv1282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1283 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1284)) : 'freshtv1286)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1257) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1255) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ = 
# 144 "<standard.mly>"
    ( x )
# 956 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1256)) : 'freshtv1258)
    | MenhirState297 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1261 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1259 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 973 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1260)) : 'freshtv1262)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_binding_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState195 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1249 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1245 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | BANG ->
                _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | BOOL_LIT _v ->
                _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState288 _v
            | CALL ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | IDENT _v ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState288 _v
            | IF ->
                _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | INT_LIT _v ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState288 _v
            | LBRACKET ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | LET ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | LIST_HD ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | LIST_TL ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | LPAREN ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | MINUS ->
                _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | NOT ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState288) : 'freshtv1246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1247 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1248)) : 'freshtv1250)
    | MenhirState291 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1253 * _menhir_state * 'tv_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1251 * _menhir_state * 'tv_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_li)), _, (xs : 'tv_separated_nonempty_list_AND_binding_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_binding_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1048 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1252)) : 'freshtv1254)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_fun_binding_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1239 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1235 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState279
            | BANG ->
                _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState279
            | BOOL_LIT _v ->
                _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
            | CALL ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState279
            | IDENT _v ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
            | IF ->
                _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState279
            | INT_LIT _v ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
            | LBRACKET ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState279
            | LET ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState279
            | LIST_HD ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState279
            | LIST_TL ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState279
            | LPAREN ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState279
            | MINUS ->
                _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState279
            | NOT ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState279
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState279
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState279
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState279) : 'freshtv1236)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1237 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1238)) : 'freshtv1240)
    | MenhirState282 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1243 * _menhir_state * 'tv_fun_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1241 * _menhir_state * 'tv_fun_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_fun_binding_li)), _, (xs : 'tv_separated_nonempty_list_AND_fun_binding_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_fun_binding_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1123 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1242)) : 'freshtv1244)
    | _ ->
        _menhir_fail ()

and _menhir_reduce77 : _menhir_env -> ((('ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1132 "src/syntax/parser.ml"
))) * _menhir_state * 'tv_exp_li) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 1138 "src/syntax/parser.ml"
    ))), _, (a : 'tv_exp_li)) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _v : 'tv_lvalue_exp_li_ = 
# 201 "src/syntax/parser.mly"
                                 ( (x,Some a) )
# 1145 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce110 : _menhir_env -> ((('ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1152 "src/syntax/parser.ml"
))) * _menhir_state * 'tv_exp_li) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 1158 "src/syntax/parser.ml"
    ))), _, (a : 'tv_exp_li)) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _v : 'tv_prim_exp_li_ = 
# 163 "src/syntax/parser.mly"
                                ( mk_array_get x a )
# 1165 "src/syntax/parser.ml"
     in
    _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_COMMA_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1217 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 1178 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1213 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 1188 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1211 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 1195 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 1200 "src/syntax/parser.ml"
            ))), _, (args : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 168 "src/syntax/parser.mly"
                                ( mk_call x args )
# 1208 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1212)) : 'freshtv1214)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1215 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 1218 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1216)) : 'freshtv1218)
    | MenhirState260 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1221 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1219 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_exp_li)), _, (xs : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_exp_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1232 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1220)) : 'freshtv1222)
    | MenhirState266 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1229 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1240 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1225 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1250 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1223 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1257 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 1262 "src/syntax/parser.ml"
            ))), _, (e1 : 'tv_exp_li)), _, (es : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 125 "src/syntax/parser.mly"
                             ( LI.App(x,e1::es) )
# 1270 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1224)) : 'freshtv1226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1227 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1280 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1228)) : 'freshtv1230)
    | MenhirState307 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1233 * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1231 * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_exp_li__ = 
# 144 "<standard.mly>"
    ( x )
# 1293 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp_li__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1232)) : 'freshtv1234)
    | _ ->
        _menhir_fail ()

and _menhir_goto_prim_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prim_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1209) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_prim_exp_li_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1207) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_prim_exp_li_) : 'tv_prim_exp_li_) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 115 "src/syntax/parser.mly"
                           ( LI.Prim p )
# 1312 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1208)) : 'freshtv1210)

and _menhir_run225 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState225

and _menhir_run233 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState233

and _menhir_run236 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState236

and _menhir_run238 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState238

and _menhir_run240 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState240

and _menhir_run242 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState242

and _menhir_run244 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState244

and _menhir_run246 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState246

and _menhir_run227 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT_LIT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1203 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "src/syntax/parser.mly"
       (int)
# 1663 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1201 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        let ((n : (
# 12 "src/syntax/parser.mly"
       (int)
# 1671 "src/syntax/parser.ml"
        )) : (
# 12 "src/syntax/parser.mly"
       (int)
# 1675 "src/syntax/parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_exp_li)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_prim_exp_li_ = 
# 164 "src/syntax/parser.mly"
                                ( mk_array_make n e )
# 1682 "src/syntax/parser.ml"
         in
        _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1202)) : 'freshtv1204)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1205 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1206)

and _menhir_run248 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState248

and _menhir_run250 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState250

and _menhir_run252 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState252
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState252
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState252 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState252
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState252 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState252
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState252 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState252
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState252
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState252
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState252
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState252
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState252
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState252
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState252
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState252
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState252

and _menhir_run229 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1197 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | BANG ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | BOOL_LIT _v ->
            _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | CALL ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | IDENT _v ->
            _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | IF ->
            _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | INT_LIT _v ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | LBRACKET ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | LET ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | LIST_HD ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | LIST_TL ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | LPAREN ->
            _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | MINUS ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | NOT ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState230
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState230) : 'freshtv1198)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1199 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1200)

and _menhir_goto_separated_nonempty_list_AND_psi_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1191 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1187 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v
            | LET ->
                _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState178
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState178) : 'freshtv1188)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1189 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1190)) : 'freshtv1192)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1195 * _menhir_state * 'tv_psi_hsm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1193 * _menhir_state * 'tv_psi_hsm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_hsm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_hsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_hsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1915 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1194)) : 'freshtv1196)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_psi_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1181 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1177 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1175 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (_2 : 'tv_option_PIPE_)), _, (l : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_automaton_efsm = 
# 43 "src/syntax/parser.mly"
                                                               ( EFSM.Automaton l )
# 1943 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1173) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_automaton_efsm) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1171 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PIPE_PIPE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1165 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AUTOMATON ->
                    _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState160
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160) : 'freshtv1166)
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1167 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1974 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1168)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1169 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1170)) : 'freshtv1172)) : 'freshtv1174)) : 'freshtv1176)) : 'freshtv1178)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1179 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1180)) : 'freshtv1182)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1185 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1183 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2001 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1184)) : 'freshtv1186)
    | _ ->
        _menhir_fail ()

and _menhir_goto_automaton_psm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_psm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState337 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1143 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1141 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_automaton_psm = 
# 73 "src/syntax/parser.mly"
                                       ( PSM.Seq(s,a) )
# 2021 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1142)) : 'freshtv1144)
    | MenhirState331 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1151 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1149 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_psm = 
# 80 "src/syntax/parser.mly"
                                 ( (g,a) )
# 2035 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1147) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_psm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1145 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run329 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | AND | IN ->
            _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState340
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState340) : 'freshtv1146)) : 'freshtv1148)) : 'freshtv1150)) : 'freshtv1152)
    | MenhirState344 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1155 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1153 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_psi_psm_)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_psm = 
# 74 "src/syntax/parser.mly"
                                                                     ( PSM.LetRec (bs,a) )
# 2067 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1154)) : 'freshtv1156)
    | MenhirState353 | MenhirState321 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1163 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE_PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1157 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState353 _v
            | LET ->
                _menhir_run322 _menhir_env (Obj.magic _menhir_stack) MenhirState353
            | LPAREN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState353
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState353) : 'freshtv1158)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1159 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_psm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2099 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1160)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1161 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1162)) : 'freshtv1164)
    | _ ->
        _menhir_fail ()

and _menhir_reduce62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_psm_ = 
# 211 "<standard.mly>"
    ( [] )
# 2117 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_psm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run329 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState329 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState329
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState329 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState329 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState329
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState329
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState329
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState329
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState329
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState329
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState329

and _menhir_reduce56 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_csm_ = 
# 211 "<standard.mly>"
    ( [] )
# 2157 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_csm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run99 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99

and _menhir_goto_inst_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_inst_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState128 | MenhirState125 | MenhirState119 | MenhirState98 | MenhirState114 | MenhirState111 | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1121 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1117 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
            | LET ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | LPAREN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | RETURN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv1118)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1119 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1120)) : 'freshtv1122)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1127 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1123 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState146) : 'freshtv1124)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1125 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1126)) : 'freshtv1128)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1133 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1129 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
            | LET ->
                _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState171
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171) : 'freshtv1130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1131 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1132)) : 'freshtv1134)
    | MenhirState353 | MenhirState321 | MenhirState344 | MenhirState337 | MenhirState331 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1139 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1135 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _v
            | LET ->
                _menhir_run322 _menhir_env (Obj.magic _menhir_stack) MenhirState337
            | LPAREN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState337
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState337) : 'freshtv1136)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1137 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1138)) : 'freshtv1140)
    | _ ->
        _menhir_fail ()

and _menhir_goto_automaton_csm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_csm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1071 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1069 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_automaton_csm = 
# 89 "src/syntax/parser.mly"
                                       ( CSM.Seq(s,a) )
# 2325 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1070)) : 'freshtv1072)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1075 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1073 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_atom)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_csm = 
# 99 "src/syntax/parser.mly"
                                 ( (e,a) )
# 2339 "src/syntax/parser.ml"
         in
        _menhir_goto_transition_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1074)) : 'freshtv1076)
    | MenhirState98 | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1079 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1077 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _v : 'tv_transition_csm = 
# 98 "src/syntax/parser.mly"
                  ( (mk_bool' true,a) )
# 2351 "src/syntax/parser.ml"
         in
        _menhir_goto_transition_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1078)) : 'freshtv1080)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1083 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1081 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_psi_csm_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_csm = 
# 90 "src/syntax/parser.mly"
                                                                     ( CSM.LetRec (bs,a) )
# 2366 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1082)) : 'freshtv1084)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1097 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 2374 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1095 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 2380 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 2385 "src/syntax/parser.ml"
        ))), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_binding_csm = 
# 102 "src/syntax/parser.mly"
                             ( (x,a) )
# 2391 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1093) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binding_csm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1091 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1085 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv1086)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1087 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_csm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_binding_csm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2422 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_binding_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1088)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1089 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1090)) : 'freshtv1092)) : 'freshtv1094)) : 'freshtv1096)) : 'freshtv1098)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1101 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1099 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_binding_csm_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_automaton_csm = 
# 92 "src/syntax/parser.mly"
                                                                     ( CSM.Let (bs,a) )
# 2443 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1100)) : 'freshtv1102)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1115 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1111 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1109 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (a : 'tv_automaton_csm)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 35 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2462 "src/syntax/parser.ml"
            ) = 
# 85 "src/syntax/parser.mly"
                      ( a )
# 2466 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1107) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 35 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2474 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1105) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 35 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2482 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1103) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 35 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2490 "src/syntax/parser.ml"
            )) : (
# 35 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2494 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1104)) : 'freshtv1106)) : 'freshtv1108)) : 'freshtv1110)) : 'freshtv1112)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1113 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1114)) : 'freshtv1116)
    | _ ->
        _menhir_fail ()

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1067) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 205 "src/syntax/parser.mly"
                                       ( TStd_logic )
# 2517 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1068)

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1065) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 208 "src/syntax/parser.mly"
                                       ( TPtr )
# 2531 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1066)

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | INT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LPAREN ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | PTR ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | STD_LOGIC ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run56 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1063) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 206 "src/syntax/parser.mly"
                                       ( TInt )
# 2566 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1064)

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1061) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 207 "src/syntax/parser.mly"
                                       ( TBool )
# 2580 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1062)

and _menhir_goto_prim_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prim_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1059) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_prim_atom_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1057) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_prim_atom_) : 'tv_prim_atom_) = _v in
    ((let _v : 'tv_atom = 
# 177 "src/syntax/parser.mly"
                         ( mk_prim p )
# 2597 "src/syntax/parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1058)) : 'freshtv1060)

and _menhir_goto_separated_nonempty_list_COMMA_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1047 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 2610 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1043 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 2620 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1041 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 2627 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 2632 "src/syntax/parser.ml"
            ))), _, (args : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 168 "src/syntax/parser.mly"
                                ( mk_call x args )
# 2640 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1042)) : 'freshtv1044)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1045 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 2650 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1046)) : 'freshtv1048)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1051 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1049 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_atom)), _, (xs : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2664 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1050)) : 'freshtv1052)
    | MenhirState333 | MenhirState104 | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1055 * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1053 * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 144 "<standard.mly>"
    ( x )
# 2676 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1054)) : 'freshtv1056)
    | _ ->
        _menhir_fail ()

and _menhir_run22 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run26 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run28 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run30 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30
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
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32
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
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState34
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
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState36
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
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT_LIT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1037 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "src/syntax/parser.mly"
       (int)
# 2933 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1035 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let ((n : (
# 12 "src/syntax/parser.mly"
       (int)
# 2941 "src/syntax/parser.ml"
        )) : (
# 12 "src/syntax/parser.mly"
       (int)
# 2945 "src/syntax/parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_atom)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_prim_atom_ = 
# 164 "src/syntax/parser.mly"
                                ( mk_array_make n e )
# 2952 "src/syntax/parser.ml"
         in
        _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1036)) : 'freshtv1038)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1039 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1040)

and _menhir_run40 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40
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
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run44 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_goto_inst_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_inst_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1033 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1029 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | BANG ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | BOOL_LIT _v ->
            _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | CALL ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | IDENT _v ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | IF ->
            _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | INT_LIT _v ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | LBRACKET ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | LET ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | LIST_HD ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | LIST_TL ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | LPAREN ->
            _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | MINUS ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | NOT ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState222
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState222) : 'freshtv1030)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1031 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1032)) : 'freshtv1034)

and _menhir_reduce139 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)) = _menhir_stack in
    let _v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3117 "src/syntax/parser.ml"
     in
    _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run297 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1027) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState297 in
        let (_v : (
# 10 "src/syntax/parser.mly"
       (string)
# 3133 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1023 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3144 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | BANG ->
                _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | BOOL_LIT _v ->
                _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState299 _v
            | CALL ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | IDENT _v ->
                _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState299 _v
            | IF ->
                _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | INT_LIT _v ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState299 _v
            | LBRACKET ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | LET ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | LIST_HD ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | LIST_TL ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | LPAREN ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | MINUS ->
                _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | NOT ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState299
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState299) : 'freshtv1024)
        | COMMA | RPAREN ->
            _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1025 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3194 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1026)) : 'freshtv1028)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState297

and _menhir_run220 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | IDENT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState220
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState220

and _menhir_goto_exp_li : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv779 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv775 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_exp_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 118 "src/syntax/parser.mly"
                                   ( LI.Seq(s,e) )
# 3289 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv776)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv777 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv778)) : 'freshtv780)
    | MenhirState225 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv785 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv781 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 183 "src/syntax/parser.mly"
        ( Atom.Mul )
# 3317 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3322 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv782)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv783 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv784)) : 'freshtv786)
    | MenhirState230 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv793 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv789 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv787 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (arr : 'tv_exp_li)), _, (idx : 'tv_exp_li)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 134 "src/syntax/parser.mly"
                           ( LI.ArrayAccess{arr;idx} )
# 3375 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv788)) : 'freshtv790)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv791 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv792)) : 'freshtv794)
    | MenhirState233 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv799 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv795 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 181 "src/syntax/parser.mly"
       ( Atom.Add )
# 3407 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3412 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv796)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv797 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv798)) : 'freshtv800)
    | MenhirState236 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv805 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv801 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 191 "src/syntax/parser.mly"
            ( Atom.Or )
# 3460 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3465 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv802)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv803 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv804)) : 'freshtv806)
    | MenhirState238 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv811 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv807 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 189 "src/syntax/parser.mly"
      ( Atom.Neq )
# 3499 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3504 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv808)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv809 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv810)) : 'freshtv812)
    | MenhirState240 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv817 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv813 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 182 "src/syntax/parser.mly"
        ( Atom.Sub )
# 3534 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3539 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv814)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv815 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv816)) : 'freshtv818)
    | MenhirState242 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv823 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv819 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 184 "src/syntax/parser.mly"
     ( Atom.Lt )
# 3573 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3578 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv820)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv821 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv822)) : 'freshtv824)
    | MenhirState244 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv829 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv825 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 185 "src/syntax/parser.mly"
     ( Atom.Le )
# 3612 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3617 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv826)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv827 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv828)) : 'freshtv830)
    | MenhirState246 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv835 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | LAND | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv831 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 190 "src/syntax/parser.mly"
       ( Atom.And )
# 3663 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3668 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv832)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv833 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv834)) : 'freshtv836)
    | MenhirState248 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv841 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv837 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 186 "src/syntax/parser.mly"
     ( Atom.Gt )
# 3702 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3707 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv838)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv839 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv840)) : 'freshtv842)
    | MenhirState250 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv847 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv843 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 187 "src/syntax/parser.mly"
     ( Atom.Ge )
# 3741 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3746 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv844)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv845 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv846)) : 'freshtv848)
    | MenhirState252 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv853 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv849 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 188 "src/syntax/parser.mly"
     ( Atom.Eq )
# 3780 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3785 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv850)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv851 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv852)) : 'freshtv854)
    | MenhirState220 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv859 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv855 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_inst_exp_li_ = 
# 194 "src/syntax/parser.mly"
                          ( Inst.Assign [ (x,a) ] )
# 3835 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv856)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv857 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv858)) : 'freshtv860)
    | MenhirState216 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv865 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv861 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 135 "src/syntax/parser.mly"
                           ( LI.ArrayLength e )
# 3863 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv862)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv863 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv864)) : 'freshtv866)
    | MenhirState215 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv871 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv867 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 132 "src/syntax/parser.mly"
                           ( LI.RefAccess e )
# 3891 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv868)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv869 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv870)) : 'freshtv872)
    | MenhirState307 | MenhirState266 | MenhirState260 | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv879 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv873 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | BANG ->
                _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | BOOL_LIT _v ->
                _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
            | CALL ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | IDENT _v ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
            | IF ->
                _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | INT_LIT _v ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
            | LBRACKET ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | LET ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | LIST_HD ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | LIST_TL ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | LPAREN ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | MINUS ->
                _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | NOT ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState260) : 'freshtv874)
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv875 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_exp_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3982 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv876)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv877 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv878)) : 'freshtv880)
    | MenhirState210 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv887 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3997 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv883 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4031 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                _menhir_reduce110 _menhir_env (Obj.magic _menhir_stack)
            | COLONEQ ->
                _menhir_reduce77 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv881 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4047 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv882)) : 'freshtv884)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv885 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4060 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv886)) : 'freshtv888)
    | MenhirState207 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv897 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4069 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv889 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4079 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | BANG ->
                _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | BOOL_LIT _v ->
                _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | CALL ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | IDENT _v ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | IF ->
                _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | INT_LIT _v ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | LBRACKET ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | LET ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | LIST_HD ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | LIST_TL ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | LPAREN ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | MINUS ->
                _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | NOT ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState266) : 'freshtv890)
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv893 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4149 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv891 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4156 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 4161 "src/syntax/parser.ml"
            ))), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 127 "src/syntax/parser.mly"
                             ( LI.App(x,[e]) )
# 4168 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv892)) : 'freshtv894)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv895 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4180 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv896)) : 'freshtv898)
    | MenhirState269 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv905 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4189 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv901 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4223 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND | COL | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                _menhir_reduce110 _menhir_env (Obj.magic _menhir_stack)
            | COLONEQ | COMMA ->
                _menhir_reduce77 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv899 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4239 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv900)) : 'freshtv902)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv903 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4252 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv904)) : 'freshtv906)
    | MenhirState205 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv911 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv907 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState273
            | BANG ->
                _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState273
            | BOOL_LIT _v ->
                _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _v
            | CALL ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState273
            | IDENT _v ->
                _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _v
            | IF ->
                _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState273
            | INT_LIT _v ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState273 _v
            | LBRACKET ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState273
            | LET ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState273
            | LIST_HD ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState273
            | LIST_TL ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState273
            | LPAREN ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState273
            | MINUS ->
                _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState273
            | NOT ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState273
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState273
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState273
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState273) : 'freshtv908)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv909 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv910)) : 'freshtv912)
    | MenhirState273 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv917 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv913 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | BANG ->
                _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | BOOL_LIT _v ->
                _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _v
            | CALL ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | IDENT _v ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _v
            | IF ->
                _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | INT_LIT _v ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _v
            | LBRACKET ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | LET ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | LIST_HD ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | LIST_TL ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | LPAREN ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | MINUS ->
                _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | NOT ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState275) : 'freshtv914)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv915 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv916)) : 'freshtv918)
    | MenhirState275 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv923 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv919 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_exp_li)), _, (e2 : 'tv_exp_li)), _, (e3 : 'tv_exp_li)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 131 "src/syntax/parser.mly"
                           ( LI.If(e1,e2,e3) )
# 4460 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv920)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv921 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv922)) : 'freshtv924)
    | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv939 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4475 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv935 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4511 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (f : (
# 10 "src/syntax/parser.mly"
       (string)
# 4516 "src/syntax/parser.ml"
            ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_fun_binding_li = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 4524 "src/syntax/parser.ml"
             in
            
# 145 "src/syntax/parser.mly"
                                                                   ( (f,xs,e) )
# 4529 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv933) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_fun_binding_li) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv931 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv925 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState282) : 'freshtv926)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv927 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_fun_binding_li)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_fun_binding_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4560 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv928)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv929 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv930)) : 'freshtv932)) : 'freshtv934)) : 'freshtv936)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv937 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4577 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv938)) : 'freshtv940)
    | MenhirState279 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv945 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv941 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_fun_binding_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 122 "src/syntax/parser.mly"
                           ( LI.LetRec (bs,e) )
# 4623 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv942)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv943 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv944)) : 'freshtv946)
    | MenhirState285 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv961 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4638 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv957 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4674 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 4679 "src/syntax/parser.ml"
            ))), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_binding_li = 
# 142 "src/syntax/parser.mly"
                           ( (x,e) )
# 4685 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv955) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_binding_li) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv953 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv947 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run284 _menhir_env (Obj.magic _menhir_stack) MenhirState291 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState291) : 'freshtv948)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv949 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_li)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_binding_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4716 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv950)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv951 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv952)) : 'freshtv954)) : 'freshtv956)) : 'freshtv958)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv959 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4733 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv960)) : 'freshtv962)
    | MenhirState288 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv967 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv963 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_binding_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 120 "src/syntax/parser.mly"
                           ( LI.Let (bs,e) )
# 4778 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv964)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv965 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv966)) : 'freshtv968)
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv973 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv969 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 136 "src/syntax/parser.mly"
                           ( LI.ListHd e )
# 4806 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv970)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv971 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv972)) : 'freshtv974)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv979 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv975 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 137 "src/syntax/parser.mly"
                           ( LI.ListTl e )
# 4834 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv976)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv977 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv978)) : 'freshtv980)
    | MenhirState299 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv985 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4849 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv981 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4883 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce77 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv982)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv983 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4896 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv984)) : 'freshtv986)
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv995 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv987 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState313
            | INT ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState313
            | LPAREN ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState313
            | PTR ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState313
            | STD_LOGIC ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState313
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState313) : 'freshtv988)
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv991 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv989 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li = 
# 109 "src/syntax/parser.mly"
                           ( e )
# 4962 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li _menhir_env _menhir_stack _menhir_s _v) : 'freshtv990)) : 'freshtv992)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv993 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv994)) : 'freshtv996)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1001 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv997 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 162 "src/syntax/parser.mly"
                                ( mk_unop Atom.Uminus a )
# 4992 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv998)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv999 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1000)) : 'freshtv1002)
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1007 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1003 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 161 "src/syntax/parser.mly"
                                ( mk_unop Atom.Not a  )
# 5020 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1004)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1005 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1006)) : 'freshtv1008)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1021 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1017 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1015 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 36 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 5048 "src/syntax/parser.ml"
            ) = 
# 106 "src/syntax/parser.mly"
               ( e )
# 5052 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1013) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 36 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 5060 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1011) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 36 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 5068 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1009) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 36 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 5076 "src/syntax/parser.ml"
            )) : (
# 36 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 5080 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1010)) : 'freshtv1012)) : 'freshtv1014)) : 'freshtv1016)) : 'freshtv1018)
        | EQ ->
            _menhir_run252 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1019 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1020)) : 'freshtv1022)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_lvalue_atom__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv769) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv767) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ = 
# 144 "<standard.mly>"
    ( x )
# 5132 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv768)) : 'freshtv770)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv773 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv771 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 5149 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv772)) : 'freshtv774)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv761 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv757 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv755 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 33 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 5175 "src/syntax/parser.ml"
            ) = 
# 54 "src/syntax/parser.mly"
                                                         ( p )
# 5179 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv753) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 33 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 5187 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv751) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 33 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 5195 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv749) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 33 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 5203 "src/syntax/parser.ml"
            )) : (
# 33 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 5207 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv750)) : 'freshtv752)) : 'freshtv754)) : 'freshtv756)) : 'freshtv758)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv759 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv760)) : 'freshtv762)
    | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv765 * _menhir_state * 'tv_automaton_hsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv763 * _menhir_state * 'tv_automaton_hsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_hsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 5227 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv764)) : 'freshtv766)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv733 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv731 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_hsm_) : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_hsm)) = _menhir_stack in
        let _v : 'tv_list_transition_hsm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 5249 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv732)) : 'freshtv734)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv747 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv745 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_hsm_) : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_psi_hsm = 
# 61 "src/syntax/parser.mly"
                                ( (q,ts) )
# 5266 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv743) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_hsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv741 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv735 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181) : 'freshtv736)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv737 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_hsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_hsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5297 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv738)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv739 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv740)) : 'freshtv742)) : 'freshtv744)) : 'freshtv746)) : 'freshtv748)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv715 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv713 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_efsm)) = _menhir_stack in
        let _v : 'tv_list_transition_efsm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 5326 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv714)) : 'freshtv716)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv729 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv727 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_psi_efsm = 
# 46 "src/syntax/parser.mly"
                                         ( (q,ts) )
# 5343 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv725) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_efsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv723 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv717 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154) : 'freshtv718)
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv719 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5374 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv720)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv721 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv722)) : 'freshtv724)) : 'freshtv726)) : 'freshtv728)) : 'freshtv730)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_atom__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv695 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv691 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv689 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
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
# 5414 "src/syntax/parser.ml"
              
            in
            let xs = 
# 232 "<standard.mly>"
    ( xs )
# 5420 "src/syntax/parser.ml"
             in
            
# 197 "src/syntax/parser.mly"
  ( Inst.Assign (List.combine xs es) )
# 5425 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv690)) : 'freshtv692)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv693 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv694)) : 'freshtv696)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv703 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv699 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv697 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_automaton_csm = let es = 
# 232 "<standard.mly>"
    ( xs )
# 5453 "src/syntax/parser.ml"
             in
            
# 88 "src/syntax/parser.mly"
                                                      ( CSM.State (q,es) )
# 5458 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv698)) : 'freshtv700)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv701 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv702)) : 'freshtv704)
    | MenhirState333 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv711 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv707 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv705 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_automaton_psm = let es = 
# 232 "<standard.mly>"
    ( xs )
# 5486 "src/syntax/parser.ml"
             in
            
# 72 "src/syntax/parser.mly"
                                                      ( PSM.State (q,es) )
# 5491 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv706)) : 'freshtv708)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv709 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv710)) : 'freshtv712)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_IDENT__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv667 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv663 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv659 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | IF ->
                    _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | LET ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | LPAREN ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | RETURN ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | AND | IN ->
                    _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv660)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv661 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv662)) : 'freshtv664)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv665 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv666)) : 'freshtv668)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv677 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5561 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv673 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5571 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv669 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5581 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ARRAY_LENGTH ->
                    _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState201
                | BANG ->
                    _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState201
                | BOOL_LIT _v ->
                    _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
                | CALL ->
                    _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState201
                | IDENT _v ->
                    _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
                | IF ->
                    _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState201
                | INT_LIT _v ->
                    _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
                | LBRACKET ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState201
                | LET ->
                    _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState201
                | LIST_HD ->
                    _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState201
                | LIST_TL ->
                    _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState201
                | LPAREN ->
                    _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState201
                | MINUS ->
                    _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState201
                | NOT ->
                    _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState201
                | ONE ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState201
                | ZERO ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState201
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState201) : 'freshtv670)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv671 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5629 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv672)) : 'freshtv674)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv675 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5640 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv676)) : 'freshtv678)
    | MenhirState325 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv687 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv683 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv679 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IF ->
                    _menhir_run329 _menhir_env (Obj.magic _menhir_stack) MenhirState328
                | AND | IN ->
                    _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState328
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState328) : 'freshtv680)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv681 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv682)) : 'freshtv684)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv685 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv686)) : 'freshtv688)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_IDENT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_IDENT_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv653 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5695 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv651 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5703 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_IDENT_) : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 5710 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_IDENT_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 5716 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv652)) : 'freshtv654)
    | MenhirState325 | MenhirState198 | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv657) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv655) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_IDENT_) : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_IDENT__ = 
# 144 "<standard.mly>"
    ( x )
# 5731 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv656)) : 'freshtv658)
    | _ ->
        _menhir_fail ()

and _menhir_goto_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState333 | MenhirState104 | MenhirState83 | MenhirState46 | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv509 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv503 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | CALL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | IDENT _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | INT_LIT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | LBRACKET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | NOT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv504)
        | EQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv505 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5808 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv506)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv507 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv508)) : 'freshtv510)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv515 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv511 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 183 "src/syntax/parser.mly"
        ( Atom.Mul )
# 5834 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5839 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv512)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv513 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv514)) : 'freshtv516)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv521 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv517 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 181 "src/syntax/parser.mly"
       ( Atom.Add )
# 5867 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5872 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv519 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv520)) : 'freshtv522)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv527 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | IDENT _ | IF | IN | LET | LPAREN | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv523 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 191 "src/syntax/parser.mly"
            ( Atom.Or )
# 5918 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5923 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv525 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv526)) : 'freshtv528)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv533 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv529 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 189 "src/syntax/parser.mly"
      ( Atom.Neq )
# 5955 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5960 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv530)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv531 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv532)) : 'freshtv534)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv539 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv535 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 182 "src/syntax/parser.mly"
        ( Atom.Sub )
# 5988 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5993 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv536)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv537 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv538)) : 'freshtv540)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv545 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv541 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 184 "src/syntax/parser.mly"
     ( Atom.Lt )
# 6025 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6030 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv542)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv543 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv544)) : 'freshtv546)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv551 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv547 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 185 "src/syntax/parser.mly"
     ( Atom.Le )
# 6062 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6067 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv548)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv549 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv550)) : 'freshtv552)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv557 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | IDENT _ | IF | IN | LAND | LET | LPAREN | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv553 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 190 "src/syntax/parser.mly"
       ( Atom.And )
# 6111 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6116 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv554)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv555 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv556)) : 'freshtv558)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv563 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv559 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 186 "src/syntax/parser.mly"
     ( Atom.Gt )
# 6148 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6153 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv560)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv561 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv562)) : 'freshtv564)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv569 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv565 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 187 "src/syntax/parser.mly"
     ( Atom.Ge )
# 6185 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6190 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv566)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv567 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv568)) : 'freshtv570)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv575 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv571 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 188 "src/syntax/parser.mly"
     ( Atom.Eq )
# 6222 "src/syntax/parser.ml"
             in
            
# 160 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6227 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv572)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv573 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv574)) : 'freshtv576)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv583 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6242 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv579 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6274 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv577 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6281 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 6286 "src/syntax/parser.ml"
            ))), _, (a : 'tv_atom)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_prim_atom_ = 
# 163 "src/syntax/parser.mly"
                                ( mk_array_get x a )
# 6293 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv578)) : 'freshtv580)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv581 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6305 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv582)) : 'freshtv584)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv593 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv585 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | INT ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LPAREN ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | PTR ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | STD_LOGIC ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv586)
        | EQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv589 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv587 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_atom = 
# 178 "src/syntax/parser.mly"
                         ( a )
# 6369 "src/syntax/parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv588)) : 'freshtv590)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv591 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv592)) : 'freshtv594)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv599 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv595 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 162 "src/syntax/parser.mly"
                                ( mk_unop Atom.Uminus a )
# 6397 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv596)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv597 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv598)) : 'freshtv600)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv605 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv601 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 161 "src/syntax/parser.mly"
                                ( mk_unop Atom.Not a  )
# 6423 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv602)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv603 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv604)) : 'freshtv606)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv611 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | EOF | IDENT _ | IF | IN | LET | LPAREN | RETURN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv607 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_automaton_csm = 
# 91 "src/syntax/parser.mly"
                ( CSM.Return a )
# 6471 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv608)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv609 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv610)) : 'freshtv612)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv619 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6486 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv615 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6518 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv613 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6525 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 6530 "src/syntax/parser.ml"
            ))), _, (a : 'tv_atom)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_lvalue_atom_ = 
# 201 "src/syntax/parser.mly"
                                 ( (x,Some a) )
# 6537 "src/syntax/parser.ml"
             in
            _menhir_goto_lvalue_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv614)) : 'freshtv616)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv617 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6549 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv618)) : 'freshtv620)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv625 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv621 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
            | LET ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | LPAREN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | RETURN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv622)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv623 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv624)) : 'freshtv626)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv631 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv627 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)), _, (a : 'tv_atom)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_inst_atom_ = 
# 194 "src/syntax/parser.mly"
                          ( Inst.Assign [ (x,a) ] )
# 6646 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv628)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv629 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv630)) : 'freshtv632)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv637 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv633 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
            | LPAREN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv634)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv635 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv636)) : 'freshtv638)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv643 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv639 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
            | LPAREN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169) : 'freshtv640)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv641 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv642)) : 'freshtv644)
    | MenhirState329 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv649 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv645 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState331 _v
            | LET ->
                _menhir_run322 _menhir_env (Obj.magic _menhir_stack) MenhirState331
            | LPAREN ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState331
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState331) : 'freshtv646)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv647 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv648)) : 'freshtv650)
    | _ ->
        _menhir_fail ()

and _menhir_goto_const_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_const_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv501) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_const_atom_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv499) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : 'tv_const_atom_) : 'tv_const_atom_) = _v in
    ((let _v : 'tv_atom = 
# 176 "src/syntax/parser.mly"
                         ( mk_const c )
# 6827 "src/syntax/parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)

and _menhir_goto_loption_separated_nonempty_list_COMMA_exp_li__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_exp_li__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv497 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv493 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv491 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
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
# 6856 "src/syntax/parser.ml"
          
        in
        let xs = 
# 232 "<standard.mly>"
    ( xs )
# 6862 "src/syntax/parser.ml"
         in
        
# 197 "src/syntax/parser.mly"
  ( Inst.Assign (List.combine xs es) )
# 6867 "src/syntax/parser.ml"
         in
        _menhir_goto_inst_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv492)) : 'freshtv494)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv495 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv496)) : 'freshtv498)

and _menhir_goto_lvalue_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState189 | MenhirState190 | MenhirState191 | MenhirState307 | MenhirState299 | MenhirState193 | MenhirState194 | MenhirState288 | MenhirState285 | MenhirState279 | MenhirState201 | MenhirState275 | MenhirState273 | MenhirState205 | MenhirState269 | MenhirState266 | MenhirState207 | MenhirState210 | MenhirState260 | MenhirState213 | MenhirState215 | MenhirState252 | MenhirState250 | MenhirState248 | MenhirState246 | MenhirState244 | MenhirState242 | MenhirState240 | MenhirState238 | MenhirState236 | MenhirState233 | MenhirState230 | MenhirState225 | MenhirState222 | MenhirState220 | MenhirState216 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv479 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv480)) : 'freshtv482)
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run297 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce139 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv484)) : 'freshtv486)
    | MenhirState297 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv489 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run297 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce139 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv487 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv488)) : 'freshtv490)
    | _ ->
        _menhir_fail ()

and _menhir_goto_exp_li_without_paren : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_li_without_paren -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv477) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exp_li_without_paren) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv475) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : 'tv_exp_li_without_paren) : 'tv_exp_li_without_paren) = _v in
    ((let _v : 'tv_exp_li = 
# 110 "src/syntax/parser.mly"
                           ( e )
# 6949 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li _menhir_env _menhir_stack _menhir_s _v) : 'freshtv476)) : 'freshtv478)

and _menhir_goto_lvalue_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState78 | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv467 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv461 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv462)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv463 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 6982 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv465 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv466)) : 'freshtv468)
    | MenhirState353 | MenhirState321 | MenhirState344 | MenhirState337 | MenhirState331 | MenhirState169 | MenhirState144 | MenhirState0 | MenhirState128 | MenhirState125 | MenhirState119 | MenhirState98 | MenhirState114 | MenhirState111 | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv469 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | CALL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | IDENT _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | INT_LIT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | LBRACKET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | NOT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv470)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv471 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv472)) : 'freshtv474)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_automaton_hsm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_hsm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv447 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv445 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_hsm)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_hsm = 
# 64 "src/syntax/parser.mly"
                                                      ( (g,s,a) )
# 7059 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv443) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_hsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv441 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run167 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | AND | IN ->
            _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState174) : 'freshtv442)) : 'freshtv444)) : 'freshtv446)) : 'freshtv448)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv451 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv449 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_psi_hsm_)), _, (a : 'tv_automaton_hsm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_hsm = 
# 58 "src/syntax/parser.mly"
                                                                     ( HSM.LetRec (bs,a) )
# 7091 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_hsm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)) : 'freshtv452)
    | MenhirState187 | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE_PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv453 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
            | LET ->
                _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState187
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState187) : 'freshtv454)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv455 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_hsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 7121 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv456)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv457 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv458)) : 'freshtv460)
    | _ ->
        _menhir_fail ()

and _menhir_reduce60 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_hsm_ = 
# 211 "<standard.mly>"
    ( [] )
# 7139 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_hsm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run167 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167

and _menhir_reduce58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_efsm_ = 
# 211 "<standard.mly>"
    ( [] )
# 7179 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_efsm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run142 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142

and _menhir_reduce66 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 142 "<standard.mly>"
    ( [] )
# 7219 "src/syntax/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_IDENT__ = 
# 142 "<standard.mly>"
    ( [] )
# 7228 "src/syntax/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run92 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7235 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv435 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7247 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv436)
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv437 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7263 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7268 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_IDENT_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 7273 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv439 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7283 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv440)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5
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
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6
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
    | RBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv431 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv429 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_const_atom_ = 
# 157 "src/syntax/parser.mly"
                           ( EmptyList )
# 7399 "src/syntax/parser.ml"
         in
        _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)) : 'freshtv432)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv433 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "src/syntax/parser.mly"
       (int)
# 7413 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv427) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 12 "src/syntax/parser.mly"
       (int)
# 7423 "src/syntax/parser.ml"
    )) : (
# 12 "src/syntax/parser.mly"
       (int)
# 7427 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_atom_ = 
# 156 "src/syntax/parser.mly"
                           ( mk_int n )
# 7432 "src/syntax/parser.ml"
     in
    _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv428)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7439 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7451 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL_LIT _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | CALL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | IDENT _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | INT_LIT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | LBRACKET ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LPAREN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | MINUS ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | NOT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv422)
    | AND | COL | COMMA | EOF | EQ | GE | GT | HAT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7485 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7490 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_atom = 
# 175 "src/syntax/parser.mly"
                         ( Atom.Var x )
# 7495 "src/syntax/parser.ml"
         in
        _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7505 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv426)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "src/syntax/parser.mly"
       (string)
# 7522 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv413 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 7533 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | CALL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | IDENT _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | INT_LIT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | LBRACKET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | NOT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv414)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv415 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 7569 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)) : 'freshtv418)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv420)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/syntax/parser.mly"
       (bool)
# 7584 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv411) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 11 "src/syntax/parser.mly"
       (bool)
# 7594 "src/syntax/parser.ml"
    )) : (
# 11 "src/syntax/parser.mly"
       (bool)
# 7598 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_atom_ = 
# 154 "src/syntax/parser.mly"
                           ( mk_bool b )
# 7603 "src/syntax/parser.ml"
     in
    _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv412)

and _menhir_run124 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7610 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7622 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | LET ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | LPAREN ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | RETURN ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv408)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7646 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)

and _menhir_goto_option_PIPE_ : _menhir_env -> 'ttv_tail -> 'tv_option_PIPE_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv405 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139) : 'freshtv406)

and _menhir_goto_std_logic : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_std_logic -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState333 | MenhirState329 | MenhirState167 | MenhirState142 | MenhirState108 | MenhirState104 | MenhirState99 | MenhirState83 | MenhirState73 | MenhirState1 | MenhirState4 | MenhirState5 | MenhirState6 | MenhirState11 | MenhirState46 | MenhirState44 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState34 | MenhirState32 | MenhirState30 | MenhirState28 | MenhirState26 | MenhirState22 | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_const_atom_ = 
# 155 "src/syntax/parser.mly"
                           ( mk_std_logic v )
# 7681 "src/syntax/parser.ml"
         in
        _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)) : 'freshtv400)
    | MenhirState189 | MenhirState190 | MenhirState191 | MenhirState307 | MenhirState299 | MenhirState192 | MenhirState193 | MenhirState194 | MenhirState288 | MenhirState285 | MenhirState279 | MenhirState201 | MenhirState275 | MenhirState273 | MenhirState205 | MenhirState269 | MenhirState266 | MenhirState207 | MenhirState210 | MenhirState260 | MenhirState213 | MenhirState215 | MenhirState252 | MenhirState250 | MenhirState248 | MenhirState246 | MenhirState244 | MenhirState242 | MenhirState240 | MenhirState238 | MenhirState236 | MenhirState233 | MenhirState230 | MenhirState225 | MenhirState222 | MenhirState220 | MenhirState216 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv403) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_const_exp_li_ = 
# 155 "src/syntax/parser.mly"
                           ( mk_std_logic v )
# 7696 "src/syntax/parser.ml"
         in
        _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv402)) : 'freshtv404)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv395 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv391 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv387 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv383 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ARRAY_LENGTH ->
                    _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                | BANG ->
                    _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                | BOOL_LIT _v ->
                    _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState307 _v
                | CALL ->
                    _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                | IDENT _v ->
                    _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState307 _v
                | IF ->
                    _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                | INT_LIT _v ->
                    _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState307 _v
                | LBRACKET ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                | LET ->
                    _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                | LIST_HD ->
                    _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                | LIST_TL ->
                    _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                | LPAREN ->
                    _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                | MINUS ->
                    _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                | NOT ->
                    _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                | ONE ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                | ZERO ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv381) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState307 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA_exp_li__ = 
# 142 "<standard.mly>"
    ( [] )
# 7767 "src/syntax/parser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_exp_li__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState307) : 'freshtv384)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv385 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv389 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)) : 'freshtv392)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv393 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)

and _menhir_run197 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7799 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv377 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7811 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | RPAREN ->
            _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState198
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState198) : 'freshtv378)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv379 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7831 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)

and _menhir_run284 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7839 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv373 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7851 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | BANG ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | BOOL_LIT _v ->
            _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState285 _v
        | CALL ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | IDENT _v ->
            _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState285 _v
        | IF ->
            _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | INT_LIT _v ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState285 _v
        | LBRACKET ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | LET ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | LIST_HD ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | LIST_TL ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | LPAREN ->
            _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | MINUS ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | NOT ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState285
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState285) : 'freshtv374)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv375 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7899 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)

and _menhir_reduce34 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7907 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7913 "src/syntax/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_exp_li_without_paren = 
# 113 "src/syntax/parser.mly"
                           ( LI.Var x )
# 7918 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce76 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7925 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7931 "src/syntax/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_lvalue_exp_li_ = 
# 200 "src/syntax/parser.mly"
                                 ( (x,None) )
# 7936 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run207 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7943 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv371 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7984 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState207 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv369 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7992 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7998 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : 'tv_exp_li_without_paren = 
# 128 "src/syntax/parser.mly"
                            ( LI.App(x,[]) )
# 8005 "src/syntax/parser.ml"
         in
        _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)) : 'freshtv372)
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState207

and _menhir_goto_const_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_const_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv367) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_const_exp_li_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv365) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : 'tv_const_exp_li_) : 'tv_const_exp_li_) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 114 "src/syntax/parser.mly"
                            ( LI.Const c )
# 8028 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv366)) : 'freshtv368)

and _menhir_run209 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 8035 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv361 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8047 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | BANG ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | BOOL_LIT _v ->
            _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | CALL ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | IDENT _v ->
            _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | IF ->
            _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | INT_LIT _v ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | LBRACKET ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | LET ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | LIST_HD ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | LIST_TL ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | LPAREN ->
            _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | MINUS ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | NOT ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState210
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState210) : 'freshtv362)
    | LPAREN ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack)
    | COLONEQ ->
        _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack)
    | AND | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
        _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv363 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8101 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv364)

and _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv359 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv355 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv351 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv347 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL_LIT _v ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | CALL ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | IDENT _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | INT_LIT _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | LBRACKET ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | LPAREN ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | MINUS ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | NOT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | ONE ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | ZERO ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | RPAREN ->
                    _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv348)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv349 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv353 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv357 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv358)) : 'freshtv360)

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 8183 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
    | COLONEQ | COMMA | RPAREN ->
        _menhir_reduce74 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8201 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)

and _menhir_reduce74 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8209 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 8215 "src/syntax/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_lvalue_atom_ = 
# 200 "src/syntax/parser.mly"
                                 ( (x,None) )
# 8220 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_atom_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce149 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8227 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 8233 "src/syntax/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_state = 
# 151 "src/syntax/parser.mly"
          ( x )
# 8238 "src/syntax/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv343) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_state) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState122 | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv295 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | RPAREN ->
                _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv296)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)) : 'freshtv300)
    | MenhirState0 | MenhirState128 | MenhirState125 | MenhirState119 | MenhirState98 | MenhirState114 | MenhirState111 | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv305 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv301 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | CALL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | IDENT _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | INT_LIT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | LBRACKET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | NOT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | RPAREN ->
                _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv302)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv303 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)
    | MenhirState154 | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv311 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv307 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | END | PIPE ->
                _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv309 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv319 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv317 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (s : 'tv_inst_atom_)), _, (q : 'tv_state)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_efsm = 
# 49 "src/syntax/parser.mly"
                                              ( (g,s,q) )
# 8357 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_efsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | END | PIPE ->
            _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148) : 'freshtv314)) : 'freshtv316)) : 'freshtv318)) : 'freshtv320)
    | MenhirState181 | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv321 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run167 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | AND | IN ->
                _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166) : 'freshtv322)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
    | MenhirState187 | MenhirState162 | MenhirState178 | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv327 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _v : 'tv_automaton_hsm = 
# 57 "src/syntax/parser.mly"
          ( HSM.State q )
# 8413 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_hsm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)) : 'freshtv330)
    | MenhirState347 | MenhirState323 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv335 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv331 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _v
            | RPAREN ->
                _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState325
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState325) : 'freshtv332)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv333 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)) : 'freshtv336)
    | MenhirState353 | MenhirState321 | MenhirState344 | MenhirState337 | MenhirState331 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv337 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState333 _v
            | CALL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState333
            | IDENT _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState333 _v
            | INT_LIT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState333 _v
            | LBRACKET ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState333
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState333
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState333
            | NOT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState333
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState333
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState333
            | RPAREN ->
                _menhir_reduce66 _menhir_env (Obj.magic _menhir_stack) MenhirState333
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState333) : 'freshtv338)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv339 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)
    | _ ->
        _menhir_fail ()) : 'freshtv344)

and _menhir_run73 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8494 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | CALL ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | IDENT _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | INT_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | LBRACKET ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv293 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState87 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv294)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87

and _menhir_run137 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PIPE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv285) = Obj.magic _menhir_stack in
        ((let x = () in
        let _v : 'tv_option_PIPE_ = 
# 116 "<standard.mly>"
    ( Some x )
# 8599 "src/syntax/parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv286)) : 'freshtv288)
    | IDENT _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_PIPE_ = 
# 114 "<standard.mly>"
    ( None )
# 8608 "src/syntax/parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv290)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)

and _menhir_run163 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164) : 'freshtv282)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv283 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)

and _menhir_run89 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 8648 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce149 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_std_logic = 
# 171 "src/syntax/parser.mly"
       ( Atom.Zero )
# 8665 "src/syntax/parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_std_logic = 
# 172 "src/syntax/parser.mly"
       ( Atom.One )
# 8679 "src/syntax/parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)

and _menhir_run190 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190

and _menhir_run191 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191

and _menhir_run192 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | IDENT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState192
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState192 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ = 
# 142 "<standard.mly>"
    ( [] )
# 8814 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv276)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState192

and _menhir_run193 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState193

and _menhir_run194 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState194
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
    | IDENT _v ->
        _menhir_run284 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState195 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState196) : 'freshtv274)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState195

and _menhir_run202 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_const_exp_li_ = 
# 157 "src/syntax/parser.mly"
                           ( EmptyList )
# 8953 "src/syntax/parser.ml"
         in
        _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv268)) : 'freshtv270)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)

and _menhir_run204 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "src/syntax/parser.mly"
       (int)
# 8967 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 12 "src/syntax/parser.mly"
       (int)
# 8977 "src/syntax/parser.ml"
    )) : (
# 12 "src/syntax/parser.mly"
       (int)
# 8981 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_exp_li_ = 
# 156 "src/syntax/parser.mly"
                           ( mk_int n )
# 8986 "src/syntax/parser.ml"
     in
    _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)

and _menhir_run205 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | IDENT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState205

and _menhir_run206 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 9036 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9048 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | BANG ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | BOOL_LIT _v ->
            _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | CALL ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | IDENT _v ->
            _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | IF ->
            _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | INT_LIT _v ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | LBRACKET ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | LET ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | LIST_HD ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | LIST_TL ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | LPAREN ->
            _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | MINUS ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | NOT ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState269) : 'freshtv262)
    | LPAREN ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack)
    | COLONEQ | COMMA ->
        _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack)
    | AND | COL | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
        _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9102 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)

and _menhir_run211 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "src/syntax/parser.mly"
       (string)
# 9119 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv253 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 9130 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | BANG ->
                _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | BOOL_LIT _v ->
                _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
            | CALL ->
                _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | IDENT _v ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
            | IF ->
                _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | INT_LIT _v ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
            | LBRACKET ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | LET ->
                _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | LIST_HD ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | LIST_TL ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | LPAREN ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | MINUS ->
                _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | NOT ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState213
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState213) : 'freshtv254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv255 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 9178 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)) : 'freshtv258)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)

and _menhir_run214 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/syntax/parser.mly"
       (bool)
# 9193 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv251) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 11 "src/syntax/parser.mly"
       (bool)
# 9203 "src/syntax/parser.ml"
    )) : (
# 11 "src/syntax/parser.mly"
       (bool)
# 9207 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_exp_li_ = 
# 154 "src/syntax/parser.mly"
                           ( mk_bool b )
# 9212 "src/syntax/parser.ml"
     in
    _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)

and _menhir_run215 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState215 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState215 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState215 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState215

and _menhir_run216 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | IDENT _v ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState216

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState353 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * 'tv_automaton_psm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState347 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * 'tv_psi_psm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState344 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv23 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState340 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState337 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState333 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState331 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv31 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState329 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState328 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv35 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState325 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState323 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState321 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv42)
    | MenhirState313 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState307 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv45 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState299 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9379 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState297 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState291 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_binding_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState288 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState285 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9403 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState282 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_fun_binding_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState279 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv59 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState275 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv61 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState273 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv63 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState269 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9432 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState266 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv67 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9441 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState260 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState252 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState250 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState248 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState246 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState244 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState242 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState240 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState238 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState236 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState233 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState230 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state * 'tv_exp_li))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState225 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_inst_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState220 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState216 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState215 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv103 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 9535 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState210 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9544 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState207 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9553 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState205 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv111 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9567 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9576 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState195 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState192 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv130)
    | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state * 'tv_automaton_hsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state * 'tv_psi_hsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv135 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv139 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv141 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv150)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv151 * _menhir_state * 'tv_automaton_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv153 * _menhir_state * 'tv_psi_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv157 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState142 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv168)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * 'tv_binding_csm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv171 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9727 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state * 'tv_psi_csm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv177 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv187 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv191 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9781 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv201 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9815 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv211 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 9899 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9908 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv250)

and _menhir_run71 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState71 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ = 
# 142 "<standard.mly>"
    ( [] )
# 9952 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71

and _menhir_run322 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState323 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState323) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

and _menhir_run102 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 9989 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
    | LPAREN ->
        _menhir_reduce149 _menhir_env (Obj.magic _menhir_stack)
    | COLONEQ ->
        _menhir_reduce74 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 10009 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)

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
# 35 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 10029 "src/syntax/parser.ml"
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
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RETURN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv10))

and efsm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 32 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 10059 "src/syntax/parser.ml"
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
        _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136) : 'freshtv8))

and hsm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 33 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 10083 "src/syntax/parser.ml"
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
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
    | LET ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState162
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162) : 'freshtv6))

and li : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 36 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 10109 "src/syntax/parser.ml"
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
        _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | BANG ->
        _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | BOOL_LIT _v ->
        _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _v
    | CALL ->
        _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | IDENT _v ->
        _menhir_run206 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _v
    | IF ->
        _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | INT_LIT _v ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _v
    | LBRACKET ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | LET ->
        _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | LIST_HD ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | LIST_TL ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | LPAREN ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | MINUS ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | NOT ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState189) : 'freshtv4))

and psm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 34 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 10163 "src/syntax/parser.ml"
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
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState321 _v
    | LET ->
        _menhir_run322 _menhir_env (Obj.magic _menhir_stack) MenhirState321
    | LPAREN ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState321
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState321) : 'freshtv2))

# 269 "<standard.mly>"
  

# 10191 "src/syntax/parser.ml"
