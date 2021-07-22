
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
# 37 "src/syntax/parser.ml"
  )
    | INT
    | IN
    | IF
    | IDENT of (
# 10 "src/syntax/parser.mly"
       (string)
# 45 "src/syntax/parser.ml"
  )
    | HAT
    | GT
    | GE
    | EQ
    | EOF
    | END
    | ELSE
    | COMMA
    | COLONEQ
    | COL
    | CALL
    | BOOL_LIT of (
# 11 "src/syntax/parser.mly"
       (bool)
# 61 "src/syntax/parser.ml"
  )
    | BOOL
    | BANG
    | AUTOMATON
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
  | MenhirState338
  | MenhirState332
  | MenhirState329
  | MenhirState325
  | MenhirState322
  | MenhirState318
  | MenhirState316
  | MenhirState314
  | MenhirState313
  | MenhirState310
  | MenhirState308
  | MenhirState306
  | MenhirState298
  | MenhirState292
  | MenhirState284
  | MenhirState282
  | MenhirState278
  | MenhirState275
  | MenhirState272
  | MenhirState269
  | MenhirState266
  | MenhirState262
  | MenhirState260
  | MenhirState256
  | MenhirState253
  | MenhirState247
  | MenhirState240
  | MenhirState238
  | MenhirState236
  | MenhirState234
  | MenhirState232
  | MenhirState230
  | MenhirState228
  | MenhirState226
  | MenhirState224
  | MenhirState222
  | MenhirState217
  | MenhirState214
  | MenhirState212
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

# 202 "src/syntax/parser.ml"

let rec _menhir_goto_separated_nonempty_list_AND_psi_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState308 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1351 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1347 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState329 _v
            | LET ->
                _menhir_run307 _menhir_env (Obj.magic _menhir_stack) MenhirState329
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState329
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState329) : 'freshtv1348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1349 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1350)) : 'freshtv1352)
    | MenhirState332 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1355 * _menhir_state * 'tv_psi_psm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1353 * _menhir_state * 'tv_psi_psm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_psm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_psm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_psm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 247 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1354)) : 'freshtv1356)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_psi_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1341 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1337 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv1338)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1339 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1340)) : 'freshtv1342)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1345 * _menhir_state * 'tv_psi_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1343 * _menhir_state * 'tv_psi_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_csm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_csm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_csm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 298 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1344)) : 'freshtv1346)
    | _ ->
        _menhir_fail ()

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1335 * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_ty = 
# 200 "src/syntax/parser.mly"
            ( TCamlRef ty )
# 314 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1336)

and _menhir_run59 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1331 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT_LIT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1327 * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
            let (_v : (
# 12 "src/syntax/parser.mly"
       (int)
# 335 "src/syntax/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1323 * _menhir_state * 'tv_ty))) * (
# 12 "src/syntax/parser.mly"
       (int)
# 346 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1321 * _menhir_state * 'tv_ty))) * (
# 12 "src/syntax/parser.mly"
       (int)
# 353 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (ty : 'tv_ty)), (n : (
# 12 "src/syntax/parser.mly"
       (int)
# 358 "src/syntax/parser.ml"
                ))) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_ty = 
# 199 "src/syntax/parser.mly"
                                       ( TArray{ty;size=TSize n} )
# 366 "src/syntax/parser.ml"
                 in
                _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1322)) : 'freshtv1324)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1325 * _menhir_state * 'tv_ty))) * (
# 12 "src/syntax/parser.mly"
       (int)
# 376 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1326)) : 'freshtv1328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1329 * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1330)) : 'freshtv1332)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1333 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1334)

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1315 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1311 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1309 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 29 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 415 "src/syntax/parser.ml"
            ) = 
# 37 "src/syntax/parser.mly"
                                                          ( p )
# 419 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1307) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 29 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 427 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1305) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 29 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 435 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1303) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 29 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 443 "src/syntax/parser.ml"
            )) : (
# 29 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 447 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1304)) : 'freshtv1306)) : 'freshtv1308)) : 'freshtv1310)) : 'freshtv1312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1313 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1314)) : 'freshtv1316)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1319 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1317 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 467 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1318)) : 'freshtv1320)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState306 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1297 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1293 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1291 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 31 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 493 "src/syntax/parser.ml"
            ) = 
# 66 "src/syntax/parser.mly"
                                                         ( p )
# 497 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1289) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 31 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 505 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1287) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 31 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 513 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1285) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 31 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 521 "src/syntax/parser.ml"
            )) : (
# 31 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 525 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1286)) : 'freshtv1288)) : 'freshtv1290)) : 'freshtv1292)) : 'freshtv1294)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1295 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1296)) : 'freshtv1298)
    | MenhirState338 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1301 * _menhir_state * 'tv_automaton_psm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1299 * _menhir_state * 'tv_automaton_psm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_psm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 545 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1300)) : 'freshtv1302)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState325 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1269 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1267 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_psm_) : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_psm)) = _menhir_stack in
        let _v : 'tv_list_transition_psm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 567 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1268)) : 'freshtv1270)
    | MenhirState313 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1283 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1281 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_psm_) : 'tv_list_transition_psm_) = _v in
        ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_psi_psm = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 586 "src/syntax/parser.ml"
         in
        
# 74 "src/syntax/parser.mly"
                                                                             ( (q,xs,ts) )
# 591 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1279) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_psm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1277 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1271 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState332 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState332) : 'freshtv1272)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1273 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_psm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_psm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 622 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1275 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1276)) : 'freshtv1278)) : 'freshtv1280)) : 'freshtv1282)) : 'freshtv1284)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1251 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1249 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_csm_) : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_csm)) = _menhir_stack in
        let _v : 'tv_list_transition_csm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 651 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1250)) : 'freshtv1252)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1265 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1263 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_csm_) : 'tv_list_transition_csm_) = _v in
        ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_psi_csm = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 670 "src/syntax/parser.ml"
         in
        
# 92 "src/syntax/parser.mly"
                                                                             ( (q,xs,ts) )
# 675 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1261) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_csm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1259 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1253 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv1254)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1255 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_csm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_csm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 706 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1256)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1257 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1258)) : 'freshtv1260)) : 'freshtv1262)) : 'freshtv1264)) : 'freshtv1266)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_binding_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1243 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1239 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv1240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1241 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1242)) : 'freshtv1244)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1247 * _menhir_state * 'tv_binding_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1245 * _menhir_state * 'tv_binding_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_csm)), _, (xs : 'tv_separated_nonempty_list_AND_binding_csm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_binding_csm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 764 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1246)) : 'freshtv1248)
    | _ ->
        _menhir_fail ()

