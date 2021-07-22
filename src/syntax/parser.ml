
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
    | LET
    | LEFT_ARROW
    | LE
    | LBRACKET
    | LAND
    | INT_LIT of (
# 12 "src/syntax/parser.mly"
       (int)
# 38 "src/syntax/parser.ml"
  )
    | INT
    | IN
    | IF
    | IDENT of (
# 10 "src/syntax/parser.mly"
       (string)
# 46 "src/syntax/parser.ml"
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
# 63 "src/syntax/parser.ml"
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
  | MenhirState344
  | MenhirState338
  | MenhirState335
  | MenhirState331
  | MenhirState328
  | MenhirState324
  | MenhirState322
  | MenhirState320
  | MenhirState319
  | MenhirState316
  | MenhirState314
  | MenhirState312
  | MenhirState304
  | MenhirState298
  | MenhirState290
  | MenhirState288
  | MenhirState284
  | MenhirState281
  | MenhirState278
  | MenhirState275
  | MenhirState272
  | MenhirState268
  | MenhirState266
  | MenhirState262
  | MenhirState259
  | MenhirState253
  | MenhirState245
  | MenhirState243
  | MenhirState241
  | MenhirState239
  | MenhirState237
  | MenhirState235
  | MenhirState233
  | MenhirState231
  | MenhirState229
  | MenhirState226
  | MenhirState223
  | MenhirState218
  | MenhirState215
  | MenhirState213
  | MenhirState209
  | MenhirState208
  | MenhirState206
  | MenhirState203
  | MenhirState200
  | MenhirState198
  | MenhirState196
  | MenhirState193
  | MenhirState191
  | MenhirState190
  | MenhirState189
  | MenhirState188
  | MenhirState187
  | MenhirState186
  | MenhirState184
  | MenhirState178
  | MenhirState175
  | MenhirState171
  | MenhirState168
  | MenhirState166
  | MenhirState164
  | MenhirState163
  | MenhirState161
  | MenhirState159
  | MenhirState157
  | MenhirState151
  | MenhirState145
  | MenhirState143
  | MenhirState141
  | MenhirState139
  | MenhirState138
  | MenhirState136
  | MenhirState133
  | MenhirState128
  | MenhirState125
  | MenhirState122
  | MenhirState119
  | MenhirState116
  | MenhirState111
  | MenhirState108
  | MenhirState105
  | MenhirState101
  | MenhirState98
  | MenhirState96
  | MenhirState95
  | MenhirState90
  | MenhirState88
  | MenhirState85
  | MenhirState84
  | MenhirState80
  | MenhirState75
  | MenhirState70
  | MenhirState68
  | MenhirState53
  | MenhirState50
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
  | MenhirState24
  | MenhirState20
  | MenhirState12
  | MenhirState9
  | MenhirState6
  | MenhirState5
  | MenhirState4
  | MenhirState1
  | MenhirState0

# 1 "src/syntax/parser.mly"
  
    open Ast
    open Types

# 207 "src/syntax/parser.ml"

let rec _menhir_goto_separated_nonempty_list_AND_psi_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState314 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1375 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1371 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _v
            | LET ->
                _menhir_run313 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState335
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState335) : 'freshtv1372)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1373 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1374)) : 'freshtv1376)
    | MenhirState338 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1379 * _menhir_state * 'tv_psi_psm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1377 * _menhir_state * 'tv_psi_psm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_psm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_psm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_psm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 252 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1378)) : 'freshtv1380)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_psi_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1365 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1361 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | LET ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | RETURN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv1362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1363 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1364)) : 'freshtv1366)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1369 * _menhir_state * 'tv_psi_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1367 * _menhir_state * 'tv_psi_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_csm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_csm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_csm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 303 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1368)) : 'freshtv1370)
    | _ ->
        _menhir_fail ()

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1359 * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_ty = 
# 204 "src/syntax/parser.mly"
            ( TCamlRef ty )
# 319 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1360)

and _menhir_run59 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1353 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT_LIT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1349 * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
            let (_v : (
# 12 "src/syntax/parser.mly"
       (int)
# 340 "src/syntax/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1345 * _menhir_state * 'tv_ty))) * (
# 12 "src/syntax/parser.mly"
       (int)
# 351 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1343 * _menhir_state * 'tv_ty))) * (
# 12 "src/syntax/parser.mly"
       (int)
# 358 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (ty : 'tv_ty)), (n : (
# 12 "src/syntax/parser.mly"
       (int)
# 363 "src/syntax/parser.ml"
                ))) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_ty = 
# 203 "src/syntax/parser.mly"
                                       ( TArray{ty;size=TSize n} )
# 371 "src/syntax/parser.ml"
                 in
                _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1344)) : 'freshtv1346)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1347 * _menhir_state * 'tv_ty))) * (
# 12 "src/syntax/parser.mly"
       (int)
# 381 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1348)) : 'freshtv1350)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1351 * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1352)) : 'freshtv1354)
    | ARRAY | REF | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1355 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ty = 
# 202 "src/syntax/parser.mly"
                                       ( TCamlArray ty )
# 400 "src/syntax/parser.ml"
         in
        _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1356)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1357 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1358)

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1337 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1333 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1331 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 30 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 431 "src/syntax/parser.ml"
            ) = 
# 38 "src/syntax/parser.mly"
                                                          ( p )
# 435 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1329) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 30 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 443 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1327) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 30 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 451 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1325) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 30 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 459 "src/syntax/parser.ml"
            )) : (
# 30 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 463 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1326)) : 'freshtv1328)) : 'freshtv1330)) : 'freshtv1332)) : 'freshtv1334)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1335 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1336)) : 'freshtv1338)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1341 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1339 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 483 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1340)) : 'freshtv1342)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState312 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1319 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1315 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1313 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 32 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 509 "src/syntax/parser.ml"
            ) = 
# 67 "src/syntax/parser.mly"
                                                         ( p )
# 513 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1311) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 32 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 521 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1309) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 32 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 529 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1307) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 32 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 537 "src/syntax/parser.ml"
            )) : (
# 32 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 541 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1308)) : 'freshtv1310)) : 'freshtv1312)) : 'freshtv1314)) : 'freshtv1316)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1317 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1318)) : 'freshtv1320)
    | MenhirState344 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1323 * _menhir_state * 'tv_automaton_psm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1321 * _menhir_state * 'tv_automaton_psm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_psm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 561 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1322)) : 'freshtv1324)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState331 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1291 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1289 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_psm_) : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_psm)) = _menhir_stack in
        let _v : 'tv_list_transition_psm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 583 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1290)) : 'freshtv1292)
    | MenhirState319 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1305 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1303 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_psm_) : 'tv_list_transition_psm_) = _v in
        ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_psi_psm = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 602 "src/syntax/parser.ml"
         in
        
# 75 "src/syntax/parser.mly"
                                                                             ( (q,xs,ts) )
# 607 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1301) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_psm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1299 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1293 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState338 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState338) : 'freshtv1294)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1295 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_psm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_psm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 638 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1296)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1297 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1298)) : 'freshtv1300)) : 'freshtv1302)) : 'freshtv1304)) : 'freshtv1306)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1273 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1271 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_csm_) : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_csm)) = _menhir_stack in
        let _v : 'tv_list_transition_csm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 667 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1272)) : 'freshtv1274)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1287 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1285 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_csm_) : 'tv_list_transition_csm_) = _v in
        ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_psi_csm = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 686 "src/syntax/parser.ml"
         in
        
# 93 "src/syntax/parser.mly"
                                                                             ( (q,xs,ts) )