and _menhir_goto_transition_csm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_transition_csm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1237 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
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
        _menhir_reduce50 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv1238)

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1219 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1215 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1213 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (ty : 'tv_ty)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ty = 
# 194 "src/syntax/parser.mly"
                                       ( ty )
# 821 "src/syntax/parser.ml"
             in
            _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1214)) : 'freshtv1216)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1217 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1218)) : 'freshtv1220)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1227 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1223 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1221 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_atom)), _, (t : 'tv_ty)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 156 "src/syntax/parser.mly"
                                ( mk_ty_annot e t )
# 854 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1222)) : 'freshtv1224)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1225 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1226)) : 'freshtv1228)
    | MenhirState298 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1235 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1231 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1229 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)), _, (t : 'tv_ty)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 156 "src/syntax/parser.mly"
                                ( mk_ty_annot e t )
# 887 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1230)) : 'freshtv1232)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1233 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1234)) : 'freshtv1236)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1207) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1205) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ = 
# 144 "<standard.mly>"
    ( x )
# 915 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1206)) : 'freshtv1208)
    | MenhirState282 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1211 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1209 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 932 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1210)) : 'freshtv1212)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_binding_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1199 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1195 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | IDENT _v ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _v
            | IF ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | INT_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _v
            | LET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | LPAREN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | MINUS ->
                _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | NOT ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState275
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState275) : 'freshtv1196)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1197 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1198)) : 'freshtv1200)
    | MenhirState278 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1203 * _menhir_state * 'tv_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1201 * _menhir_state * 'tv_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_li)), _, (xs : 'tv_separated_nonempty_list_AND_binding_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_binding_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 999 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1202)) : 'freshtv1204)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_fun_binding_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1189 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1185 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | IDENT _v ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState266) : 'freshtv1186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1187 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1188)) : 'freshtv1190)
    | MenhirState269 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1193 * _menhir_state * 'tv_fun_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1191 * _menhir_state * 'tv_fun_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_fun_binding_li)), _, (xs : 'tv_separated_nonempty_list_AND_fun_binding_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_fun_binding_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1066 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1192)) : 'freshtv1194)
    | _ ->
        _menhir_fail ()

and _menhir_reduce71 : _menhir_env -> ((('ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1075 "src/syntax/parser.ml"
))) * _menhir_state * 'tv_exp_li) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 1081 "src/syntax/parser.ml"
    ))), _, (a : 'tv_exp_li)) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _v : 'tv_lvalue_exp_li_ = 
# 191 "src/syntax/parser.mly"
                                 ( (x,Some a) )
# 1088 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce104 : _menhir_env -> ((('ttv_tail * _menhir_state * (
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
    let _v : 'tv_prim_exp_li_ = 
# 154 "src/syntax/parser.mly"
                                ( mk_array_get x a )
# 1108 "src/syntax/parser.ml"
     in
    _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_COMMA_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState206 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1167 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 1121 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1163 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 1131 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1161 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 1138 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 1143 "src/syntax/parser.ml"
            ))), _, (args : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 159 "src/syntax/parser.mly"
                                ( mk_call x args )
# 1151 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1162)) : 'freshtv1164)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1165 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 1161 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1166)) : 'freshtv1168)
    | MenhirState247 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1171 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1169 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_exp_li)), _, (xs : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_exp_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1175 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1170)) : 'freshtv1172)
    | MenhirState253 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1179 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1183 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1175 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1193 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1173 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1200 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 1205 "src/syntax/parser.ml"
            ))), _, (e1 : 'tv_exp_li)), _, (es : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 122 "src/syntax/parser.mly"
                             ( LI.App(x,e1::es) )
# 1213 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1174)) : 'freshtv1176)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1177 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 1223 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1178)) : 'freshtv1180)
    | MenhirState292 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1183 * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1181 * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_exp_li__ = 
# 144 "<standard.mly>"
    ( x )
# 1236 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_exp_li__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1182)) : 'freshtv1184)
    | _ ->
        _menhir_fail ()

and _menhir_goto_prim_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prim_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1159) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_prim_exp_li_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1157) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_prim_exp_li_) : 'tv_prim_exp_li_) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 112 "src/syntax/parser.mly"
                           ( LI.Prim p )
# 1255 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1158)) : 'freshtv1160)

and _menhir_run217 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState217

and _menhir_run222 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState222

and _menhir_run224 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState224

and _menhir_run226 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
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

and _menhir_run228 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState228

and _menhir_run230 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState230

and _menhir_run232 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState232

and _menhir_run234 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState234

and _menhir_run219 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT_LIT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1153 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "src/syntax/parser.mly"
       (int)
# 1542 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1151 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        let ((n : (
# 12 "src/syntax/parser.mly"
       (int)
# 1550 "src/syntax/parser.ml"
        )) : (
# 12 "src/syntax/parser.mly"
       (int)
# 1554 "src/syntax/parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_exp_li)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_prim_exp_li_ = 
# 155 "src/syntax/parser.mly"
                                ( mk_array_make n e )
# 1561 "src/syntax/parser.ml"
         in
        _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1152)) : 'freshtv1154)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1155 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1156)

and _menhir_run236 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState236
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
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState238
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
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | IDENT _v ->
        _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState240
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState240

and _menhir_goto_separated_nonempty_list_AND_psi_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1145 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1141 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175) : 'freshtv1142)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1143 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1144)) : 'freshtv1146)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1149 * _menhir_state * 'tv_psi_hsm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1147 * _menhir_state * 'tv_psi_hsm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_hsm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_hsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_hsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1715 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1148)) : 'freshtv1150)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_psi_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1135 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1131 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1129 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (_2 : 'tv_option_PIPE_)), _, (l : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_automaton_efsm = 
# 40 "src/syntax/parser.mly"
                                                               ( EFSM.Automaton l )
# 1743 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1127) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_automaton_efsm) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1125 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PIPE_PIPE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1119 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AUTOMATON ->
                    _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState157
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState157) : 'freshtv1120)
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1121 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1774 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1122)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1123 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1124)) : 'freshtv1126)) : 'freshtv1128)) : 'freshtv1130)) : 'freshtv1132)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1133 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1134)) : 'freshtv1136)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1139 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1137 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1801 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1138)) : 'freshtv1140)
    | _ ->
        _menhir_fail ()

and _menhir_goto_automaton_psm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_psm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState322 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1097 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1095 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_automaton_psm = 
# 70 "src/syntax/parser.mly"
                                       ( PSM.Seq(s,a) )
# 1821 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1096)) : 'freshtv1098)
    | MenhirState316 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1105 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1103 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_psm = 
# 77 "src/syntax/parser.mly"
                                 ( (g,a) )
# 1835 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1101) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_psm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1099 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run314 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | AND | IN ->
            _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState325
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState325) : 'freshtv1100)) : 'freshtv1102)) : 'freshtv1104)) : 'freshtv1106)
    | MenhirState329 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1109 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1107 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_psi_psm_)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_psm = 
# 71 "src/syntax/parser.mly"
                                                                     ( PSM.LetRec (bs,a) )
# 1867 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1108)) : 'freshtv1110)
    | MenhirState338 | MenhirState306 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1117 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE_PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1111 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState338 _v
            | LET ->
                _menhir_run307 _menhir_env (Obj.magic _menhir_stack) MenhirState338
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState338
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState338) : 'freshtv1112)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1113 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_psm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1899 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1114)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1115 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1116)) : 'freshtv1118)
    | _ ->
        _menhir_fail ()

and _menhir_reduce56 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_psm_ = 
# 211 "<standard.mly>"
    ( [] )
# 1917 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_psm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run314 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _v
    | CALL ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState314
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState314
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState314
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState314
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState314
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState314
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState314

and _menhir_reduce50 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_csm_ = 
# 211 "<standard.mly>"
    ( [] )
# 1955 "src/syntax/parser.ml"
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
        let (_menhir_stack : 'freshtv1075 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1071 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv1072)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1073 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1074)) : 'freshtv1076)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1081 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1077 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv1078)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1079 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1080)) : 'freshtv1082)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1087 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1083 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168) : 'freshtv1084)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1085 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1086)) : 'freshtv1088)
    | MenhirState338 | MenhirState306 | MenhirState329 | MenhirState322 | MenhirState316 ->
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
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState322 _v
            | LET ->
                _menhir_run307 _menhir_env (Obj.magic _menhir_stack) MenhirState322
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState322
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState322) : 'freshtv1090)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1091 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1092)) : 'freshtv1094)
    | _ ->
        _menhir_fail ()

and _menhir_goto_automaton_csm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_csm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1025 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1023 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_automaton_csm = 
# 86 "src/syntax/parser.mly"
                                       ( CSM.Seq(s,a) )
# 2121 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1024)) : 'freshtv1026)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1029 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1027 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_atom)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_csm = 
# 96 "src/syntax/parser.mly"
                                 ( (e,a) )
# 2135 "src/syntax/parser.ml"
         in
        _menhir_goto_transition_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1028)) : 'freshtv1030)
    | MenhirState95 | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1033 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1031 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _v : 'tv_transition_csm = 
# 95 "src/syntax/parser.mly"
                  ( (mk_bool' true,a) )
# 2147 "src/syntax/parser.ml"
         in
        _menhir_goto_transition_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1032)) : 'freshtv1034)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1037 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1035 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_psi_csm_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_csm = 
# 87 "src/syntax/parser.mly"
                                                                     ( CSM.LetRec (bs,a) )
# 2162 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1036)) : 'freshtv1038)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1051 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 2170 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1049 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 2176 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 2181 "src/syntax/parser.ml"
        ))), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_binding_csm = 
# 99 "src/syntax/parser.mly"
                             ( (x,a) )
# 2187 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1047) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binding_csm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1045 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1039 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv1040)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1041 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_csm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_binding_csm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2218 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_binding_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1042)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1043 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1044)) : 'freshtv1046)) : 'freshtv1048)) : 'freshtv1050)) : 'freshtv1052)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1055 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1053 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_binding_csm_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_automaton_csm = 
# 89 "src/syntax/parser.mly"
                                                                     ( CSM.Let (bs,a) )
# 2239 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1054)) : 'freshtv1056)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1069 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1065 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1063 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (a : 'tv_automaton_csm)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 32 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2258 "src/syntax/parser.ml"
            ) = 
# 82 "src/syntax/parser.mly"
                      ( a )
# 2262 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1061) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 32 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2270 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1059) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 32 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2278 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1057) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 32 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2286 "src/syntax/parser.ml"
            )) : (
# 32 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 2290 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1058)) : 'freshtv1060)) : 'freshtv1062)) : 'freshtv1064)) : 'freshtv1066)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1067 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1068)) : 'freshtv1070)
    | _ ->
        _menhir_fail ()

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1021) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 195 "src/syntax/parser.mly"
                                       ( TStd_logic )
# 2313 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1022)

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1019) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 198 "src/syntax/parser.mly"
                                       ( TPtr )
# 2327 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1020)

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
    let (_menhir_stack : 'freshtv1017) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 196 "src/syntax/parser.mly"
                                       ( TInt )
# 2362 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1018)

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1015) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_ty = 
# 197 "src/syntax/parser.mly"
                                       ( TBool )
# 2376 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1016)

and _menhir_goto_prim_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prim_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1013) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_prim_atom_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1011) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_prim_atom_) : 'tv_prim_atom_) = _v in
    ((let _v : 'tv_atom = 
# 167 "src/syntax/parser.mly"
                         ( mk_prim p )
# 2393 "src/syntax/parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1012)) : 'freshtv1014)

and _menhir_goto_separated_nonempty_list_COMMA_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1001 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 2406 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv997 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 2416 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv995 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 2423 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 2428 "src/syntax/parser.ml"
            ))), _, (args : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 159 "src/syntax/parser.mly"
                                ( mk_call x args )
# 2436 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv996)) : 'freshtv998)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv999 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 2446 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1000)) : 'freshtv1002)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1005 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1003 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_atom)), _, (xs : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2460 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1004)) : 'freshtv1006)
    | MenhirState318 | MenhirState101 | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1009 * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1007 * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 144 "<standard.mly>"
    ( x )
# 2472 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1008)) : 'freshtv1010)
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
        let (_menhir_stack : ('freshtv991 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let (_v : (
# 12 "src/syntax/parser.mly"
       (int)
# 2713 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv989 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let ((n : (
# 12 "src/syntax/parser.mly"
       (int)
# 2721 "src/syntax/parser.ml"
        )) : (
# 12 "src/syntax/parser.mly"
       (int)
# 2725 "src/syntax/parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_atom)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_prim_atom_ = 
# 155 "src/syntax/parser.mly"
                                ( mk_array_make n e )
# 2732 "src/syntax/parser.ml"
         in
        _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv990)) : 'freshtv992)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv993 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv994)

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
    let (_menhir_stack : 'freshtv987 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv983 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BANG ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState214
        | BOOL_LIT _v ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | CALL ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState214
        | IDENT _v ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | IF ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState214
        | INT_LIT _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | LET ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState214
        | LPAREN ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState214
        | MINUS ->
            _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState214
        | NOT ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState214
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState214
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState214
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState214) : 'freshtv984)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv985 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv986)) : 'freshtv988)

and _menhir_reduce133 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)) = _menhir_stack in
    let _v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2883 "src/syntax/parser.ml"
     in
    _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run282 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv981) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState282 in
        let (_v : (
# 10 "src/syntax/parser.mly"
       (string)
# 2899 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv977 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 2910 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState284 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | IDENT _v ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState284 _v
            | IF ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | INT_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState284 _v
            | LET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | LPAREN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | MINUS ->
                _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | NOT ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState284
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState284) : 'freshtv978)
        | COMMA | RPAREN ->
            _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv979 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 2952 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv980)) : 'freshtv982)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState282

and _menhir_run212 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BANG ->
        _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | BOOL_LIT _v ->
        _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
    | CALL ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | IDENT _v ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
    | IF ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | INT_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
    | LET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | LPAREN ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | MINUS ->
        _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | NOT ->
        _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState212

and _menhir_goto_exp_li : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState214 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv759 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv755 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_exp_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 115 "src/syntax/parser.mly"
                                   ( LI.Seq(s,e) )