# 691 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1283) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_csm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1281 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1275 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv1276)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1277 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_csm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_csm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 722 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1279 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1280)) : 'freshtv1282)) : 'freshtv1284)) : 'freshtv1286)) : 'freshtv1288)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_binding_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1265 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1261 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
            | LET ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | RETURN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv1262)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1263 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1264)) : 'freshtv1266)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1269 * _menhir_state * 'tv_binding_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1267 * _menhir_state * 'tv_binding_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_csm)), _, (xs : 'tv_separated_nonempty_list_AND_binding_csm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_binding_csm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 780 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1268)) : 'freshtv1270)
    | _ ->
        _menhir_fail ()

and _menhir_goto_transition_csm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_transition_csm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1259 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | IF ->
        _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | LET ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | LPAREN ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | RETURN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | AND | IN ->
        _menhir_reduce52 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv1260)

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1241 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1237 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1235 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (ty : 'tv_ty)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ty = 
# 197 "src/syntax/parser.mly"
                                       ( ty )
# 837 "src/syntax/parser.ml"
             in
            _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1236)) : 'freshtv1238)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1239 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1240)) : 'freshtv1242)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1249 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1245 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1243 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_atom)), _, (t : 'tv_ty)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 159 "src/syntax/parser.mly"
                                ( mk_ty_annot e t )
# 870 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1244)) : 'freshtv1246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1247 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1248)) : 'freshtv1250)
    | MenhirState304 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1257 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1253 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1251 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)), _, (t : 'tv_ty)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 159 "src/syntax/parser.mly"
                                ( mk_ty_annot e t )
# 903 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1252)) : 'freshtv1254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1255 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1256)) : 'freshtv1258)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1229) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1227) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ = 
# 144 "<standard.mly>"
    ( x )
# 931 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1228)) : 'freshtv1230)
    | MenhirState288 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1233 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1231 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 948 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1232)) : 'freshtv1234)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_binding_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1221 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1217 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState281
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState281
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState281
            | IDENT _v ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
            | IF ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState281
            | INT_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
            | LET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState281
            | LPAREN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState281
            | MINUS ->
                _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState281
            | NOT ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState281
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState281
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState281
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState281) : 'freshtv1218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1219 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1220)) : 'freshtv1222)
    | MenhirState284 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1225 * _menhir_state * 'tv_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1223 * _menhir_state * 'tv_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_li)), _, (xs : 'tv_separated_nonempty_list_AND_binding_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_binding_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1017 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1224)) : 'freshtv1226)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_fun_binding_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1211 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1207 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | IDENT _v ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | IF ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | INT_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | LET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | LPAREN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | MINUS ->
                _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | NOT ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState272) : 'freshtv1208)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1209 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1210)) : 'freshtv1212)
    | MenhirState275 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1215 * _menhir_state * 'tv_fun_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1213 * _menhir_state * 'tv_fun_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_fun_binding_li)), _, (xs : 'tv_separated_nonempty_list_AND_fun_binding_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_fun_binding_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1086 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1214)) : 'freshtv1216)
    | _ ->
        _menhir_fail ()

and _menhir_reduce73 : _menhir_env -> ((('ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1095 "src/syntax/parser.ml"
))) * _menhir_state * 'tv_exp_li) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 1101 "src/syntax/parser.ml"
    ))), _, (a : 'tv_exp_li)) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _v : 'tv_lvalue_exp_li_ = 
# 194 "src/syntax/parser.mly"
                                 ( (x,Some a) )
# 1108 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce106 : _menhir_env -> ((('ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1115 "src/syntax/parser.ml"
))) * _menhir_state * 'tv_exp_li) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 1121 "src/syntax/parser.ml"
    ))), _, (a : 'tv_exp_li)) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _v : 'tv_prim_exp_li_ = 
# 157 "src/syntax/parser.mly"
                                ( mk_array_get x a )
# 1128 "src/syntax/parser.ml"
     in
    _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_COMMA_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState206 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1189 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 1141 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1185 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 1151 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1183 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 1158 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 1163 "src/syntax/parser.ml"
            ))), _, (args : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 162 "src/syntax/parser.mly"
                                ( mk_call x args )
# 1171 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1184)) : 'freshtv1186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1187 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 1181 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1188)) : 'freshtv1190)
    | MenhirState253 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1193 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1191 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_exp_li)), _, (xs : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_exp_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1195 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1192)) : 'freshtv1194)
    | MenhirState259 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1201 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1203 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1197 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1213 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1195 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1220 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 1225 "src/syntax/parser.ml"
            ))), _, (e1 : 'tv_exp_li)), _, (es : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 123 "src/syntax/parser.mly"
                             ( LI.App(x,e1::es) )
# 1233 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1196)) : 'freshtv1198)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1199 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1243 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1200)) : 'freshtv1202)
    | MenhirState298 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1205 * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1203 * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_exp_li__ = 
# 144 "<standard.mly>"
    ( x )
# 1256 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp_li__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1204)) : 'freshtv1206)
    | _ ->
        _menhir_fail ()

and _menhir_goto_prim_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prim_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1181) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_prim_exp_li_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1179) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_prim_exp_li_) : 'tv_prim_exp_li_) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 113 "src/syntax/parser.mly"
                           ( LI.Prim p )
# 1275 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1180)) : 'freshtv1182)

and _menhir_run218 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState218

and _menhir_run226 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState226
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState226
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState226
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState226
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState226
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState226
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState226
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState226
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState226
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState226
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState226

and _menhir_run229 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState229

and _menhir_run231 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState231

and _menhir_run233 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState233

and _menhir_run235 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState235

and _menhir_run237 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState237

and _menhir_run239 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState239

and _menhir_run220 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT_LIT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1175 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "src/syntax/parser.mly"
       (int)
# 1578 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1173 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        let ((n : (
# 12 "src/syntax/parser.mly"
       (int)
# 1586 "src/syntax/parser.ml"
        )) : (
# 12 "src/syntax/parser.mly"
       (int)
# 1590 "src/syntax/parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_exp_li)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_prim_exp_li_ = 
# 158 "src/syntax/parser.mly"
                                ( mk_array_make n e )
# 1597 "src/syntax/parser.ml"
         in
        _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1174)) : 'freshtv1176)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1177 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1178)

and _menhir_run241 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState241
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
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState243
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
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState245

and _menhir_run222 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1169 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState223
        | BANG ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState223
        | BOOL_LIT _v ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | CALL ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState223
        | IDENT _v ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | IF ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState223
        | INT_LIT _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | LET ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState223
        | LPAREN ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState223
        | MINUS ->
            _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState223
        | NOT ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState223
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState223
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState223
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState223) : 'freshtv1170)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1171 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1172)

and _menhir_goto_separated_nonempty_list_AND_psi_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1163 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1159 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
            | LET ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState175
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175) : 'freshtv1160)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1161 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1162)) : 'freshtv1164)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1167 * _menhir_state * 'tv_psi_hsm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1165 * _menhir_state * 'tv_psi_hsm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_hsm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_hsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_hsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1806 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1166)) : 'freshtv1168)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_psi_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1153 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1149 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1147 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (_2 : 'tv_option_PIPE_)), _, (l : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_automaton_efsm = 
# 41 "src/syntax/parser.mly"
                                                               ( EFSM.Automaton l )
# 1834 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1145) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_automaton_efsm) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1143 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PIPE_PIPE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1137 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AUTOMATON ->
                    _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState157
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState157) : 'freshtv1138)
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1139 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1865 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1140)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1141 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1142)) : 'freshtv1144)) : 'freshtv1146)) : 'freshtv1148)) : 'freshtv1150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1151 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1152)) : 'freshtv1154)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1157 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1155 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1892 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1156)) : 'freshtv1158)
    | _ ->
        _menhir_fail ()