# 3037 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv756)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv757 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv758)) : 'freshtv760)
    | MenhirState217 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv765 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv761 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 173 "src/syntax/parser.mly"
        ( Atom.Mul )
# 3063 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3068 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv762)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv763 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv764)) : 'freshtv766)
    | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv771 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv767 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 171 "src/syntax/parser.mly"
       ( Atom.Add )
# 3096 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3101 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv768)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv769 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv770)) : 'freshtv772)
    | MenhirState224 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv777 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv773 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 181 "src/syntax/parser.mly"
            ( Atom.Or )
# 3147 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3152 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv774)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv775 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv776)) : 'freshtv778)
    | MenhirState226 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv783 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv779 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 179 "src/syntax/parser.mly"
      ( Atom.Neq )
# 3184 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3189 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv780)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv781 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv782)) : 'freshtv784)
    | MenhirState228 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv789 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv785 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 172 "src/syntax/parser.mly"
        ( Atom.Sub )
# 3217 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3222 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv786)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv787 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv788)) : 'freshtv790)
    | MenhirState230 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv795 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv791 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 174 "src/syntax/parser.mly"
     ( Atom.Lt )
# 3254 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3259 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv792)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv793 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv794)) : 'freshtv796)
    | MenhirState232 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv801 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv797 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 175 "src/syntax/parser.mly"
     ( Atom.Le )
# 3291 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3296 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv798)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv799 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv800)) : 'freshtv802)
    | MenhirState234 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv807 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | LAND | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv803 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 180 "src/syntax/parser.mly"
       ( Atom.And )
# 3340 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3345 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv804)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv805 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv806)) : 'freshtv808)
    | MenhirState236 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv813 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv809 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 176 "src/syntax/parser.mly"
     ( Atom.Gt )
# 3377 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3382 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv810)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv811 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv812)) : 'freshtv814)
    | MenhirState238 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv819 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv815 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 177 "src/syntax/parser.mly"
     ( Atom.Ge )
# 3414 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3419 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv816)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv817 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv818)) : 'freshtv820)
    | MenhirState240 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv825 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv821 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = let c = 
# 178 "src/syntax/parser.mly"
     ( Atom.Eq )
# 3451 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3456 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv822)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv823 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv824)) : 'freshtv826)
    | MenhirState212 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv831 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv827 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_inst_exp_li_ = 
# 184 "src/syntax/parser.mly"
                          ( Inst.Assign [ (x,a) ] )
# 3504 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv828)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv829 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv830)) : 'freshtv832)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv837 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv833 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 129 "src/syntax/parser.mly"
                           ( LI.RefAccess e )
# 3530 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv834)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv835 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv836)) : 'freshtv838)
    | MenhirState292 | MenhirState253 | MenhirState247 | MenhirState206 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv845 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv839 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | IDENT _v ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
            | IF ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | INT_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
            | LET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | LPAREN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | MINUS ->
                _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | NOT ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState247) : 'freshtv840)
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv841 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_exp_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3611 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv842)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv843 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv844)) : 'freshtv846)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv853 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3626 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv849 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3658 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                _menhir_reduce104 _menhir_env (Obj.magic _menhir_stack)
            | COLONEQ ->
                _menhir_reduce71 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv847 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3674 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv848)) : 'freshtv850)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv851 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3687 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv852)) : 'freshtv854)
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv863 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3696 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv855 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3706 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState253) : 'freshtv856)
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv859 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3766 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv857 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3773 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 3778 "src/syntax/parser.ml"
            ))), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_exp_li_without_paren = 
# 124 "src/syntax/parser.mly"
                             ( LI.App(x,[e]) )
# 3785 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv858)) : 'freshtv860)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv861 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3797 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv862)) : 'freshtv864)
    | MenhirState256 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv871 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3806 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv867 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3838 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND | COL | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                _menhir_reduce104 _menhir_env (Obj.magic _menhir_stack)
            | COLONEQ | COMMA ->
                _menhir_reduce71 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv865 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3854 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv866)) : 'freshtv868)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv869 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 3867 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv870)) : 'freshtv872)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv877 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv873 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | IDENT _v ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
            | IF ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | INT_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
            | LET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | LPAREN ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | MINUS ->
                _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | NOT ->
                _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState260) : 'freshtv874)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv875 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv876)) : 'freshtv878)
    | MenhirState260 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv883 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv879 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BANG ->
                _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState262
            | BOOL_LIT _v ->
                _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | CALL ->
                _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState262
            | IDENT _v ->
                _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState262) : 'freshtv880)
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv881 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv882)) : 'freshtv884)
    | MenhirState262 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv889 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv885 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_exp_li)), _, (e2 : 'tv_exp_li)), _, (e3 : 'tv_exp_li)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 128 "src/syntax/parser.mly"
                           ( LI.If(e1,e2,e3) )
# 4053 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv886)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv887 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv888)) : 'freshtv890)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv905 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4068 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv901 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4102 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (f : (
# 10 "src/syntax/parser.mly"
       (string)
# 4107 "src/syntax/parser.ml"
            ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_fun_binding_li = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 4115 "src/syntax/parser.ml"
             in
            
# 137 "src/syntax/parser.mly"
                                                                   ( (f,xs,e) )
# 4120 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv899) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_fun_binding_li) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv897 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv891 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState269) : 'freshtv892)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv893 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_fun_binding_li)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_fun_binding_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4151 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv894)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv895 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv896)) : 'freshtv898)) : 'freshtv900)) : 'freshtv902)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv903 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4168 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv904)) : 'freshtv906)
    | MenhirState266 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv911 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv907 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_fun_binding_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 119 "src/syntax/parser.mly"
                           ( LI.LetRec (bs,e) )
# 4212 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv908)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv909 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv910)) : 'freshtv912)
    | MenhirState272 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv927 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4227 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv923 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4261 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 4266 "src/syntax/parser.ml"
            ))), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_binding_li = 
# 134 "src/syntax/parser.mly"
                           ( (x,e) )
# 4272 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv921) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_binding_li) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv919 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv913 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState278 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState278) : 'freshtv914)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv915 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_li)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_binding_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4303 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv916)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv917 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv918)) : 'freshtv920)) : 'freshtv922)) : 'freshtv924)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv925 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4320 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv926)) : 'freshtv928)
    | MenhirState275 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv933 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | IN | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv929 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_binding_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li_without_paren = 
# 117 "src/syntax/parser.mly"
                           ( LI.Let (bs,e) )
# 4363 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv930)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv931 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv932)) : 'freshtv934)
    | MenhirState284 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv939 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4378 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv935 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4410 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce71 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv936)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv937 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 4423 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv938)) : 'freshtv940)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv949 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv941 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState298
            | INT ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState298
            | LPAREN ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState298
            | PTR ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState298
            | STD_LOGIC ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState298
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState298) : 'freshtv942)
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv945 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv943 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_li = 
# 106 "src/syntax/parser.mly"
                           ( e )