and _menhir_goto_automaton_psm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_psm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState328 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1115 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1113 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_automaton_psm = 
# 71 "src/syntax/parser.mly"
                                       ( PSM.Seq(s,a) )
# 1912 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1114)) : 'freshtv1116)
    | MenhirState322 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1123 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1121 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_psm = 
# 78 "src/syntax/parser.mly"
                                 ( (g,a) )
# 1926 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1119) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_psm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1117 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run320 _menhir_env (Obj.magic _menhir_stack) MenhirState331
        | AND | IN ->
            _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState331
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState331) : 'freshtv1118)) : 'freshtv1120)) : 'freshtv1122)) : 'freshtv1124)
    | MenhirState335 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1127 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1125 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_psi_psm_)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_psm = 
# 72 "src/syntax/parser.mly"
                                                                     ( PSM.LetRec (bs,a) )
# 1958 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1126)) : 'freshtv1128)
    | MenhirState344 | MenhirState312 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1135 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE_PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1129 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState344 _v
            | LET ->
                _menhir_run313 _menhir_env (Obj.magic _menhir_stack) MenhirState344
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState344
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState344) : 'freshtv1130)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1131 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_psm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1990 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1132)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1133 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1134)) : 'freshtv1136)
    | _ ->
        _menhir_fail ()

and _menhir_reduce58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_psm_ = 
# 211 "<standard.mly>"
    ( [] )
# 2008 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_psm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run320 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState320
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState320
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState320
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState320
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState320
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState320
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState320

and _menhir_reduce52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_csm_ = 
# 211 "<standard.mly>"
    ( [] )
# 2046 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_csm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run96 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_goto_inst_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_inst_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState125 | MenhirState122 | MenhirState116 | MenhirState95 | MenhirState111 | MenhirState108 | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1093 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1089 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | LET ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | RETURN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv1090)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1091 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1092)) : 'freshtv1094)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1099 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1095 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv1096)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1097 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1098)) : 'freshtv1100)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1105 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1101 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | LET ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168) : 'freshtv1102)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1103 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1104)) : 'freshtv1106)
    | MenhirState344 | MenhirState312 | MenhirState335 | MenhirState328 | MenhirState322 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1111 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1107 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState328 _v
            | LET ->
                _menhir_run313 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState328
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState328) : 'freshtv1108)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1109 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1110)) : 'freshtv1112)
    | _ ->
        _menhir_fail ()

and _menhir_goto_automaton_csm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_csm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1043 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1041 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_automaton_csm = 
# 87 "src/syntax/parser.mly"
                                       ( CSM.Seq(s,a) )
# 2212 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1042)) : 'freshtv1044)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1047 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1045 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_atom)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_csm = 
# 97 "src/syntax/parser.mly"
                                 ( (e,a) )
# 2226 "src/syntax/parser.ml"
         in
        _menhir_goto_transition_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1046)) : 'freshtv1048)
    | MenhirState95 | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1051 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1049 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _v : 'tv_transition_csm = 
# 96 "src/syntax/parser.mly"
                  ( (mk_bool' true,a) )
# 2238 "src/syntax/parser.ml"
         in
        _menhir_goto_transition_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1050)) : 'freshtv1052)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1055 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1053 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_psi_csm_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_csm = 
# 88 "src/syntax/parser.mly"
                                                                     ( CSM.LetRec (bs,a) )
# 2253 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1054)) : 'freshtv1056)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1069 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 2261 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1067 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 2267 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 2272 "src/syntax/parser.ml"
        ))), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_binding_csm = 
# 100 "src/syntax/parser.mly"
                             ( (x,a) )
# 2278 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1065) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binding_csm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1063 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1057 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv1058)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1059 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_csm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_binding_csm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2309 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_binding_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1060)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1061 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1062)) : 'freshtv1064)) : 'freshtv1066)) : 'freshtv1068)) : 'freshtv1070)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1073 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1071 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_binding_csm_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_automaton_csm = 
# 90 "src/syntax/parser.mly"
                                                                     ( CSM.Let (bs,a) )
# 2330 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1072)) : 'freshtv1074)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1087 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1083 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1081 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (a : 'tv_automaton_csm)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 33 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2349 "src/syntax/parser.ml"
            ) = 
# 83 "src/syntax/parser.mly"
                      ( a )
# 2353 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1079) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 33 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2361 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1077) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 33 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2369 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1075) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 33 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2377 "src/syntax/parser.ml"
            )) : (
# 33 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2381 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1076)) : 'freshtv1078)) : 'freshtv1080)) : 'freshtv1082)) : 'freshtv1084)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1085 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1086)) : 'freshtv1088)
    | _ ->
        _menhir_fail ()

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1039) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 198 "src/syntax/parser.mly"
                                       ( TStd_logic )
# 2404 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1040)

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1037) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 201 "src/syntax/parser.mly"
                                       ( TPtr )
# 2418 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1038)

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | INT ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LPAREN ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | PTR ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | STD_LOGIC ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1035) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 199 "src/syntax/parser.mly"
                                       ( TInt )
# 2453 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1036)

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1033) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 200 "src/syntax/parser.mly"
                                       ( TBool )
# 2467 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1034)

and _menhir_goto_prim_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prim_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1031) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_prim_atom_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1029) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_prim_atom_) : 'tv_prim_atom_) = _v in
    ((let _v : 'tv_atom = 
# 170 "src/syntax/parser.mly"
                         ( mk_prim p )
# 2484 "src/syntax/parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1030)) : 'freshtv1032)

and _menhir_goto_separated_nonempty_list_COMMA_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1019 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 2497 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1015 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 2507 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1013 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 2514 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 2519 "src/syntax/parser.ml"
            ))), _, (args : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 162 "src/syntax/parser.mly"
                                ( mk_call x args )
# 2527 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1014)) : 'freshtv1016)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1017 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 2537 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1018)) : 'freshtv1020)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1023 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1021 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_atom)), _, (xs : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2551 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1022)) : 'freshtv1024)
    | MenhirState324 | MenhirState101 | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1027 * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1025 * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 144 "<standard.mly>"
    ( x )
# 2563 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1026)) : 'freshtv1028)
    | _ ->
        _menhir_fail ()

and _menhir_run20 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run26 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
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
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
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
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
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
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
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
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
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
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
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

and _menhir_run22 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT_LIT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1009 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "src/syntax/parser.mly"
       (int)
# 2804 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1007 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let ((n : (
# 12 "src/syntax/parser.mly"
       (int)
# 2812 "src/syntax/parser.ml"
        )) : (
# 12 "src/syntax/parser.mly"
       (int)
# 2816 "src/syntax/parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_atom)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_prim_atom_ = 
# 158 "src/syntax/parser.mly"
                                ( mk_array_make n e )
# 2823 "src/syntax/parser.ml"
         in
        _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1008)) : 'freshtv1010)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1011 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1012)

and _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
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

and _menhir_run40 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
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
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
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

and _menhir_goto_inst_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_inst_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1005 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1001 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState215
        | BANG ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState215
        | BOOL_LIT _v ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState215 _v
        | CALL ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState215
        | IDENT _v ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState215 _v
        | IF ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState215
        | INT_LIT _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState215 _v
        | LET ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState215
        | LPAREN ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState215
        | MINUS ->
            _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState215
        | NOT ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState215
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState215
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState215
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState215) : 'freshtv1002)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1003 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1004)) : 'freshtv1006)