# 4487 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li _menhir_env _menhir_stack _menhir_s _v) : 'freshtv944)) : 'freshtv946)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv947 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv948)) : 'freshtv950)
    | MenhirState188 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv955 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv951 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 153 "src/syntax/parser.mly"
                                ( mk_unop Atom.Uminus a )
# 4515 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv952)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv953 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv954)) : 'freshtv956)
    | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv961 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv957 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_li_ = 
# 152 "src/syntax/parser.mly"
                                ( mk_unop Atom.Not a  )
# 4541 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv958)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv959 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv960)) : 'freshtv962)
    | MenhirState186 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv975 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv971 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv969 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_exp_li)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 33 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4567 "src/syntax/parser.ml"
            ) = 
# 103 "src/syntax/parser.mly"
               ( e )
# 4571 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv967) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 33 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4579 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv965) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 33 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4587 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv963) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 33 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4595 "src/syntax/parser.ml"
            )) : (
# 33 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4599 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv964)) : 'freshtv966)) : 'freshtv968)) : 'freshtv970)) : 'freshtv972)
        | EQ ->
            _menhir_run240 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run226 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv973 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv974)) : 'freshtv976)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_lvalue_atom__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv749) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv747) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ = 
# 144 "<standard.mly>"
    ( x )
# 4651 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv748)) : 'freshtv750)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv753 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv751 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 4668 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv752)) : 'freshtv754)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv741 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv737 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv735 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 30 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 4694 "src/syntax/parser.ml"
            ) = 
# 51 "src/syntax/parser.mly"
                                                         ( p )
# 4698 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv733) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 30 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 4706 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv731) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 30 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 4714 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv729) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 30 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 4722 "src/syntax/parser.ml"
            )) : (
# 30 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 4726 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv730)) : 'freshtv732)) : 'freshtv734)) : 'freshtv736)) : 'freshtv738)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv739 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv740)) : 'freshtv742)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv745 * _menhir_state * 'tv_automaton_hsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv743 * _menhir_state * 'tv_automaton_hsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_hsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 4746 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv744)) : 'freshtv746)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv713 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv711 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_hsm_) : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_hsm)) = _menhir_stack in
        let _v : 'tv_list_transition_hsm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 4768 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv712)) : 'freshtv714)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv727 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv725 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_hsm_) : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_psi_hsm = 
# 58 "src/syntax/parser.mly"
                                ( (q,ts) )
# 4785 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv723) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_hsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv721 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv715 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState178) : 'freshtv716)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv717 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_hsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_hsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4816 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv718)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv719 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv720)) : 'freshtv722)) : 'freshtv724)) : 'freshtv726)) : 'freshtv728)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv695 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv693 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_efsm)) = _menhir_stack in
        let _v : 'tv_list_transition_efsm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 4845 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv694)) : 'freshtv696)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv709 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv707 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_psi_efsm = 
# 43 "src/syntax/parser.mly"
                                         ( (q,ts) )
# 4862 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv705) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_efsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv703 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv697 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv698)
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv699 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4893 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv700)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv701 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv702)) : 'freshtv704)) : 'freshtv706)) : 'freshtv708)) : 'freshtv710)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_atom__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv675 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv671 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv669 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
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
# 4933 "src/syntax/parser.ml"
              
            in
            let xs = 
# 232 "<standard.mly>"
    ( xs )
# 4939 "src/syntax/parser.ml"
             in
            
# 187 "src/syntax/parser.mly"
  ( Inst.Assign (List.combine xs es) )
# 4944 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv670)) : 'freshtv672)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv673 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv674)) : 'freshtv676)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv683 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv679 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv677 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_automaton_csm = let es = 
# 232 "<standard.mly>"
    ( xs )
# 4972 "src/syntax/parser.ml"
             in
            
# 85 "src/syntax/parser.mly"
                                                      ( CSM.State (q,es) )
# 4977 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv678)) : 'freshtv680)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv681 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv682)) : 'freshtv684)
    | MenhirState318 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv691 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv687 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv685 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_automaton_psm = let es = 
# 232 "<standard.mly>"
    ( xs )
# 5005 "src/syntax/parser.ml"
             in
            
# 69 "src/syntax/parser.mly"
                                                      ( PSM.State (q,es) )
# 5010 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv686)) : 'freshtv688)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv689 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv690)) : 'freshtv692)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_IDENT__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv647 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv643 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv639 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
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
                    _menhir_reduce50 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv640)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv641 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv642)) : 'freshtv644)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv645 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv646)) : 'freshtv648)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv657 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5080 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv653 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5090 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv649 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5100 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState196) : 'freshtv650)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv651 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5140 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv652)) : 'freshtv654)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv655 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5151 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv656)) : 'freshtv658)
    | MenhirState310 ->
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
                | IF ->
                    _menhir_run314 _menhir_env (Obj.magic _menhir_stack) MenhirState313
                | AND | IN ->
                    _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState313
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState313) : 'freshtv660)
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
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_IDENT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_IDENT_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv633 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5206 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv631 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5214 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_IDENT_) : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 5221 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_IDENT_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 5227 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv632)) : 'freshtv634)
    | MenhirState310 | MenhirState193 | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv637) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv635) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_IDENT_) : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_IDENT__ = 
# 144 "<standard.mly>"
    ( x )
# 5242 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv636)) : 'freshtv638)
    | _ ->
        _menhir_fail ()

and _menhir_goto_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState318 | MenhirState101 | MenhirState80 | MenhirState44 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv489 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv483 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv484)
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
            let (_menhir_stack : 'freshtv485 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5317 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv487 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv488)) : 'freshtv490)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv495 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv491 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 173 "src/syntax/parser.mly"
        ( Atom.Mul )
# 5343 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5348 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv492)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv493 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv494)) : 'freshtv496)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv501 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv497 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 171 "src/syntax/parser.mly"
       ( Atom.Add )
# 5376 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5381 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv498)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv499 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv500)) : 'freshtv502)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv507 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv503 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 181 "src/syntax/parser.mly"
            ( Atom.Or )
# 5427 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5432 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv504)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv505 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv506)) : 'freshtv508)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv513 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv509 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 179 "src/syntax/parser.mly"
      ( Atom.Neq )
# 5464 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5469 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv510)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv511 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv512)) : 'freshtv514)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv519 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv515 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 172 "src/syntax/parser.mly"
        ( Atom.Sub )
# 5497 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5502 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv516)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv517 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv518)) : 'freshtv520)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv525 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv521 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 174 "src/syntax/parser.mly"
     ( Atom.Lt )
# 5534 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5539 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv522)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv523 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv524)) : 'freshtv526)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv531 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv527 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 175 "src/syntax/parser.mly"
     ( Atom.Le )
# 5571 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5576 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv528)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv529 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv530)) : 'freshtv532)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv537 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv533 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 180 "src/syntax/parser.mly"
       ( Atom.And )
# 5620 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5625 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv534)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv535 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv536)) : 'freshtv538)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv543 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv539 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 176 "src/syntax/parser.mly"
     ( Atom.Gt )
# 5657 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5662 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv540)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv541 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv542)) : 'freshtv544)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv549 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv545 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 177 "src/syntax/parser.mly"
     ( Atom.Ge )
# 5694 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5699 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv546)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv547 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv548)) : 'freshtv550)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv555 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv551 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 178 "src/syntax/parser.mly"
     ( Atom.Eq )
# 5731 "src/syntax/parser.ml"
             in
            
# 151 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5736 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv552)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv553 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv554)) : 'freshtv556)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv563 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5751 "src/syntax/parser.ml"
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
            let (_menhir_stack : (('freshtv559 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5783 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv557 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5790 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 5795 "src/syntax/parser.ml"
            ))), _, (a : 'tv_atom)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_prim_atom_ = 
# 154 "src/syntax/parser.mly"
                                ( mk_array_get x a )
# 5802 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv558)) : 'freshtv560)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv561 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5814 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv562)) : 'freshtv564)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv573 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv565 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv566)
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
            let (_menhir_stack : ('freshtv569 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv567 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_atom = 
# 168 "src/syntax/parser.mly"
                         ( a )
# 5878 "src/syntax/parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv568)) : 'freshtv570)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv571 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv572)) : 'freshtv574)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv579 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv575 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 153 "src/syntax/parser.mly"
                                ( mk_unop Atom.Uminus a )
# 5906 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv576)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv577 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv578)) : 'freshtv580)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv585 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv581 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = 
# 152 "src/syntax/parser.mly"
                                ( mk_unop Atom.Not a  )
# 5932 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv582)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv583 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv584)) : 'freshtv586)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv591 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv587 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_automaton_csm = 
# 88 "src/syntax/parser.mly"
                ( CSM.Return a )
# 5980 "src/syntax/parser.ml"
             in
            _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv588)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv589 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv590)) : 'freshtv592)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv599 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 5995 "src/syntax/parser.ml"
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
            let (_menhir_stack : (('freshtv595 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6027 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv593 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6034 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 6039 "src/syntax/parser.ml"
            ))), _, (a : 'tv_atom)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_lvalue_atom_ = 
# 191 "src/syntax/parser.mly"
                                 ( (x,Some a) )
# 6046 "src/syntax/parser.ml"
             in
            _menhir_goto_lvalue_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv594)) : 'freshtv596)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv597 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6058 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv598)) : 'freshtv600)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv605 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv601 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv602)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv603 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv604)) : 'freshtv606)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv611 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : (('freshtv607 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)), _, (a : 'tv_atom)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_inst_atom_ = 
# 184 "src/syntax/parser.mly"
                          ( Inst.Assign [ (x,a) ] )
# 6155 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv608)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv609 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv610)) : 'freshtv612)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv617 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv613 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv614)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv615 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv616)) : 'freshtv618)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv623 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv619 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166) : 'freshtv620)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv621 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv622)) : 'freshtv624)
    | MenhirState314 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv629 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
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
            let (_menhir_stack : ('freshtv625 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState316 _v
            | LET ->
                _menhir_run307 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | LPAREN ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState316
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState316) : 'freshtv626)
        | TIMES ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv627 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv628)) : 'freshtv630)
    | _ ->
        _menhir_fail ()

and _menhir_goto_const_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_const_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv481) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_const_atom_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv479) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : 'tv_const_atom_) : 'tv_const_atom_) = _v in
    ((let _v : 'tv_atom = 
# 166 "src/syntax/parser.mly"
                         ( mk_const c )
# 6336 "src/syntax/parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv480)) : 'freshtv482)

and _menhir_goto_loption_separated_nonempty_list_COMMA_exp_li__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_exp_li__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv477 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv473 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv471 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
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
# 6365 "src/syntax/parser.ml"
          
        in
        let xs = 
# 232 "<standard.mly>"
    ( xs )
# 6371 "src/syntax/parser.ml"
         in
        
# 187 "src/syntax/parser.mly"
  ( Inst.Assign (List.combine xs es) )
# 6376 "src/syntax/parser.ml"
         in
        _menhir_goto_inst_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)) : 'freshtv474)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv475 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv476)) : 'freshtv478)

and _menhir_goto_lvalue_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState186 | MenhirState187 | MenhirState188 | MenhirState292 | MenhirState284 | MenhirState275 | MenhirState272 | MenhirState266 | MenhirState196 | MenhirState262 | MenhirState260 | MenhirState198 | MenhirState256 | MenhirState253 | MenhirState200 | MenhirState203 | MenhirState247 | MenhirState206 | MenhirState240 | MenhirState238 | MenhirState236 | MenhirState234 | MenhirState232 | MenhirState230 | MenhirState228 | MenhirState226 | MenhirState224 | MenhirState222 | MenhirState217 | MenhirState214 | MenhirState212 | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run212 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv459 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv460)) : 'freshtv462)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run212 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run282 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce133 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv463 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv464)) : 'freshtv466)
    | MenhirState282 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv469 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run282 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce133 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv467 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv468)) : 'freshtv470)
    | _ ->
        _menhir_fail ()

and _menhir_goto_exp_li_without_paren : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_li_without_paren -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv457) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exp_li_without_paren) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv455) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : 'tv_exp_li_without_paren) : 'tv_exp_li_without_paren) = _v in
    ((let _v : 'tv_exp_li = 
# 107 "src/syntax/parser.mly"
                           ( e )
# 6458 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li _menhir_env _menhir_stack _menhir_s _v) : 'freshtv456)) : 'freshtv458)

and _menhir_goto_lvalue_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState75 | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv447 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv441 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75) : 'freshtv442)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv443 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 6491 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv444)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv445 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)) : 'freshtv448)
    | MenhirState338 | MenhirState306 | MenhirState329 | MenhirState322 | MenhirState316 | MenhirState166 | MenhirState141 | MenhirState0 | MenhirState125 | MenhirState122 | MenhirState116 | MenhirState95 | MenhirState111 | MenhirState108 | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv453 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv449 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv450)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv451 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv452)) : 'freshtv454)
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
        let (_menhir_stack : ((((('freshtv427 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv425 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_hsm)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_hsm = 
# 61 "src/syntax/parser.mly"
                                                      ( (g,s,a) )
# 6566 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_hsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | AND | IN ->
            _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171) : 'freshtv422)) : 'freshtv424)) : 'freshtv426)) : 'freshtv428)
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv431 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv429 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_psi_hsm_)), _, (a : 'tv_automaton_hsm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_hsm = 
# 55 "src/syntax/parser.mly"
                                                                     ( HSM.LetRec (bs,a) )
# 6598 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_hsm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)) : 'freshtv432)
    | MenhirState184 | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv439 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE_PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv433 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184) : 'freshtv434)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv435 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_hsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 6628 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv437 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv438)) : 'freshtv440)
    | _ ->
        _menhir_fail ()

and _menhir_reduce54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_hsm_ = 
# 211 "<standard.mly>"
    ( [] )
# 6646 "src/syntax/parser.ml"
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