and _menhir_reduce135 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)) = _menhir_stack in
    let _v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2976 "src/syntax/parser.ml"
     in
    _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run288 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv999) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState288 in
        let (_v : (
# 10 "src/syntax/parser.mly"
       (string)
# 2992 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv995 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3003 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState290 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | IDENT _v ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState290 _v
            | IF ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | INT_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState290 _v
            | LET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | LPAREN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | MINUS ->
                _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | NOT ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState290
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState290) : 'freshtv996)
        | COMMA | RPAREN ->
            _menhir_reduce72 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv997 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3047 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv998)) : 'freshtv1000)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState288

and _menhir_run213 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | IDENT _v ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState213

and _menhir_goto_exp_li : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState215 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv763 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv759 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_exp_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 116 "src/syntax/parser.mly"
                                   ( LI.Seq(s,e) )
# 3136 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv760)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv761 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv762)) : 'freshtv764)
    | MenhirState218 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv769 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv765 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 176 "src/syntax/parser.mly"
        ( Atom.Mul )
# 3164 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3169 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv766)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv767 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv768)) : 'freshtv770)
    | MenhirState223 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv777 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv773 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv771 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (arr : 'tv_exp_li)), _, (idx : 'tv_exp_li)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 132 "src/syntax/parser.mly"
                           ( LI.ArrayAccess{arr;idx} )
# 3222 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv772)) : 'freshtv774)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv775 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv776)) : 'freshtv778)
    | MenhirState226 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv783 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv779 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 174 "src/syntax/parser.mly"
       ( Atom.Add )
# 3254 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3259 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv780)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv781 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv782)) : 'freshtv784)
    | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv789 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv785 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 184 "src/syntax/parser.mly"
            ( Atom.Or )
# 3307 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3312 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv786)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv787 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv788)) : 'freshtv790)
    | MenhirState231 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv795 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv791 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 182 "src/syntax/parser.mly"
      ( Atom.Neq )
# 3346 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3351 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv792)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv793 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv794)) : 'freshtv796)
    | MenhirState233 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv801 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv797 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 175 "src/syntax/parser.mly"
        ( Atom.Sub )
# 3381 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3386 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv798)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv799 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv800)) : 'freshtv802)
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv807 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv803 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 177 "src/syntax/parser.mly"
     ( Atom.Lt )
# 3420 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3425 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv804)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv805 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv806)) : 'freshtv808)
    | MenhirState237 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv813 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv809 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 178 "src/syntax/parser.mly"
     ( Atom.Le )
# 3459 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3464 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv810)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv811 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv812)) : 'freshtv814)
    | MenhirState239 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv819 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | LAND | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv815 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 183 "src/syntax/parser.mly"
       ( Atom.And )
# 3510 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3515 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv816)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv817 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv818)) : 'freshtv820)
    | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv825 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv821 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 179 "src/syntax/parser.mly"
     ( Atom.Gt )
# 3549 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3554 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv822)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv823 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv824)) : 'freshtv826)
    | MenhirState243 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv831 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv827 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 180 "src/syntax/parser.mly"
     ( Atom.Ge )
# 3588 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3593 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv828)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv829 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv830)) : 'freshtv832)
    | MenhirState245 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv837 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv833 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 181 "src/syntax/parser.mly"
     ( Atom.Eq )
# 3627 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3632 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv834)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv835 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv836)) : 'freshtv838)
    | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv843 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv839 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_inst_exp_li_ = 
# 187 "src/syntax/parser.mly"
                          ( Inst.Assign [ (x,a) ] )
# 3682 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv840)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv841 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv842)) : 'freshtv844)
    | MenhirState209 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv849 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv845 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 133 "src/syntax/parser.mly"
                           ( LI.ArrayLength e )
# 3732 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv846)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv847 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv848)) : 'freshtv850)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv855 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv851 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 130 "src/syntax/parser.mly"
                           ( LI.RefAccess e )
# 3760 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv852)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv853 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv854)) : 'freshtv856)
    | MenhirState298 | MenhirState259 | MenhirState253 | MenhirState206 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv863 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv857 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState253
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState253
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState253 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState253
            | IDENT _v ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState253 _v
            | IF ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState253
            | INT_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState253 _v
            | LET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState253
            | LPAREN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState253
            | MINUS ->
                _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState253
            | NOT ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState253
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState253
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState253
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState253) : 'freshtv858)
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv859 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_exp_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3845 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv860)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv861 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv862)) : 'freshtv864)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv871 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3860 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv867 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3894 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                _menhir_reduce106 _menhir_env (Obj.magic _menhir_stack)
            | COLONEQ ->
                _menhir_reduce73 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv865 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3910 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv866)) : 'freshtv868)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv869 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3923 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv870)) : 'freshtv872)
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv881 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3932 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv873 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3942 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState259
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState259
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState259
            | IDENT _v ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
            | IF ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState259
            | INT_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
            | LET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState259
            | LPAREN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState259
            | MINUS ->
                _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState259
            | NOT ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState259
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState259
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState259
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState259) : 'freshtv874)
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv877 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4006 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv875 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4013 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 4018 "src/syntax/parser.ml"
            ))), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 125 "src/syntax/parser.mly"
                             ( LI.App(x,[e]) )
# 4025 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv876)) : 'freshtv878)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv879 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4037 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv880)) : 'freshtv882)
    | MenhirState262 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv889 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4046 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv885 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4080 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND | COL | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                _menhir_reduce106 _menhir_env (Obj.magic _menhir_stack)
            | COLONEQ | COMMA ->
                _menhir_reduce73 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv883 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4096 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv884)) : 'freshtv886)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv887 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4109 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv888)) : 'freshtv890)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv895 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv891 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | IDENT _v ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | IF ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | INT_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | LET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | LPAREN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | MINUS ->
                _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | NOT ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState266) : 'freshtv892)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv893 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv894)) : 'freshtv896)
    | MenhirState266 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv901 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv897 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState268 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | IDENT _v ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState268 _v
            | IF ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | INT_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState268 _v
            | LET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | LPAREN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | MINUS ->
                _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | NOT ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState268
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState268) : 'freshtv898)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv899 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv900)) : 'freshtv902)
    | MenhirState268 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv907 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv903 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_exp_li)), _, (e2 : 'tv_exp_li)), _, (e3 : 'tv_exp_li)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 129 "src/syntax/parser.mly"
                           ( LI.If(e1,e2,e3) )
# 4305 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv904)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv905 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv906)) : 'freshtv908)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv923 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4320 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv919 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4356 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (f : (
# 10 "src/syntax/parser.mly"
       (string)
# 4361 "src/syntax/parser.ml"
            ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_fun_binding_li = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 4369 "src/syntax/parser.ml"
             in
            
# 140 "src/syntax/parser.mly"
                                                                   ( (f,xs,e) )
# 4374 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv917) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_fun_binding_li) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv915 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv909 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState275) : 'freshtv910)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv911 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_fun_binding_li)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_fun_binding_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4405 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv912)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv913 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv914)) : 'freshtv916)) : 'freshtv918)) : 'freshtv920)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv921 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4422 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv922)) : 'freshtv924)
    | MenhirState272 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv929 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv925 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_fun_binding_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 120 "src/syntax/parser.mly"
                           ( LI.LetRec (bs,e) )
# 4468 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv926)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv927 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv928)) : 'freshtv930)
    | MenhirState278 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv945 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4483 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv941 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4519 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 4524 "src/syntax/parser.ml"
            ))), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_binding_li = 