and _menhir_reduce52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_efsm_ = 
# 211 "<standard.mly>"
    ( [] )
# 6684 "src/syntax/parser.ml"
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

and _menhir_reduce60 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 142 "<standard.mly>"
    ( [] )
# 6722 "src/syntax/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_IDENT__ = 
# 142 "<standard.mly>"
    ( [] )
# 6731 "src/syntax/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run89 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 6738 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6750 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv416)
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6766 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 6771 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_IDENT_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 6776 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6786 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv420)

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
# 6881 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 12 "src/syntax/parser.mly"
       (int)
# 6891 "src/syntax/parser.ml"
    )) : (
# 12 "src/syntax/parser.mly"
       (int)
# 6895 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_atom_ = 
# 148 "src/syntax/parser.mly"
                           ( mk_int n )
# 6900 "src/syntax/parser.ml"
     in
    _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 6907 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6919 "src/syntax/parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv408)
    | AND | COL | COMMA | EOF | EQ | GE | GT | HAT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RETURN | RPAREN | SEMICOL | THEN | TIMES ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6951 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 6956 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_atom = 
# 165 "src/syntax/parser.mly"
                         ( Atom.Var x )
# 6961 "src/syntax/parser.ml"
         in
        _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 6971 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv403 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "src/syntax/parser.mly"
       (string)
# 6988 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv399 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 6999 "src/syntax/parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv400)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv401 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 7033 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv405 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/syntax/parser.mly"
       (bool)
# 7048 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 11 "src/syntax/parser.mly"
       (bool)
# 7058 "src/syntax/parser.ml"
    )) : (
# 11 "src/syntax/parser.mly"
       (bool)
# 7062 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_atom_ = 
# 146 "src/syntax/parser.mly"
                           ( mk_bool b )
# 7067 "src/syntax/parser.ml"
     in
    _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)

and _menhir_run121 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7074 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7086 "src/syntax/parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv394)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7110 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)

and _menhir_goto_option_PIPE_ : _menhir_env -> 'ttv_tail -> 'tv_option_PIPE_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv391 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136) : 'freshtv392)

and _menhir_goto_std_logic : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_std_logic -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState318 | MenhirState314 | MenhirState164 | MenhirState139 | MenhirState105 | MenhirState101 | MenhirState96 | MenhirState80 | MenhirState70 | MenhirState1 | MenhirState4 | MenhirState5 | MenhirState6 | MenhirState9 | MenhirState44 | MenhirState42 | MenhirState40 | MenhirState38 | MenhirState36 | MenhirState34 | MenhirState32 | MenhirState30 | MenhirState28 | MenhirState26 | MenhirState24 | MenhirState20 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv385) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv383) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_const_atom_ = 
# 147 "src/syntax/parser.mly"
                           ( mk_std_logic v )
# 7145 "src/syntax/parser.ml"
         in
        _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv384)) : 'freshtv386)
    | MenhirState186 | MenhirState187 | MenhirState188 | MenhirState292 | MenhirState284 | MenhirState189 | MenhirState275 | MenhirState272 | MenhirState266 | MenhirState196 | MenhirState262 | MenhirState260 | MenhirState198 | MenhirState256 | MenhirState253 | MenhirState200 | MenhirState203 | MenhirState247 | MenhirState206 | MenhirState240 | MenhirState238 | MenhirState236 | MenhirState234 | MenhirState232 | MenhirState230 | MenhirState228 | MenhirState226 | MenhirState224 | MenhirState222 | MenhirState217 | MenhirState214 | MenhirState212 | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_const_exp_li_ = 
# 147 "src/syntax/parser.mly"
                           ( mk_std_logic v )
# 7160 "src/syntax/parser.ml"
         in
        _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)) : 'freshtv390)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv381 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv377 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv373 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv369 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BANG ->
                    _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState292
                | BOOL_LIT _v ->
                    _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState292 _v
                | CALL ->
                    _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState292
                | IDENT _v ->
                    _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState292 _v
                | IF ->
                    _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState292
                | INT_LIT _v ->
                    _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState292 _v
                | LET ->
                    _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState292
                | LPAREN ->
                    _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState292
                | MINUS ->
                    _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState292
                | NOT ->
                    _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState292
                | ONE ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState292
                | ZERO ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState292
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv367) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState292 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA_exp_li__ = 
# 142 "<standard.mly>"
    ( [] )
# 7223 "src/syntax/parser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_exp_li__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState292) : 'freshtv370)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv371 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)) : 'freshtv378)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv379 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)) : 'freshtv382)

and _menhir_run192 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7255 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv363 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7267 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | RPAREN ->
            _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState193) : 'freshtv364)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv365 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7287 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)

and _menhir_run271 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7295 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv359 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7307 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BANG ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | BOOL_LIT _v ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | CALL ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | IDENT _v ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState272) : 'freshtv360)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv361 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7347 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)

and _menhir_reduce32 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7355 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7361 "src/syntax/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_exp_li_without_paren = 
# 110 "src/syntax/parser.mly"
                           ( LI.Var x )
# 7366 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce70 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7373 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7379 "src/syntax/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_lvalue_exp_li_ = 
# 190 "src/syntax/parser.mly"
                                 ( (x,None) )
# 7384 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run200 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7391 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
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
        let (_menhir_stack : ('freshtv357 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7424 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState200 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv355 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7432 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7438 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : 'tv_exp_li_without_paren = 
# 125 "src/syntax/parser.mly"
                            ( LI.App(x,[]) )
# 7445 "src/syntax/parser.ml"
         in
        _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState200
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState200

and _menhir_goto_const_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_const_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv353) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_const_exp_li_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv351) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : 'tv_const_exp_li_) : 'tv_const_exp_li_) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 111 "src/syntax/parser.mly"
                            ( LI.Const c )
# 7468 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)) : 'freshtv354)

and _menhir_run202 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7475 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv347 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7487 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState203) : 'freshtv348)
    | LPAREN ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack)
    | COLONEQ ->
        _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack)
    | AND | COL | COMMA | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv349 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7533 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)

and _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv345 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv341 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv337 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv333 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___))) = Obj.magic _menhir_stack in
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
                    _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv334)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv335 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)) : 'freshtv338)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv339 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv343 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)

and _menhir_run69 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 7613 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
    | COLONEQ | COMMA | RPAREN ->
        _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7631 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)

and _menhir_reduce68 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7639 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7645 "src/syntax/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_lvalue_atom_ = 
# 190 "src/syntax/parser.mly"
                                 ( (x,None) )
# 7650 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_atom_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce143 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7657 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 10 "src/syntax/parser.mly"
       (string)
# 7663 "src/syntax/parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_state = 
# 143 "src/syntax/parser.mly"
          ( x )
# 7668 "src/syntax/parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv329) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_state) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState119 | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv285 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv281 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | RPAREN ->
                _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv283 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)) : 'freshtv286)
    | MenhirState0 | MenhirState125 | MenhirState122 | MenhirState116 | MenhirState95 | MenhirState111 | MenhirState108 | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv287 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
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
                _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv289 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | MenhirState151 | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv293 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | END | PIPE ->
                _menhir_reduce52 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv294)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv295 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv305 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv303 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (s : 'tv_inst_atom_)), _, (q : 'tv_state)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_efsm = 