# 137 "src/syntax/parser.mly"
                           ( (x,e) )
# 4530 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv939) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_binding_li) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv937 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv931 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run277 _menhir_env (Obj.magic _menhir_stack) MenhirState284 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState284) : 'freshtv932)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv933 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_li)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_binding_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4561 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv934)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv935 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv936)) : 'freshtv938)) : 'freshtv940)) : 'freshtv942)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv943 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4578 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv944)) : 'freshtv946)
    | MenhirState281 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv951 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv947 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_binding_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 118 "src/syntax/parser.mly"
                           ( LI.Let (bs,e) )
# 4623 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv948)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv949 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv950)) : 'freshtv952)
    | MenhirState290 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv957 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4638 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv953 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4672 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce73 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv954)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv955 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4685 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv956)) : 'freshtv958)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv967 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv959 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | INT ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | LPAREN ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | PTR ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | STD_LOGIC ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState304
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState304) : 'freshtv960)
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv963 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv961 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li = 
# 107 "src/syntax/parser.mly"
                           ( e )
# 4751 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li _menhir_env _menhir_stack _menhir_s _v) : 'freshtv962)) : 'freshtv964)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv965 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv966)) : 'freshtv968)
    | MenhirState188 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv973 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv969 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 156 "src/syntax/parser.mly"
                                ( mk_unop Atom.Uminus a )
# 4781 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv970)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv971 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv972)) : 'freshtv974)
    | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv979 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv975 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 155 "src/syntax/parser.mly"
                                ( mk_unop Atom.Not a  )
# 4809 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv976)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv977 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv978)) : 'freshtv980)
    | MenhirState186 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv993 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv989 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv987 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 34 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4837 "src/syntax/parser.ml"
            ) = 
# 104 "src/syntax/parser.mly"
               ( e )
# 4841 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv985) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 34 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4849 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv983) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 34 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4857 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv981) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 34 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4865 "src/syntax/parser.ml"
            )) : (
# 34 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4869 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv982)) : 'freshtv984)) : 'freshtv986)) : 'freshtv988)) : 'freshtv990)
        | EQ ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run220 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv991 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv992)) : 'freshtv994)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_lvalue_atom__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv753) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv751) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ = 
# 144 "<standard.mly>"
    ( x )
# 4921 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv752)) : 'freshtv754)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv757 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv755 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 4938 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv756)) : 'freshtv758)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv745 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv741 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv739 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 31 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 4964 "src/syntax/parser.ml"
            ) = 
# 52 "src/syntax/parser.mly"
                                                         ( p )
# 4968 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv737) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 31 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 4976 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv735) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 31 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 4984 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv733) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 31 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 4992 "src/syntax/parser.ml"
            )) : (
# 31 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 4996 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv734)) : 'freshtv736)) : 'freshtv738)) : 'freshtv740)) : 'freshtv742)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv743 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv744)) : 'freshtv746)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv749 * _menhir_state * 'tv_automaton_hsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv747 * _menhir_state * 'tv_automaton_hsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_hsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 5016 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv748)) : 'freshtv750)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv717 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv715 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_hsm_) : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_hsm)) = _menhir_stack in
        let _v : 'tv_list_transition_hsm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 5038 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv716)) : 'freshtv718)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv731 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv729 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_hsm_) : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_psi_hsm = 
# 59 "src/syntax/parser.mly"
                                ( (q,ts) )
# 5055 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv727) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_hsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv725 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv719 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState178) : 'freshtv720)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv721 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_hsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_hsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5086 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv722)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv723 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv724)) : 'freshtv726)) : 'freshtv728)) : 'freshtv730)) : 'freshtv732)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv699 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv697 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_efsm)) = _menhir_stack in
        let _v : 'tv_list_transition_efsm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 5115 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv698)) : 'freshtv700)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv713 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv711 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_psi_efsm = 
# 44 "src/syntax/parser.mly"
                                         ( (q,ts) )
# 5132 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv709) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_efsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv707 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv701 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv702)
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv703 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5163 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv704)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv705 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv706)) : 'freshtv708)) : 'freshtv710)) : 'freshtv712)) : 'freshtv714)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_atom__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv679 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv675 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv673 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
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
# 5203 "src/syntax/parser.ml"
              
            in
            let xs = 
# 232 "<standard.mly>"
    ( xs )
# 5209 "src/syntax/parser.ml"
             in
            
# 190 "src/syntax/parser.mly"
  ( Inst.Assign (List.combine xs es) )
# 5214 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv674)) : 'freshtv676)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv677 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv678)) : 'freshtv680)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv687 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv683 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv681 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_automaton_csm = let es = 
# 232 "<standard.mly>"
    ( xs )
# 5242 "src/syntax/parser.ml"
             in
            
# 86 "src/syntax/parser.mly"
                                                      ( CSM.State (q,es) )
# 5247 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv682)) : 'freshtv684)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv685 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv686)) : 'freshtv688)
    | MenhirState324 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv695 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv691 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv689 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_automaton_psm = let es = 
# 232 "<standard.mly>"
    ( xs )
# 5275 "src/syntax/parser.ml"
             in
            
# 70 "src/syntax/parser.mly"
                                                      ( PSM.State (q,es) )
# 5280 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv690)) : 'freshtv692)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv693 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv694)) : 'freshtv696)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_IDENT__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv651 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv647 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv643 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
                | IF ->
                    _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | LET ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | LPAREN ->
                    _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | RETURN ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | AND | IN ->
                    _menhir_reduce52 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv644)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv645 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv646)) : 'freshtv648)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv649 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv650)) : 'freshtv652)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv661 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5350 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv657 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5360 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv653 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5370 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ARRAY_LENGTH ->
                    _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState196
                | BANG ->
                    _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState196
                | BOOL_LIT _v ->
                    _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
                | CALL ->
                    _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState196
                | IDENT _v ->
                    _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
                | IF ->
                    _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState196
                | INT_LIT _v ->
                    _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
                | LET ->
                    _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState196
                | LPAREN ->
                    _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState196
                | MINUS ->
                    _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState196
                | NOT ->
                    _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState196
                | ONE ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState196
                | ZERO ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState196
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState196) : 'freshtv654)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv655 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5412 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv656)) : 'freshtv658)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv659 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5423 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv660)) : 'freshtv662)
    | MenhirState316 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv671 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv667 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv663 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IF ->
                    _menhir_run320 _menhir_env (Obj.magic _menhir_stack) MenhirState319
                | AND | IN ->
                    _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState319
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState319) : 'freshtv664)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv665 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv666)) : 'freshtv668)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv669 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv670)) : 'freshtv672)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_IDENT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_IDENT_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv637 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5478 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv635 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5486 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_IDENT_) : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 5493 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_IDENT_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 5499 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv636)) : 'freshtv638)
    | MenhirState316 | MenhirState193 | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv641) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv639) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_IDENT_) : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_IDENT__ = 
# 144 "<standard.mly>"
    ( x )
# 5514 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv640)) : 'freshtv642)
    | _ ->
        _menhir_fail ()

and _menhir_goto_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState324 | MenhirState101 | MenhirState80 | MenhirState44 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv493 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv487 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | CALL ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | INT_LIT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv488)
        | EQ ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv489 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5589 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv490)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv491 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv492)) : 'freshtv494)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv499 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv495 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 176 "src/syntax/parser.mly"
        ( Atom.Mul )
# 5615 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5620 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv497 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv498)) : 'freshtv500)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv505 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv501 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 174 "src/syntax/parser.mly"
       ( Atom.Add )
# 5648 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5653 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv502)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv503 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv504)) : 'freshtv506)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv511 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | IDENT _ | IF | IN | LET | LPAREN | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv507 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 184 "src/syntax/parser.mly"
            ( Atom.Or )
# 5699 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5704 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv508)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv509 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv510)) : 'freshtv512)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv517 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv513 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 182 "src/syntax/parser.mly"
      ( Atom.Neq )
# 5736 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5741 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv515 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv516)) : 'freshtv518)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv523 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv519 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 175 "src/syntax/parser.mly"
        ( Atom.Sub )
# 5769 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5774 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv520)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv521 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv522)) : 'freshtv524)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv529 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv525 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 177 "src/syntax/parser.mly"
     ( Atom.Lt )
# 5806 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5811 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv526)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv527 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv528)) : 'freshtv530)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv535 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv531 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 178 "src/syntax/parser.mly"
     ( Atom.Le )
# 5843 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5848 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv532)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv533 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv534)) : 'freshtv536)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv541 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | IDENT _ | IF | IN | LAND | LET | LPAREN | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv537 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 183 "src/syntax/parser.mly"
       ( Atom.And )
# 5892 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5897 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv538)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv539 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv540)) : 'freshtv542)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv547 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv543 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 179 "src/syntax/parser.mly"
     ( Atom.Gt )
# 5929 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5934 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv544)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv545 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv546)) : 'freshtv548)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv553 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv549 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 180 "src/syntax/parser.mly"
     ( Atom.Ge )
# 5966 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5971 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv550)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv551 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv552)) : 'freshtv554)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv559 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv555 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 181 "src/syntax/parser.mly"
     ( Atom.Eq )
# 6003 "src/syntax/parser.ml"
             in
            
# 154 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6008 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv556)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv557 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv558)) : 'freshtv560)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv567 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6023 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv563 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6055 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv561 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6062 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 6067 "src/syntax/parser.ml"
            ))), _, (a : 'tv_atom)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_prim_atom_ = 
# 157 "src/syntax/parser.mly"
                                ( mk_array_get x a )
# 6074 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv562)) : 'freshtv564)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv565 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6086 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv566)) : 'freshtv568)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv577 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv569 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | INT ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | LPAREN ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | PTR ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | STD_LOGIC ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv570)
        | EQ ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv573 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv571 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_atom = 
# 171 "src/syntax/parser.mly"
                         ( a )
# 6150 "src/syntax/parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv572)) : 'freshtv574)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv575 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv576)) : 'freshtv578)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv583 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv579 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 156 "src/syntax/parser.mly"
                                ( mk_unop Atom.Uminus a )
# 6178 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv580)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv581 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv582)) : 'freshtv584)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv589 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv585 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 155 "src/syntax/parser.mly"
                                ( mk_unop Atom.Not a  )
# 6204 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv586)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv587 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv588)) : 'freshtv590)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv595 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | EOF | IDENT _ | IF | IN | LET | LPAREN | RETURN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv591 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_automaton_csm = 
# 89 "src/syntax/parser.mly"
                ( CSM.Return a )
# 6252 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv592)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv593 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv594)) : 'freshtv596)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv603 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6267 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv599 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6299 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv597 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6306 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 6311 "src/syntax/parser.ml"
            ))), _, (a : 'tv_atom)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_lvalue_atom_ = 
# 194 "src/syntax/parser.mly"
                                 ( (x,Some a) )
# 6318 "src/syntax/parser.ml"
             in
            _menhir_goto_lvalue_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv598)) : 'freshtv600)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv601 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6330 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv602)) : 'freshtv604)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv609 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv605 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | LET ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | RETURN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv606)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv607 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv608)) : 'freshtv610)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv615 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv611 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)), _, (a : 'tv_atom)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_inst_atom_ = 
# 187 "src/syntax/parser.mly"
                          ( Inst.Assign [ (x,a) ] )
# 6427 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv612)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv613 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv614)) : 'freshtv616)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv621 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv617 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv618)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv619 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv620)) : 'freshtv622)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv627 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv623 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166) : 'freshtv624)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv625 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv626)) : 'freshtv628)
    | MenhirState320 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv633 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv629 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState322 _v
            | LET ->
                _menhir_run313 _menhir_env (Obj.magic _menhir_stack) MenhirState322
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState322
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState322) : 'freshtv630)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv631 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv632)) : 'freshtv634)
    | _ ->
        _menhir_fail ()

and _menhir_goto_const_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_const_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv485) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_const_atom_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv483) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : 'tv_const_atom_) : 'tv_const_atom_) = _v in
    ((let _v : 'tv_atom = 
# 169 "src/syntax/parser.mly"
                         ( mk_const c )
# 6608 "src/syntax/parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv484)) : 'freshtv486)

and _menhir_goto_loption_separated_nonempty_list_COMMA_exp_li__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_exp_li__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv481 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv477 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv475 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
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
# 6637 "src/syntax/parser.ml"
          
        in
        let xs = 
# 232 "<standard.mly>"
    ( xs )
# 6643 "src/syntax/parser.ml"
         in
        
# 190 "src/syntax/parser.mly"
  ( Inst.Assign (List.combine xs es) )
# 6648 "src/syntax/parser.ml"
         in
        _menhir_goto_inst_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv476)) : 'freshtv478)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv479 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv480)) : 'freshtv482)

and _menhir_goto_lvalue_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState186 | MenhirState187 | MenhirState188 | MenhirState298 | MenhirState290 | MenhirState281 | MenhirState278 | MenhirState272 | MenhirState196 | MenhirState268 | MenhirState266 | MenhirState198 | MenhirState262 | MenhirState259 | MenhirState200 | MenhirState203 | MenhirState253 | MenhirState206 | MenhirState208 | MenhirState245 | MenhirState243 | MenhirState241 | MenhirState239 | MenhirState237 | MenhirState235 | MenhirState233 | MenhirState231 | MenhirState229 | MenhirState226 | MenhirState223 | MenhirState218 | MenhirState215 | MenhirState213 | MenhirState209 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv463 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv464)) : 'freshtv466)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv469 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run288 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce135 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv467 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv468)) : 'freshtv470)
    | MenhirState288 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run288 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce135 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv471 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv472)) : 'freshtv474)
    | _ ->
        _menhir_fail ()

and _menhir_goto_exp_li_without_paren : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_li_without_paren -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exp_li_without_paren) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : 'tv_exp_li_without_paren) : 'tv_exp_li_without_paren) = _v in
    ((let _v : 'tv_exp_li = 
# 108 "src/syntax/parser.mly"
                           ( e )
# 6730 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li _menhir_env _menhir_stack _menhir_s _v) : 'freshtv460)) : 'freshtv462)

and _menhir_goto_lvalue_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState75 | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv445 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv446)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv447 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 6763 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv449 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
    | MenhirState344 | MenhirState312 | MenhirState335 | MenhirState328 | MenhirState322 | MenhirState166 | MenhirState141 | MenhirState0 | MenhirState125 | MenhirState122 | MenhirState116 | MenhirState95 | MenhirState111 | MenhirState108 | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv453 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | CALL ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | INT_LIT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | NOT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv454)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv455 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv456)) : 'freshtv458)
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
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv431 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv429 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_hsm)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_hsm = 
# 62 "src/syntax/parser.mly"
                                                      ( (g,s,a) )