# 46 "src/syntax/parser.mly"
                                              ( (g,s,q) )
# 7785 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv301) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_efsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | END | PIPE ->
            _menhir_reduce52 _menhir_env (Obj.magic _menhir_stack) MenhirState145
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145) : 'freshtv300)) : 'freshtv302)) : 'freshtv304)) : 'freshtv306)
    | MenhirState178 | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv311 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv307 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState163
            | AND | IN ->
                _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState163
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState163) : 'freshtv308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv309 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)
    | MenhirState184 | MenhirState159 | MenhirState175 | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _v : 'tv_automaton_hsm = 
# 54 "src/syntax/parser.mly"
          ( HSM.State q )
# 7841 "src/syntax/parser.ml"
         in
        _menhir_goto_automaton_hsm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv314)) : 'freshtv316)
    | MenhirState332 | MenhirState308 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv321 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv317 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState310 _v
            | RPAREN ->
                _menhir_reduce58 _menhir_env (Obj.magic _menhir_stack) MenhirState310
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState310) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv319 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | MenhirState338 | MenhirState306 | MenhirState329 | MenhirState322 | MenhirState316 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv327 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState318 _v
            | CALL ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState318
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState318 _v
            | INT_LIT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState318 _v
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState318
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState318
            | NOT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState318
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState318
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState318
            | RPAREN ->
                _menhir_reduce60 _menhir_env (Obj.magic _menhir_stack) MenhirState318
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState318) : 'freshtv324)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv325 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)) : 'freshtv328)
    | _ ->
        _menhir_fail ()) : 'freshtv330)

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 7920 "src/syntax/parser.ml"
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
        let (_menhir_stack : 'freshtv279 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv280)
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
        let (_menhir_stack : 'freshtv273) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271) = Obj.magic _menhir_stack in
        ((let x = () in
        let _v : 'tv_option_PIPE_ = 
# 116 "<standard.mly>"
    ( Some x )
# 8021 "src/syntax/parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv272)) : 'freshtv274)
    | IDENT _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_PIPE_ = 
# 114 "<standard.mly>"
    ( None )
# 8030 "src/syntax/parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv276)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)

and _menhir_run160 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161) : 'freshtv268)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "src/syntax/parser.mly"
       (string)
# 8070 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce143 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_std_logic = 
# 161 "src/syntax/parser.mly"
       ( Atom.Zero )
# 8087 "src/syntax/parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv263) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_std_logic = 
# 162 "src/syntax/parser.mly"
       ( Atom.One )
# 8101 "src/syntax/parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)

and _menhir_run187 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
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
        let (_menhir_stack : 'freshtv261) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState189 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ = 
# 142 "<standard.mly>"
    ( [] )
# 8212 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)
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
        _menhir_run271 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191) : 'freshtv260)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190

and _menhir_run197 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "src/syntax/parser.mly"
       (int)
# 8250 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 12 "src/syntax/parser.mly"
       (int)
# 8260 "src/syntax/parser.ml"
    )) : (
# 12 "src/syntax/parser.mly"
       (int)
# 8264 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_exp_li_ = 
# 148 "src/syntax/parser.mly"
                           ( mk_int n )
# 8269 "src/syntax/parser.ml"
     in
    _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)

and _menhir_run198 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
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
# 8311 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8323 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BANG ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | BOOL_LIT _v ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | CALL ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | IDENT _v ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | IF ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | INT_LIT _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | LET ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | LPAREN ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | MINUS ->
            _menhir_run188 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | NOT ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState256) : 'freshtv254)
    | LPAREN ->
        _menhir_run200 _menhir_env (Obj.magic _menhir_stack)
    | COLONEQ | COMMA ->
        _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack)
    | AND | COL | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8369 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)

and _menhir_run204 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "src/syntax/parser.mly"
       (string)
# 8386 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv245 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 8397 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState206) : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv247 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 8437 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv251 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)

and _menhir_run207 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/syntax/parser.mly"
       (bool)
# 8452 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv243) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 11 "src/syntax/parser.mly"
       (bool)
# 8462 "src/syntax/parser.ml"
    )) : (
# 11 "src/syntax/parser.mly"
       (bool)
# 8466 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_exp_li_ = 
# 146 "src/syntax/parser.mly"
                           ( mk_bool b )
# 8471 "src/syntax/parser.ml"
     in
    _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)

and _menhir_run208 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
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

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState338 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * 'tv_automaton_psm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState332 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * 'tv_psi_psm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState329 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv23 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState325 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState322 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState318 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState316 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv31 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState314 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState313 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv35 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState310 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState308 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState306 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv42)
    | MenhirState298 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState292 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv45 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState284 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8587 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState282 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState278 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_binding_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState275 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState272 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8611 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState269 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_fun_binding_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState266 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv59 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState262 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv61 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState260 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv63 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState256 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8640 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState253 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv67 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8649 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState247 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState240 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState238 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState236 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState234 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState232 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState230 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState228 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState226 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState224 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState217 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState214 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_inst_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState212 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState206 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv99 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 8733 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8742 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8751 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv107 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8765 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8774 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState190 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState188 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState186 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv122)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * 'tv_automaton_hsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state * 'tv_psi_hsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv127 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv131 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState163 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv142)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state * 'tv_automaton_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state * 'tv_psi_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv149 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv155 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv160)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state * 'tv_binding_csm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8915 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state * 'tv_psi_csm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv169 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv179 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv183 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 8969 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv193 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9003 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv203 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv207 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv229 * _menhir_state) * (
# 10 "src/syntax/parser.mly"
       (string)
# 9087 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9096 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv242)

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
# 9140 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run307 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState308) : 'freshtv14)
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
# 9177 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACKET ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
    | LPAREN ->
        _menhir_reduce143 _menhir_env (Obj.magic _menhir_stack)
    | COLONEQ ->
        _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 10 "src/syntax/parser.mly"
       (string)
# 9197 "src/syntax/parser.ml"
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
# 32 "src/syntax/parser.mly"
       (Ast.CSM.prog)
# 9217 "src/syntax/parser.ml"
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
# 29 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 9247 "src/syntax/parser.ml"
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
# 30 "src/syntax/parser.mly"
       (Ast.HSM.prog)
# 9271 "src/syntax/parser.ml"
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
# 33 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 9297 "src/syntax/parser.ml"
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
# 31 "src/syntax/parser.mly"
       (Ast.PSM.prog)
# 9343 "src/syntax/parser.ml"
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
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState306 _v
    | LET ->
        _menhir_run307 _menhir_env (Obj.magic _menhir_stack) MenhirState306
    | LPAREN ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState306
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState306) : 'freshtv2))

# 269 "<standard.mly>"
  

# 9371 "src/syntax/parser.ml"