# 6838 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv427) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_hsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | AND | IN ->
            _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171) : 'freshtv426)) : 'freshtv428)) : 'freshtv430)) : 'freshtv432)
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv435 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv433 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_psi_hsm_)), _, (a : 'tv_automaton_hsm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_hsm = 
# 56 "src/syntax/parser.mly"
                                                                     ( HSM.LetRec (bs,a) )
# 6870 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_hsm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)) : 'freshtv436)
    | MenhirState184 | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv443 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE_PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv437 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
            | LET ->
                _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState184
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184) : 'freshtv438)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv439 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_hsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 6900 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv441 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)) : 'freshtv444)
    | _ ->
        _menhir_fail ()

and _menhir_reduce56 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_hsm_ = 
# 211 "<standard.mly>"
    ( [] )
# 6918 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_hsm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run164 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164

and _menhir_reduce54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_efsm_ = 
# 211 "<standard.mly>"
    ( [] )
# 6956 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_efsm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run139 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139

and _menhir_reduce62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 142 "<standard.mly>"
    ( [] )
# 6994 "src/syntax/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce60 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_IDENT__ = 
# 142 "<standard.mly>"
    ( [] )
# 7003 "src/syntax/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run89 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7010 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7022 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv420)
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7038 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7043 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_IDENT_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 7048 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7058 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
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
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
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
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
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

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "src/syntax/parser.mly"
       (int)
# 7153 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 12 "src/syntax/parser.mly"
       (int)
# 7163 "src/syntax/parser.ml"
    )) : (
# 12 "src/syntax/parser.mly"
       (int)
# 7167 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_atom_ = 
# 151 "src/syntax/parser.mly"
                           ( mk_int n )
# 7172 "src/syntax/parser.ml"
     in
    _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7179 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7191 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL_LIT _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | CALL ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | IDENT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | INT_LIT _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | LPAREN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | MINUS ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | NOT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv412)
    | AND | COL | COMMA | EOF | EQ | GE | GT | HAT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7223 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7228 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_atom = 
# 168 "src/syntax/parser.mly"
                         ( Atom.Var x )
# 7233 "src/syntax/parser.ml"
         in
        _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7243 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "src/syntax/parser.mly"
       (string)
# 7260 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv403 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 7271 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
            | CALL ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
            | INT_LIT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | NOT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv404)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv405 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 7305 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)) : 'freshtv408)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/syntax/parser.mly"
       (bool)
# 7320 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 11 "src/syntax/parser.mly"
       (bool)
# 7330 "src/syntax/parser.ml"
    )) : (
# 11 "src/syntax/parser.mly"
       (bool)
# 7334 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_atom_ = 
# 149 "src/syntax/parser.mly"
                           ( mk_bool b )
# 7339 "src/syntax/parser.ml"
     in
    _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv402)

and _menhir_run121 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7346 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7358 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | LET ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LPAREN ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | RETURN ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv398)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7382 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)

and _menhir_goto_option_PIPE_ : _menhir_env -> 'ttv_tail -> 'tv_option_PIPE_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv395 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136) : 'freshtv396)

and _menhir_goto_std_logic : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_std_logic -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState324 | MenhirState320 | MenhirState164 | MenhirState139 | MenhirState105 | MenhirState101 | MenhirState96 | MenhirState80 | MenhirState70 | MenhirState1 | MenhirState4 | MenhirState5 | MenhirState6 | MenhirState9 | MenhirState44 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState34 | MenhirState32 | MenhirState30 | MenhirState28 | MenhirState26 | MenhirState24 | MenhirState20 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_const_atom_ = 
# 150 "src/syntax/parser.mly"
                           ( mk_std_logic v )
# 7417 "src/syntax/parser.ml"
         in
        _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)) : 'freshtv390)
    | MenhirState186 | MenhirState187 | MenhirState188 | MenhirState298 | MenhirState290 | MenhirState189 | MenhirState281 | MenhirState278 | MenhirState272 | MenhirState196 | MenhirState268 | MenhirState266 | MenhirState198 | MenhirState262 | MenhirState259 | MenhirState200 | MenhirState203 | MenhirState253 | MenhirState206 | MenhirState208 | MenhirState245 | MenhirState243 | MenhirState241 | MenhirState239 | MenhirState237 | MenhirState235 | MenhirState233 | MenhirState231 | MenhirState229 | MenhirState226 | MenhirState223 | MenhirState218 | MenhirState215 | MenhirState213 | MenhirState209 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_const_exp_li_ = 
# 150 "src/syntax/parser.mly"
                           ( mk_std_logic v )
# 7432 "src/syntax/parser.ml"
         in
        _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)) : 'freshtv394)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv385 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv381 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv377 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv373 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ARRAY_LENGTH ->
                    _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState298
                | BANG ->
                    _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState298
                | BOOL_LIT _v ->
                    _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState298 _v
                | CALL ->
                    _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState298
                | IDENT _v ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState298 _v
                | IF ->
                    _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState298
                | INT_LIT _v ->
                    _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState298 _v
                | LET ->
                    _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState298
                | LPAREN ->
                    _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState298
                | MINUS ->
                    _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState298
                | NOT ->
                    _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState298
                | ONE ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState298
                | ZERO ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState298
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv371) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState298 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA_exp_li__ = 
# 142 "<standard.mly>"
    ( [] )
# 7497 "src/syntax/parser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_exp_li__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState298) : 'freshtv374)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv375 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)) : 'freshtv378)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv379 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)) : 'freshtv382)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv383 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)

and _menhir_run192 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7529 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv367 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7541 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | RPAREN ->
            _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState193) : 'freshtv368)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv369 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7561 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)

and _menhir_run277 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7569 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv363 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7581 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState278
        | BANG ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState278
        | BOOL_LIT _v ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState278 _v
        | CALL ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState278
        | IDENT _v ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState278 _v
        | IF ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState278
        | INT_LIT _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState278 _v
        | LET ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState278
        | LPAREN ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState278
        | MINUS ->
            _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState278
        | NOT ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState278
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState278
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState278
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState278) : 'freshtv364)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv365 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7623 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)

and _menhir_reduce32 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7631 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7637 "src/syntax/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_exp_li_without_paren = 
# 111 "src/syntax/parser.mly"
                           ( LI.Var x )
# 7642 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce72 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7649 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7655 "src/syntax/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_lvalue_exp_li_ = 
# 193 "src/syntax/parser.mly"
                                 ( (x,None) )
# 7660 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run200 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7667 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState200
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState200
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState200
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState200
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState200
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState200
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState200
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState200
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState200
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv361 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7702 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState200 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv359 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7710 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7716 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : 'tv_exp_li_without_paren = 
# 126 "src/syntax/parser.mly"
                            ( LI.App(x,[]) )
# 7723 "src/syntax/parser.ml"
         in
        _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState200
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState200

and _menhir_goto_const_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_const_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv357) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_const_exp_li_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv355) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : 'tv_const_exp_li_) : 'tv_const_exp_li_) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 112 "src/syntax/parser.mly"
                            ( LI.Const c )
# 7746 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)

and _menhir_run202 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7753 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv351 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7765 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | BANG ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | BOOL_LIT _v ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | CALL ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | IDENT _v ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | IF ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | INT_LIT _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | LET ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | LPAREN ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | MINUS ->
            _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | NOT ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState203) : 'freshtv352)
    | LPAREN ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack)
    | COLONEQ ->
        _menhir_reduce72 _menhir_env (Obj.magic _menhir_stack)
    | AND | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv353 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7813 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)

and _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv349 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv345 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv341 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv337 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL_LIT _v ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
                | CALL ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | IDENT _v ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
                | INT_LIT _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
                | LPAREN ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | MINUS ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | NOT ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | ONE ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | ZERO ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | RPAREN ->
                    _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv338)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv339 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv343 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv347 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)) : 'freshtv350)

and _menhir_run69 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7893 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
    | COLONEQ | COMMA | RPAREN ->
        _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv335 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7911 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)

and _menhir_reduce70 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7919 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7925 "src/syntax/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_lvalue_atom_ = 
# 193 "src/syntax/parser.mly"
                                 ( (x,None) )
# 7930 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_atom_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce145 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7937 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7943 "src/syntax/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_state = 
# 146 "src/syntax/parser.mly"
          ( x )
# 7948 "src/syntax/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv333) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_state) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState119 | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv285 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | RPAREN ->
                _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv286)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv287 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)) : 'freshtv290)
    | MenhirState0 | MenhirState125 | MenhirState122 | MenhirState116 | MenhirState95 | MenhirState111 | MenhirState108 | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv295 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv291 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
            | CALL ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
            | INT_LIT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | NOT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | RPAREN ->
                _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv292)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv293 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)) : 'freshtv296)
    | MenhirState151 | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv301 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | END | PIPE ->
                _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv299 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv309 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv307 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (s : 'tv_inst_atom_)), _, (q : 'tv_state)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_efsm = 
# 47 "src/syntax/parser.mly"
                                              ( (g,s,q) )
# 8065 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv305) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_efsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv303 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | END | PIPE ->
            _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv304)) : 'freshtv306)) : 'freshtv308)) : 'freshtv310)
    | MenhirState178 | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv311 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState163
            | AND | IN ->
                _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState163
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState163) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv313 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
    | MenhirState184 | MenhirState159 | MenhirState175 | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _v : 'tv_automaton_hsm = 
# 55 "src/syntax/parser.mly"
          ( HSM.State q )
# 8121 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_hsm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)) : 'freshtv320)
    | MenhirState338 | MenhirState314 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv321 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState316 _v
            | RPAREN ->
                _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState316) : 'freshtv322)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
    | MenhirState344 | MenhirState312 | MenhirState335 | MenhirState328 | MenhirState322 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv327 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState324 _v
            | CALL ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState324 _v
            | INT_LIT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState324 _v
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | NOT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | RPAREN ->
                _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState324) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | _ ->
        _menhir_fail ()) : 'freshtv334)

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8200 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
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

and _menhir_run84 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv283 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState84 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv284)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_run134 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PIPE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
        ((let x = () in
        let _v : 'tv_option_PIPE_ = 
# 116 "<standard.mly>"
    ( Some x )
# 8301 "src/syntax/parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv276)) : 'freshtv278)
    | IDENT _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_PIPE_ = 
# 114 "<standard.mly>"
    ( None )
# 8310 "src/syntax/parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv280)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)

and _menhir_run160 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161) : 'freshtv272)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 8350 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce145 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv269) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_std_logic = 
# 164 "src/syntax/parser.mly"
       ( Atom.Zero )
# 8367 "src/syntax/parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv267) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_std_logic = 
# 165 "src/syntax/parser.mly"
       ( Atom.One )
# 8381 "src/syntax/parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv268)

and _menhir_run187 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState187

and _menhir_run188 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState188
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState188
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState188
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState188
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState188
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState188
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState188
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState188
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState188
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState188
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState188

and _menhir_run189 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | IDENT _v ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState189 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ = 
# 142 "<standard.mly>"
    ( [] )
# 8498 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState189

and _menhir_run190 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run277 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState190 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191) : 'freshtv264)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190

and _menhir_run197 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "src/syntax/parser.mly"
       (int)
# 8536 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv261) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 12 "src/syntax/parser.mly"
       (int)
# 8546 "src/syntax/parser.ml"
    )) : (
# 12 "src/syntax/parser.mly"
       (int)
# 8550 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_exp_li_ = 
# 151 "src/syntax/parser.mly"
                           ( mk_int n )
# 8555 "src/syntax/parser.ml"
     in
    _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)

and _menhir_run198 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | IDENT _v ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState198

and _menhir_run199 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 8599 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8611 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | BANG ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | BOOL_LIT _v ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
        | CALL ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | IDENT _v ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
        | IF ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | INT_LIT _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
        | LET ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | LPAREN ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | MINUS ->
            _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | NOT ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState262
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState262) : 'freshtv258)
    | LPAREN ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack)
    | COLONEQ | COMMA ->
        _menhir_reduce72 _menhir_env (Obj.magic _menhir_stack)
    | AND | COL | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8659 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)

and _menhir_run204 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "src/syntax/parser.mly"
       (string)
# 8676 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv249 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 8687 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | IDENT _v ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
            | IF ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | INT_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
            | LET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | LPAREN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | MINUS ->
                _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | NOT ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState206
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState206) : 'freshtv250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv251 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 8729 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)) : 'freshtv254)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)

and _menhir_run207 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/syntax/parser.mly"
       (bool)
# 8744 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv247) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 11 "src/syntax/parser.mly"
       (bool)
# 8754 "src/syntax/parser.ml"
    )) : (
# 11 "src/syntax/parser.mly"
       (bool)
# 8758 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_exp_li_ = 
# 149 "src/syntax/parser.mly"
                           ( mk_bool b )
# 8763 "src/syntax/parser.ml"
     in
    _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)

and _menhir_run208 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208

and _menhir_run209 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState209

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState344 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * 'tv_automaton_psm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState338 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * 'tv_psi_psm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState335 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv23 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState331 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState328 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState324 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState322 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv31 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState320 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState319 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv35 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState316 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState314 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState312 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv42)
    | MenhirState304 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState298 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv45 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState290 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8918 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState288 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState284 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_binding_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState281 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState278 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8942 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState275 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_fun_binding_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState272 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv59 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState268 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv61 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState266 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv63 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState262 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8971 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState259 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv67 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8980 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState253 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState245 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState243 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState239 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState237 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState233 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState231 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState226 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState223 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state * 'tv_exp_li))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState218 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState215 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_inst_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState209 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState206 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv103 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 9074 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9083 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9092 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv111 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9106 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9115 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState188 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState186 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv126)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * 'tv_automaton_hsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state * 'tv_psi_hsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv131 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv135 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv146)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state * 'tv_automaton_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state * 'tv_psi_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv153 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv164)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state * 'tv_binding_csm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9256 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state * 'tv_psi_csm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv173 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv183 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv187 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9310 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv197 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9344 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv207 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv233 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 9428 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9437 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv246)

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState68 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ = 
# 142 "<standard.mly>"
    ( [] )
# 9481 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run313 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState314) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

and _menhir_run99 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 9518 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
    | LPAREN ->
        _menhir_reduce145 _menhir_env (Obj.magic _menhir_stack)
    | COLONEQ ->
        _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9538 "src/syntax/parser.ml"
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
# 33 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 9558 "src/syntax/parser.ml"
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
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RETURN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv10))

and efsm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 30 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 9588 "src/syntax/parser.ml"
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
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState133
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133) : 'freshtv8))

and hsm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 31 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 9612 "src/syntax/parser.ml"
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
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | LET ->
        _menhir_run160 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv6))

and li : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 34 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 9638 "src/syntax/parser.ml"
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
        _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | IDENT _v ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState186) : 'freshtv4))

and psm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 32 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 9686 "src/syntax/parser.ml"
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
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _v
    | LET ->
        _menhir_run313 _menhir_env (Obj.magic _menhir_stack) MenhirState312
    | LPAREN ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState312
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState312) : 'freshtv2))

# 269 "<standard.mly>"
  

# 9714 "src/syntax/parser.ml"
