
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
# 25 "src/syntax/parser.mly"
       (string)
# 24 "src/syntax/parser.ml"
  )
    | PTR
    | PLUS
    | PIPE_PIPE
    | PIPE
    | PAR
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
# 48 "src/syntax/parser.ml"
  )
    | INT
    | IN
    | IF
    | IDENT of (
# 11 "src/syntax/parser.mly"
       (string)
# 56 "src/syntax/parser.ml"
  )
    | HAT
    | GT
    | GE
    | EQ
    | EOF
    | END
    | ELSE
    | DOT
    | DO
    | COMMA
    | COLONEQ
    | COL
    | CIRCUIT
    | CAP_IDENT of (
# 11 "src/syntax/parser.mly"
       (string)
# 74 "src/syntax/parser.ml"
  )
    | CALL
    | BOOL_LIT of (
# 12 "src/syntax/parser.mly"
       (bool)
# 80 "src/syntax/parser.ml"
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
  | MenhirState332
  | MenhirState327
  | MenhirState324
  | MenhirState321
  | MenhirState313
  | MenhirState307
  | MenhirState301
  | MenhirState297
  | MenhirState291
  | MenhirState288
  | MenhirState285
  | MenhirState282
  | MenhirState279
  | MenhirState276
  | MenhirState272
  | MenhirState270
  | MenhirState260
  | MenhirState258
  | MenhirState254
  | MenhirState250
  | MenhirState246
  | MenhirState243
  | MenhirState241
  | MenhirState239
  | MenhirState237
  | MenhirState235
  | MenhirState233
  | MenhirState231
  | MenhirState229
  | MenhirState227
  | MenhirState223
  | MenhirState221
  | MenhirState218
  | MenhirState213
  | MenhirState210
  | MenhirState208
  | MenhirState207
  | MenhirState205
  | MenhirState203
  | MenhirState199
  | MenhirState198
  | MenhirState196
  | MenhirState194
  | MenhirState193
  | MenhirState189
  | MenhirState187
  | MenhirState186
  | MenhirState185
  | MenhirState184
  | MenhirState183
  | MenhirState182
  | MenhirState181
  | MenhirState180
  | MenhirState179
  | MenhirState178
  | MenhirState170
  | MenhirState168
  | MenhirState165
  | MenhirState162
  | MenhirState159
  | MenhirState155
  | MenhirState150
  | MenhirState148
  | MenhirState146
  | MenhirState143
  | MenhirState139
  | MenhirState132
  | MenhirState130
  | MenhirState128
  | MenhirState125
  | MenhirState123
  | MenhirState122
  | MenhirState120
  | MenhirState119
  | MenhirState118
  | MenhirState117
  | MenhirState115
  | MenhirState109
  | MenhirState103
  | MenhirState100
  | MenhirState97
  | MenhirState92
  | MenhirState86
  | MenhirState83
  | MenhirState80
  | MenhirState79
  | MenhirState63
  | MenhirState60
  | MenhirState56
  | MenhirState53
  | MenhirState51
  | MenhirState49
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState35
  | MenhirState30
  | MenhirState27
  | MenhirState20
  | MenhirState18
  | MenhirState13
  | MenhirState12
  | MenhirState11
  | MenhirState8
  | MenhirState7
  | MenhirState3
  | MenhirState0

# 1 "src/syntax/parser.mly"
  
    open Ast
    open Types

# 220 "src/syntax/parser.ml"

let rec _menhir_run68 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1343 * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
    let _v : 'tv_ty = 
# 202 "src/syntax/parser.mly"
                                       ( TCamlRef ty )
# 231 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1344)

and _menhir_run69 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1341 * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
    let _v : 'tv_ty = 
# 204 "src/syntax/parser.mly"
                                       ( TCamlList ty )
# 244 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1342)

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1335 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INT_LIT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1331 * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
            let (_v : (
# 13 "src/syntax/parser.mly"
       (int)
# 265 "src/syntax/parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1327 * _menhir_state * 'tv_ty))) * (
# 13 "src/syntax/parser.mly"
       (int)
# 276 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1325 * _menhir_state * 'tv_ty))) * (
# 13 "src/syntax/parser.mly"
       (int)
# 283 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (ty : 'tv_ty)), (n : (
# 13 "src/syntax/parser.mly"
       (int)
# 288 "src/syntax/parser.ml"
                ))) = _menhir_stack in
                let _v : 'tv_ty = 
# 205 "src/syntax/parser.mly"
                                       ( TArray{ty;size=TSize n} )
# 293 "src/syntax/parser.ml"
                 in
                _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1326)) : 'freshtv1328)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1329 * _menhir_state * 'tv_ty))) * (
# 13 "src/syntax/parser.mly"
       (int)
# 303 "src/syntax/parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1330)) : 'freshtv1332)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1333 * _menhir_state * 'tv_ty))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1334)) : 'freshtv1336)
    | ARRAY | LIST | REF | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1337 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (ty : 'tv_ty)) = _menhir_stack in
        let _v : 'tv_ty = 
# 203 "src/syntax/parser.mly"
                                       ( TCamlArray ty )
# 321 "src/syntax/parser.ml"
         in
        _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1338)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1339 * _menhir_state * 'tv_ty)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1340)

and _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState182 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1319) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1317) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___ = 
# 144 "<standard.mly>"
    ( x )
# 347 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1315) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1313 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1309 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLONEQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1305 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv1301 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ARRAY_LENGTH ->
                        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | BANG ->
                        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | BOOL_LIT _v ->
                        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState307 _v
                    | CALL ->
                        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | IDENT _v ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState307 _v
                    | IF ->
                        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | INT_LIT _v ->
                        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState307 _v
                    | LBRACKET ->
                        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | LET ->
                        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | LIST_HD ->
                        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | LIST_TL ->
                        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | LPAREN ->
                        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | MINUS ->
                        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | NOT ->
                        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | ONE ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | RPAREN ->
                        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | WILDCARD ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | ZERO ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState307
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState307) : 'freshtv1302)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv1303 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1304)) : 'freshtv1306)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv1307 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1308)) : 'freshtv1310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1311 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1312)) : 'freshtv1314)) : 'freshtv1316)) : 'freshtv1318)) : 'freshtv1320)
    | MenhirState297 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1323 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1321 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 451 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1322)) : 'freshtv1324)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1295 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1291 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1289 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
            let _v : (
# 37 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 476 "src/syntax/parser.ml"
            ) = 
# 45 "src/syntax/parser.mly"
                                                          ( p )
# 480 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1287) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 37 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 488 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1285) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 37 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 496 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1283) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 37 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 504 "src/syntax/parser.ml"
            )) : (
# 37 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 508 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1284)) : 'freshtv1286)) : 'freshtv1288)) : 'freshtv1290)) : 'freshtv1292)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1293 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1294)) : 'freshtv1296)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1299 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1297 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 527 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1298)) : 'freshtv1300)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ty : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ty -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1265 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LIST ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1261 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1259 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (ty : 'tv_ty)) = _menhir_stack in
            let _v : 'tv_ty = 
# 197 "src/syntax/parser.mly"
                                       ( ty )
# 559 "src/syntax/parser.ml"
             in
            _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1260)) : 'freshtv1262)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1263 * _menhir_state) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1264)) : 'freshtv1266)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1273 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LIST ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1269 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1267 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_atom)), _, (t : 'tv_ty)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = 
# 158 "src/syntax/parser.mly"
                                ( mk_ty_annot e t )
# 591 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1268)) : 'freshtv1270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1271 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1272)) : 'freshtv1274)
    | MenhirState313 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1281 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack)
        | LIST ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1277 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1275 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)), _, (t : 'tv_ty)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = 
# 158 "src/syntax/parser.mly"
                                ( mk_ty_annot e t )
# 623 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1276)) : 'freshtv1278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1279 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_ty) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1280)) : 'freshtv1282)
    | _ ->
        _menhir_fail ()

and _menhir_reduce136 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)) = _menhir_stack in
    let _v : 'tv_separated_nonempty_list_COMMA_lvalue_exp_li__ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 642 "src/syntax/parser.ml"
     in
    _menhir_goto_separated_nonempty_list_COMMA_lvalue_exp_li__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run297 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _v
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState297
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState297

and _menhir_run203 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState203

and _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_psi_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1253 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1249 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1247 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (l : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
            let _v : 'tv_automaton_efsm = 
# 48 "src/syntax/parser.mly"
                                                               ( EFSM.Automaton l )
# 726 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1245) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_automaton_efsm) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1243 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PIPE_PIPE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1237 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AUTOMATON ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv1238)
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1239 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 757 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1240)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1241 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1242)) : 'freshtv1244)) : 'freshtv1246)) : 'freshtv1248)) : 'freshtv1250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1251 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1252)) : 'freshtv1254)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1257 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1255 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 783 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1256)) : 'freshtv1258)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_circuit_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_circuit_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState321 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1231 * _menhir_state * 'tv_nonempty_list_circuit_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | QUOTE _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1227 * _menhir_state * 'tv_nonempty_list_circuit_) = Obj.magic _menhir_stack in
            let (_v : (
# 25 "src/syntax/parser.mly"
       (string)
# 805 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1225 * _menhir_state * 'tv_nonempty_list_circuit_) = Obj.magic _menhir_stack in
            let ((s : (
# 25 "src/syntax/parser.mly"
       (string)
# 812 "src/syntax/parser.ml"
            )) : (
# 25 "src/syntax/parser.mly"
       (string)
# 816 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_stack, _menhir_s, (fs : 'tv_nonempty_list_circuit_)) = _menhir_stack in
            let _v : (
# 40 "src/syntax/parser.mly"
       (Ast.PLATFORM.prog)
# 822 "src/syntax/parser.ml"
            ) = 
# 215 "src/syntax/parser.mly"
                     ( (fs,s))
# 826 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1223) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 40 "src/syntax/parser.mly"
       (Ast.PLATFORM.prog)
# 834 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1221) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 40 "src/syntax/parser.mly"
       (Ast.PLATFORM.prog)
# 842 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1219) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 40 "src/syntax/parser.mly"
       (Ast.PLATFORM.prog)
# 850 "src/syntax/parser.ml"
            )) : (
# 40 "src/syntax/parser.mly"
       (Ast.PLATFORM.prog)
# 854 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1220)) : 'freshtv1222)) : 'freshtv1224)) : 'freshtv1226)) : 'freshtv1228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1229 * _menhir_state * 'tv_nonempty_list_circuit_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1230)) : 'freshtv1232)
    | MenhirState332 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1235 * _menhir_state * 'tv_circuit) * _menhir_state * 'tv_nonempty_list_circuit_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1233 * _menhir_state * 'tv_circuit) * _menhir_state * 'tv_nonempty_list_circuit_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_circuit)), _, (xs : 'tv_nonempty_list_circuit_)) = _menhir_stack in
        let _v : 'tv_nonempty_list_circuit_ = 
# 223 "<standard.mly>"
    ( x :: xs )
# 873 "src/syntax/parser.ml"
         in
        _menhir_goto_nonempty_list_circuit_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1234)) : 'freshtv1236)
    | _ ->
        _menhir_fail ()

and _menhir_run61 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1217) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_ty = 
# 198 "src/syntax/parser.mly"
                                       ( TStd_logic )
# 888 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1218)

and _menhir_run62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1215) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_ty = 
# 201 "src/syntax/parser.mly"
                                       ( TPtr )
# 901 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1216)

and _menhir_run63 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | INT ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LPAREN ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | PTR ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | STD_LOGIC ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63

and _menhir_run64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1213) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_ty = 
# 199 "src/syntax/parser.mly"
                                       ( TInt )
# 935 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1214)

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1211) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_ty = 
# 200 "src/syntax/parser.mly"
                                       ( TBool )
# 948 "src/syntax/parser.ml"
     in
    _menhir_goto_ty _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1212)

and _menhir_goto_separated_nonempty_list_AND_binding_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState186 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1205 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1201 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | BANG ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | BOOL_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState285 _v
            | CALL ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState285 _v
            | IF ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | INT_LIT _v ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState285 _v
            | LBRACKET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | LET ->
                _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | LIST_HD ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | LIST_TL ->
                _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | LPAREN ->
                _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | MINUS ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | NOT ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | RPAREN ->
                _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState285
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState285) : 'freshtv1202)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1203 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1204)) : 'freshtv1206)
    | MenhirState291 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1209 * _menhir_state * 'tv_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1207 * _menhir_state * 'tv_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_li)), _, (xs : 'tv_separated_nonempty_list_AND_binding_li_)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_AND_binding_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1024 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1208)) : 'freshtv1210)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_fun_binding_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1195 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1191 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | BANG ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | BOOL_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _v
            | CALL ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _v
            | IF ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | INT_LIT _v ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _v
            | LBRACKET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | LET ->
                _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | LIST_HD ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | LIST_TL ->
                _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | LPAREN ->
                _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | MINUS ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | NOT ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | RPAREN ->
                _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState189
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState189) : 'freshtv1192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1193 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1194)) : 'freshtv1196)
    | MenhirState282 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1199 * _menhir_state * 'tv_fun_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1197 * _menhir_state * 'tv_fun_binding_li)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_fun_binding_li)), _, (xs : 'tv_separated_nonempty_list_AND_fun_binding_li_)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_AND_fun_binding_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1102 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1198)) : 'freshtv1200)
    | _ ->
        _menhir_fail ()

and _menhir_goto_inst_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_inst_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1189 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1185 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | BANG ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | BOOL_LIT _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | CALL ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | IF ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | INT_LIT _v ->
            _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | LBRACKET ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | LET ->
            _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | LIST_HD ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | LIST_TL ->
            _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | LPAREN ->
            _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | MINUS ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | NOT ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | ONE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | RPAREN ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | WILDCARD ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | ZERO ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState205
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState205) : 'freshtv1186)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1187 * _menhir_state * 'tv_inst_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1188)) : 'freshtv1190)

and _menhir_goto_separated_nonempty_list_COMMA_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState254 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1157 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1153 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1151 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (e1 : 'tv_exp_li)), _, (es : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
            let _v : 'tv_exp_li_without_paren = 
# 106 "src/syntax/parser.mly"
                            ( LI.App(x,e1::es) )
# 1190 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1152)) : 'freshtv1154)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1155 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1156)) : 'freshtv1158)
    | MenhirState258 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1161 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1159 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_exp_li)), _, (xs : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_exp_li_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1209 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1160)) : 'freshtv1162)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1169 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1165 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1163 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (x : 'tv_ident)), _, (args : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = 
# 161 "src/syntax/parser.mly"
                                ( mk_call x args )
# 1228 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1164)) : 'freshtv1166)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1167 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1168)) : 'freshtv1170)
    | MenhirState307 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1183 * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1181 * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_li_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_separated_nonempty_list_COMMA_exp_li_)) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_exp_li__ = 
# 144 "<standard.mly>"
    ( x )
# 1247 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1179) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1177 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1173 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1171 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)), _, (xs_inlined1 : 'tv_loption_separated_nonempty_list_COMMA_exp_li__)) = _menhir_stack in
            let _v : 'tv_inst_exp_li_ = let es =
              let xs = xs_inlined1 in
              
# 232 "<standard.mly>"
    ( xs )
# 1271 "src/syntax/parser.ml"
              
            in
            let xs = 
# 232 "<standard.mly>"
    ( xs )
# 1277 "src/syntax/parser.ml"
             in
            
# 190 "src/syntax/parser.mly"
  ( Inst.Assign (List.combine xs es) )
# 1282 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1172)) : 'freshtv1174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1175 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_exp_li__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1176)) : 'freshtv1178)) : 'freshtv1180)) : 'freshtv1182)) : 'freshtv1184)
    | _ ->
        _menhir_fail ()

and _menhir_goto_caml_prim : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_caml_prim -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1149) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_caml_prim) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1147) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : 'tv_caml_prim) : 'tv_caml_prim) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 113 "src/syntax/parser.mly"
                            ( LI.CamlPrim e )
# 1308 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1148)) : 'freshtv1150)

and _menhir_goto_prim_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prim_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1145) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_prim_exp_li_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1143) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_prim_exp_li_) : 'tv_prim_exp_li_) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 96 "src/syntax/parser.mly"
                           ( LI.Prim p )
# 1325 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1144)) : 'freshtv1146)

and _menhir_run213 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState213

and _menhir_reduce77 : _menhir_env -> ((('ttv_tail * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_exp_li)) = _menhir_stack in
    let _v : 'tv_lvalue_exp_li_ = 
# 194 "src/syntax/parser.mly"
                                 ( (x,Some a) )
# 1381 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce117 : _menhir_env -> ((('ttv_tail * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_exp_li)) = _menhir_stack in
    let _v : 'tv_prim_exp_li_ = 
# 156 "src/syntax/parser.mly"
                                ( mk_array_get x a )
# 1391 "src/syntax/parser.ml"
     in
    _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run223 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState223
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState223

and _menhir_run227 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState227

and _menhir_run229 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState229
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
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState231
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
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState233
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
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState235
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
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState237
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState237

and _menhir_run215 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT_LIT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1139 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        let (_v : (
# 13 "src/syntax/parser.mly"
       (int)
# 1728 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1137 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        let ((n : (
# 13 "src/syntax/parser.mly"
       (int)
# 1736 "src/syntax/parser.ml"
        )) : (
# 13 "src/syntax/parser.mly"
       (int)
# 1740 "src/syntax/parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_exp_li)) = _menhir_stack in
        let _v : 'tv_prim_exp_li_ = 
# 157 "src/syntax/parser.mly"
                                ( mk_array_make n e )
# 1746 "src/syntax/parser.ml"
         in
        _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1138)) : 'freshtv1140)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1141 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1142)

and _menhir_run239 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState239

and _menhir_run241 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState241
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
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState243

and _menhir_run217 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1133 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | BANG ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | BOOL_LIT _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
        | CALL ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
        | IF ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | INT_LIT _v ->
            _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
        | LBRACKET ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | LET ->
            _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | LIST_HD ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | LIST_TL ->
            _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | LPAREN ->
            _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | MINUS ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | NOT ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | ONE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | RPAREN ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | WILDCARD ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | ZERO ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState218) : 'freshtv1134)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1135 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1136)

and _menhir_goto_separated_nonempty_list_PIPE_b_fcf_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_b_fcf_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1127 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_PIPE_b_fcf_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1123 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_PIPE_b_fcf_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1119 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_PIPE_b_fcf_)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL_LIT _v ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
                | CALL ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | CAP_IDENT _v ->
                    _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
                | DO ->
                    _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | IDENT _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
                | IF ->
                    _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | INT_LIT _v ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
                | LBRACKET ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | LET ->
                    _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | LPAREN ->
                    _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | MINUS ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | NOT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | ONE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | WILDCARD ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | ZERO ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState159
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv1120)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1121 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_PIPE_b_fcf_)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1122)) : 'freshtv1124)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1125 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_PIPE_b_fcf_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1126)) : 'freshtv1128)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1131 * _menhir_state * 'tv_b_fcf)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_b_fcf_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1129 * _menhir_state * 'tv_b_fcf)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_b_fcf_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_b_fcf)), _, (xs : 'tv_separated_nonempty_list_PIPE_b_fcf_)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_PIPE_b_fcf_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2033 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_b_fcf_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1130)) : 'freshtv1132)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_binding_fcf_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_fcf_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1113 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_fcf_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1109 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_fcf_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | CALL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | CAP_IDENT _v ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | DO ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | IF ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | INT_LIT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | LBRACKET ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | LET ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | LPAREN ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | MINUS ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | NOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv1110)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1111 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_fcf_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1112)) : 'freshtv1114)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1117 * _menhir_state * 'tv_binding_fcf)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_fcf_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1115 * _menhir_state * 'tv_binding_fcf)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_fcf_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_fcf)), _, (xs : 'tv_separated_nonempty_list_AND_binding_fcf_)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_AND_binding_fcf_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2105 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_fcf_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1116)) : 'freshtv1118)
    | _ ->
        _menhir_fail ()

and _menhir_goto_lvalue_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState327 | MenhirState178 | MenhirState179 | MenhirState180 | MenhirState181 | MenhirState307 | MenhirState301 | MenhirState183 | MenhirState184 | MenhirState185 | MenhirState288 | MenhirState285 | MenhirState279 | MenhirState189 | MenhirState272 | MenhirState270 | MenhirState193 | MenhirState196 | MenhirState198 | MenhirState260 | MenhirState258 | MenhirState254 | MenhirState207 | MenhirState250 | MenhirState246 | MenhirState243 | MenhirState241 | MenhirState239 | MenhirState237 | MenhirState235 | MenhirState233 | MenhirState231 | MenhirState229 | MenhirState227 | MenhirState223 | MenhirState221 | MenhirState218 | MenhirState213 | MenhirState210 | MenhirState208 | MenhirState205 | MenhirState203 | MenhirState199 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1099 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run203 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1097 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1098)) : 'freshtv1100)
    | MenhirState182 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1103 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run203 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_run297 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce136 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1101 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1102)) : 'freshtv1104)
    | MenhirState297 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1107 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run297 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce136 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1105 * _menhir_state * 'tv_lvalue_exp_li_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1106)) : 'freshtv1108)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1081 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1079 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_efsm)) = _menhir_stack in
        let _v : 'tv_list_transition_efsm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 2185 "src/syntax/parser.ml"
         in
        _menhir_goto_list_transition_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1080)) : 'freshtv1082)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1095 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1093 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _v : 'tv_psi_efsm = 
# 51 "src/syntax/parser.mly"
                                          ( (q,ts) )
# 2201 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1091) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_efsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1089 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1083 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv1084)
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1085 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2234 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1086)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1087 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1088)) : 'freshtv1090)) : 'freshtv1092)) : 'freshtv1094)) : 'freshtv1096)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_lvalue_atom__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1073) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1071) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ = 
# 144 "<standard.mly>"
    ( x )
# 2262 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1072)) : 'freshtv1074)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1077 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1075 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) : 'tv_separated_nonempty_list_COMMA_lvalue_atom__) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2278 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1076)) : 'freshtv1078)
    | _ ->
        _menhir_fail ()

and _menhir_goto_inst_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_inst_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((('freshtv1069 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1065 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | WILDCARD ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv1066)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1067 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1068)) : 'freshtv1070)

and _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1063 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1059 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1055 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1051 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL_LIT _v ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
                | CALL ->
                    _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | IDENT _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
                | INT_LIT _v ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
                | LBRACKET ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | LPAREN ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | MINUS ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | NOT ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | ONE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | WILDCARD ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | ZERO ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | RPAREN ->
                    _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState92
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv1052)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1053 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1054)) : 'freshtv1056)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1057 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1058)) : 'freshtv1060)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1061 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1062)) : 'freshtv1064)

and _menhir_run59 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1049 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
    ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
    let _v : 'tv_atom = 
# 171 "src/syntax/parser.mly"
                         ( a )
# 2399 "src/syntax/parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1050)

and _menhir_run60 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | INT ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LPAREN ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | PTR ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | STD_LOGIC ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_goto_separated_nonempty_list_COMMA_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1039 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1035 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1033 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (x : 'tv_ident)), _, (args : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = 
# 161 "src/syntax/parser.mly"
                                ( mk_call x args )
# 2443 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1034)) : 'freshtv1036)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1037 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1038)) : 'freshtv1040)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1043 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1041 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_atom)), _, (xs : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2462 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1042)) : 'freshtv1044)
    | MenhirState132 | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1047 * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1045 * _menhir_state * 'tv_separated_nonempty_list_COMMA_atom_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_separated_nonempty_list_COMMA_atom_)) = _menhir_stack in
        let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 144 "<standard.mly>"
    ( x )
# 2474 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1046)) : 'freshtv1048)
    | _ ->
        _menhir_fail ()

and _menhir_run30 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

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
# 2525 "src/syntax/parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1030)) : 'freshtv1032)

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run32 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT_LIT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1025 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let (_v : (
# 13 "src/syntax/parser.mly"
       (int)
# 2764 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1023 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let ((n : (
# 13 "src/syntax/parser.mly"
       (int)
# 2772 "src/syntax/parser.ml"
        )) : (
# 13 "src/syntax/parser.mly"
       (int)
# 2776 "src/syntax/parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_atom)) = _menhir_stack in
        let _v : 'tv_prim_atom_ = 
# 157 "src/syntax/parser.mly"
                                ( mk_array_make n e )
# 2782 "src/syntax/parser.ml"
         in
        _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1024)) : 'freshtv1026)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1027 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1028)

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run51 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_goto_exp_li : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_li -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState210 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv737 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv733 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND | CIRCUIT | COL | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                _menhir_reduce117 _menhir_env (Obj.magic _menhir_stack)
            | COLONEQ | COMMA ->
                _menhir_reduce77 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv731 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv732)) : 'freshtv734)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv735 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv736)) : 'freshtv738)
    | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv743 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv739 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = let c = 
# 176 "src/syntax/parser.mly"
        ( Atom.Mul )
# 2966 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 2971 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv740)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv741 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv742)) : 'freshtv744)
    | MenhirState218 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv755 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv751 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LEFT_ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv745 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ARRAY_LENGTH ->
                    _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | BANG ->
                    _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | BOOL_LIT _v ->
                    _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
                | CALL ->
                    _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | IDENT _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
                | IF ->
                    _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | INT_LIT _v ->
                    _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
                | LBRACKET ->
                    _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | LET ->
                    _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | LIST_HD ->
                    _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | LIST_TL ->
                    _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | LPAREN ->
                    _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | MINUS ->
                    _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | NOT ->
                    _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | ONE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | RPAREN ->
                    _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | WILDCARD ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | ZERO ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState221
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState221) : 'freshtv746)
            | AND | CIRCUIT | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv747 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (arr : 'tv_exp_li)), _, (idx : 'tv_exp_li)) = _menhir_stack in
                let _v : 'tv_caml_prim = 
# 121 "src/syntax/parser.mly"
                            ( LI.ArrayAccess{arr;idx} )
# 3070 "src/syntax/parser.ml"
                 in
                _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv748)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv749 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv750)) : 'freshtv752)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv753 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv754)) : 'freshtv756)
    | MenhirState221 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv761 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv757 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (arr : 'tv_exp_li)), _, (idx : 'tv_exp_li)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_caml_prim = 
# 125 "src/syntax/parser.mly"
                            ( LI.ArrayAssign{arr;idx;e} )
# 3128 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv758)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv759 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv760)) : 'freshtv762)
    | MenhirState223 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv767 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv763 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = let c = 
# 174 "src/syntax/parser.mly"
       ( Atom.Add )
# 3157 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3162 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv764)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv765 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv766)) : 'freshtv768)
    | MenhirState227 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv773 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv769 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = let c = 
# 184 "src/syntax/parser.mly"
            ( Atom.Or )
# 3209 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3214 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv770)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv771 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv772)) : 'freshtv774)
    | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv779 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv775 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = let c = 
# 182 "src/syntax/parser.mly"
      ( Atom.Neq )
# 3247 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3252 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv776)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv777 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv778)) : 'freshtv780)
    | MenhirState231 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv785 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv781 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = let c = 
# 175 "src/syntax/parser.mly"
        ( Atom.Sub )
# 3281 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3286 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv782)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv783 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv784)) : 'freshtv786)
    | MenhirState233 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv791 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv787 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = let c = 
# 177 "src/syntax/parser.mly"
     ( Atom.Lt )
# 3319 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3324 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv788)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv789 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv790)) : 'freshtv792)
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv797 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv793 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = let c = 
# 178 "src/syntax/parser.mly"
     ( Atom.Le )
# 3357 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3362 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv794)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv795 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv796)) : 'freshtv798)
    | MenhirState237 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv803 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LAND | LPAREN | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv799 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = let c = 
# 183 "src/syntax/parser.mly"
       ( Atom.And )
# 3407 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3412 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv800)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv801 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv802)) : 'freshtv804)
    | MenhirState239 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv809 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv805 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = let c = 
# 179 "src/syntax/parser.mly"
     ( Atom.Gt )
# 3445 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3450 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv806)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv807 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv808)) : 'freshtv810)
    | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv815 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv811 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = let c = 
# 180 "src/syntax/parser.mly"
     ( Atom.Ge )
# 3483 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3488 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv812)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv813 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv814)) : 'freshtv816)
    | MenhirState243 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv821 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | NEQ | PIPE_PIPE | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv817 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_li)), _, (a2 : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = let c = 
# 181 "src/syntax/parser.mly"
     ( Atom.Eq )
# 3521 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 3526 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv818)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv819 * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv820)) : 'freshtv822)
    | MenhirState246 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv827 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv823 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_caml_prim = 
# 119 "src/syntax/parser.mly"
                            ( LI.RefAssign{r=Var x;e} )
# 3575 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv824)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv825 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv826)) : 'freshtv828)
    | MenhirState179 | MenhirState183 | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv837 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv833 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLONEQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv829 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ARRAY_LENGTH ->
                    _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | BANG ->
                    _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | BOOL_LIT _v ->
                    _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
                | CALL ->
                    _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | IDENT _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
                | IF ->
                    _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | INT_LIT _v ->
                    _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
                | LBRACKET ->
                    _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | LET ->
                    _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | LIST_HD ->
                    _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | LIST_TL ->
                    _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | LPAREN ->
                    _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | MINUS ->
                    _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | NOT ->
                    _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | ONE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | RPAREN ->
                    _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | WILDCARD ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | ZERO ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState250
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState250) : 'freshtv830)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv831 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv832)) : 'freshtv834)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv835 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv836)) : 'freshtv838)
    | MenhirState250 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv843 * _menhir_state) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv839 * _menhir_state) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (r : 'tv_exp_li)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_caml_prim = 
# 118 "src/syntax/parser.mly"
                            ( LI.RefAssign{r;e} )
# 3722 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv840)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv841 * _menhir_state) * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv842)) : 'freshtv844)
    | MenhirState207 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv853 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv845 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | BANG ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | BOOL_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState254 _v
            | CALL ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState254 _v
            | IF ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | INT_LIT _v ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState254 _v
            | LBRACKET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | LET ->
                _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | LIST_HD ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | LIST_TL ->
                _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | LPAREN ->
                _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | MINUS ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | NOT ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | RPAREN ->
                _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState254) : 'freshtv846)
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv849 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv847 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_exp_li_without_paren = 
# 108 "src/syntax/parser.mly"
                            ( LI.App(x,[e]) )
# 3818 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv848)) : 'freshtv850)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv851 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv852)) : 'freshtv854)
    | MenhirState307 | MenhirState196 | MenhirState258 | MenhirState254 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv861 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv855 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | BANG ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | BOOL_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
            | CALL ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
            | IF ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | INT_LIT _v ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
            | LBRACKET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | LET ->
                _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | LIST_HD ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | LIST_TL ->
                _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | LPAREN ->
                _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | MINUS ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | NOT ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | RPAREN ->
                _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState258) : 'freshtv856)
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv857 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_exp_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3915 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv858)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv859 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv860)) : 'freshtv862)
    | MenhirState260 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv869 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv865 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND | CIRCUIT | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
                _menhir_reduce117 _menhir_env (Obj.magic _menhir_stack)
            | COLONEQ ->
                _menhir_reduce77 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv863 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv864)) : 'freshtv866)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv867 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv868)) : 'freshtv870)
    | MenhirState205 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv875 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv871 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_exp_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_exp_li_without_paren = 
# 99 "src/syntax/parser.mly"
                                   ( LI.Seq(s,e) )
# 4020 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv872)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv873 * _menhir_state * 'tv_inst_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv874)) : 'freshtv876)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv881 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv877 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_lvalue_exp_li_)), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_inst_exp_li_ = 
# 187 "src/syntax/parser.mly"
                          ( Inst.Assign [ (x,a) ] )
# 4069 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv878)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv879 * _menhir_state * 'tv_lvalue_exp_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv880)) : 'freshtv882)
    | MenhirState199 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv887 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv883 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_caml_prim = 
# 126 "src/syntax/parser.mly"
                            ( LI.ArrayLength e )
# 4096 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv884)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv885 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv886)) : 'freshtv888)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv893 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv889 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_caml_prim = 
# 116 "src/syntax/parser.mly"
                            ( LI.RefAccess e )
# 4123 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv890)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv891 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv892)) : 'freshtv894)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv899 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv895 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | BANG ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | BOOL_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
            | CALL ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
            | IF ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | INT_LIT _v ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
            | LBRACKET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | LET ->
                _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | LIST_HD ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | LIST_TL ->
                _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | LPAREN ->
                _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | MINUS ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | NOT ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | RPAREN ->
                _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState270
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState270) : 'freshtv896)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv897 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv898)) : 'freshtv900)
    | MenhirState270 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv905 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv901 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | BANG ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | BOOL_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | CALL ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | IF ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | INT_LIT _v ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | LBRACKET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | LET ->
                _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | LIST_HD ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | LIST_TL ->
                _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | LPAREN ->
                _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | MINUS ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | NOT ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | RPAREN ->
                _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState272) : 'freshtv902)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv903 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv904)) : 'freshtv906)
    | MenhirState272 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv911 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv907 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_exp_li)), _, (e2 : 'tv_exp_li)), _, (e3 : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_exp_li_without_paren = 
# 112 "src/syntax/parser.mly"
                            ( LI.If(e1,e2,e3) )
# 4342 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv908)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv909 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv910)) : 'freshtv912)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv917 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv913 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_fun_binding_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_exp_li_without_paren = 
# 103 "src/syntax/parser.mly"
                           ( LI.LetRec (bs,e) )
# 4391 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv914)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv915 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv916)) : 'freshtv918)
    | MenhirState279 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv933 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv929 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (f : 'tv_ident)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_ident__)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_fun_binding_li = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 4440 "src/syntax/parser.ml"
             in
            
# 137 "src/syntax/parser.mly"
                                                                   ( (f,xs,e) )
# 4445 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv927) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_fun_binding_li) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv925 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv919 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _v
                | WILDCARD ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState282
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState282) : 'freshtv920)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv921 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_fun_binding_li)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_fun_binding_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4478 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_fun_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv922)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv923 * _menhir_state * 'tv_fun_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv924)) : 'freshtv926)) : 'freshtv928)) : 'freshtv930)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv931 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv932)) : 'freshtv934)
    | MenhirState285 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv939 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | IN | LPAREN | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv935 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_binding_li_)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_exp_li_without_paren = 
# 101 "src/syntax/parser.mly"
                           ( LI.Let (bs,e) )
# 4534 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv936)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv937 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv938)) : 'freshtv940)
    | MenhirState288 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv955 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | AND | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv951 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_binding_li = 
# 134 "src/syntax/parser.mly"
                           ( (x,e) )
# 4583 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv949) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_binding_li) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv947 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv941 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState291 _v
                | WILDCARD ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState291
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState291) : 'freshtv942)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv943 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_li)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_binding_li_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4616 "src/syntax/parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_binding_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv944)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv945 * _menhir_state * 'tv_binding_li) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv946)) : 'freshtv948)) : 'freshtv950)) : 'freshtv952)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv953 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv954)) : 'freshtv956)
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv961 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv957 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_caml_prim = 
# 127 "src/syntax/parser.mly"
                            ( LI.ListHd e )
# 4650 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv958)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv959 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv960)) : 'freshtv962)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv967 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv963 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_caml_prim = 
# 128 "src/syntax/parser.mly"
                            ( LI.ListTl e )
# 4677 "src/syntax/parser.ml"
             in
            _menhir_goto_caml_prim _menhir_env _menhir_stack _menhir_s _v) : 'freshtv964)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv965 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv966)) : 'freshtv968)
    | MenhirState301 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv973 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv969 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce77 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv970)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv971 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv972)) : 'freshtv974)
    | MenhirState182 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv983 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv975 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState313
            | INT ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState313
            | LPAREN ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState313
            | PTR ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState313
            | STD_LOGIC ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState313
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState313) : 'freshtv976)
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv979 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv977 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_exp_li = 
# 90 "src/syntax/parser.mly"
                           ( e )
# 4791 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li _menhir_env _menhir_stack _menhir_s _v) : 'freshtv978)) : 'freshtv980)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv981 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv982)) : 'freshtv984)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv989 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv985 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = 
# 155 "src/syntax/parser.mly"
                                ( mk_unop Atom.Uminus a )
# 4820 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv986)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv987 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv988)) : 'freshtv990)
    | MenhirState180 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv995 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv991 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_prim_exp_li_ = 
# 154 "src/syntax/parser.mly"
                                ( mk_unop Atom.Not a  )
# 4847 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv992)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv993 * _menhir_state) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv994)) : 'freshtv996)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1009 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1005 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1003 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : (
# 39 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4874 "src/syntax/parser.ml"
            ) = 
# 87 "src/syntax/parser.mly"
               ( e )
# 4878 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1001) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 39 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4886 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv999) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 39 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4894 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv997) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 39 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4902 "src/syntax/parser.ml"
            )) : (
# 39 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 4906 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv998)) : 'freshtv1000)) : 'freshtv1002)) : 'freshtv1004)) : 'freshtv1006)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1007 * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1008)) : 'freshtv1010)
    | MenhirState327 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv1021 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 4945 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run237 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run223 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack)
        | CIRCUIT | QUOTE _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv1017 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 4981 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), (x : (
# 11 "src/syntax/parser.mly"
       (string)
# 4986 "src/syntax/parser.ml"
            ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_ident__)), _, (e : 'tv_exp_li)) = _menhir_stack in
            let _v : 'tv_circuit = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 4991 "src/syntax/parser.ml"
             in
            
# 221 "src/syntax/parser.mly"
                  ( (x,xs,e) )
# 4996 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1015) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_circuit) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1013 * _menhir_state * 'tv_circuit) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CIRCUIT ->
                _menhir_run322 _menhir_env (Obj.magic _menhir_stack) MenhirState332
            | QUOTE _ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv1011 * _menhir_state * 'tv_circuit) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_circuit)) = _menhir_stack in
                let _v : 'tv_nonempty_list_circuit_ = 
# 221 "<standard.mly>"
    ( [ x ] )
# 5017 "src/syntax/parser.ml"
                 in
                _menhir_goto_nonempty_list_circuit_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1012)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState332) : 'freshtv1014)) : 'freshtv1016)) : 'freshtv1018)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv1019 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 5031 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) * _menhir_state * 'tv_exp_li) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1020)) : 'freshtv1022)
    | _ ->
        _menhir_fail ()

and _menhir_goto_p_state_ident_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_p_state_ident_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv729 * _menhir_state * 'tv_p_state_ident_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RIGHT_ARROW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv725 * _menhir_state * 'tv_p_state_ident_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL_LIT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
        | CALL ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | CAP_IDENT _v ->
            _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
        | DO ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
        | IF ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | INT_LIT _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
        | LBRACKET ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | LET ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | LPAREN ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | MINUS ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | NOT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | ONE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | WILDCARD ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | ZERO ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162) : 'freshtv726)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv727 * _menhir_state * 'tv_p_state_ident_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv728)) : 'freshtv730)

and _menhir_goto_exp_fcf : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_fcf -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv645 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 5103 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv643 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 5109 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), (x : (
# 11 "src/syntax/parser.mly"
       (string)
# 5114 "src/syntax/parser.ml"
        ))), _, (a : 'tv_atom)), _, (e : 'tv_exp_fcf)) = _menhir_stack in
        let _v : 'tv_exp_fcf = 
# 70 "src/syntax/parser.mly"
                                                 ( FCF.Assign(x,a,e) )
# 5119 "src/syntax/parser.ml"
         in
        _menhir_goto_exp_fcf _menhir_env _menhir_stack _menhir_s _v) : 'freshtv644)) : 'freshtv646)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv651 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv647 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
            | CALL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | CAP_IDENT _v ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
            | DO ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
            | IF ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | INT_LIT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
            | LBRACKET ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | LET ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | LPAREN ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | MINUS ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | NOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139) : 'freshtv648)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv649 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv650)) : 'freshtv652)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv655 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_exp_fcf)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv653 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_exp_fcf)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (a : 'tv_atom)), _, (e1 : 'tv_exp_fcf)), _, (e2 : 'tv_exp_fcf)) = _menhir_stack in
        let _v : 'tv_exp_fcf = 
# 69 "src/syntax/parser.mly"
                                                 ( FCF.If(a,e1,e2) )
# 5184 "src/syntax/parser.ml"
         in
        _menhir_goto_exp_fcf _menhir_env _menhir_stack _menhir_s _v) : 'freshtv654)) : 'freshtv656)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv659 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_fcf_)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv657 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_fcf_)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_binding_fcf_)), _, (e : 'tv_exp_fcf)) = _menhir_stack in
        let _v : 'tv_exp_fcf = 
# 77 "src/syntax/parser.mly"
                                                 ( FCF.LetPar (bs,e) )
# 5196 "src/syntax/parser.ml"
         in
        _menhir_goto_exp_fcf _menhir_env _menhir_stack _menhir_s _v) : 'freshtv658)) : 'freshtv660)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv673 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv671 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (e : 'tv_exp_fcf)) = _menhir_stack in
        let _v : 'tv_binding_fcf = 
# 83 "src/syntax/parser.mly"
                       ( (x,e) )
# 5208 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv669) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binding_fcf) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv667 * _menhir_state * 'tv_binding_fcf) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv661 * _menhir_state * 'tv_binding_fcf) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState146) : 'freshtv662)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv663 * _menhir_state * 'tv_binding_fcf) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_fcf)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_binding_fcf_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5241 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_binding_fcf_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv664)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv665 * _menhir_state * 'tv_binding_fcf) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv666)) : 'freshtv668)) : 'freshtv670)) : 'freshtv672)) : 'freshtv674)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv677 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_PIPE_b_fcf_))) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv675 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_PIPE_b_fcf_))) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_PIPE_b_fcf_)), _, (a : 'tv_exp_fcf)) = _menhir_stack in
        let _v : 'tv_exp_fcf = 
# 73 "src/syntax/parser.mly"
                                                 ( FCF.LetAutomaton (bs,a) )
# 5260 "src/syntax/parser.ml"
         in
        _menhir_goto_exp_fcf _menhir_env _menhir_stack _menhir_s _v) : 'freshtv676)) : 'freshtv678)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv691 * _menhir_state * 'tv_p_state_ident_)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv689 * _menhir_state * 'tv_p_state_ident_)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (b : 'tv_p_state_ident_)), _, (e : 'tv_exp_fcf)) = _menhir_stack in
        let _v : 'tv_b_fcf = 
# 80 "src/syntax/parser.mly"
                                         ( let (q,xs) = b in (q,xs,e) )
# 5272 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv687) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_b_fcf) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv685 * _menhir_state * 'tv_b_fcf) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv679 * _menhir_state * 'tv_b_fcf) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CAP_IDENT _v ->
                _menhir_run149 _menhir_env (Obj.magic _menhir_stack) MenhirState165 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState165) : 'freshtv680)
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv681 * _menhir_state * 'tv_b_fcf) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_b_fcf)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_b_fcf_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5303 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_b_fcf_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv682)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv683 * _menhir_state * 'tv_b_fcf) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv684)) : 'freshtv686)) : 'freshtv688)) : 'freshtv690)) : 'freshtv692)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv697 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv693 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _v
            | CALL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState170
            | CAP_IDENT _v ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _v
            | DO ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState170
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _v
            | IF ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState170
            | INT_LIT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState170 _v
            | LBRACKET ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState170
            | LET ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState170
            | LPAREN ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState170
            | MINUS ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState170
            | NOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState170
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState170
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState170
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState170
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState170) : 'freshtv694)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv695 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv696)) : 'freshtv698)
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv701 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_fcf)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv699 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_fcf)) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (x : 'tv_ident)), _, (e1 : 'tv_exp_fcf)), _, (e2 : 'tv_exp_fcf)) = _menhir_stack in
        let _v : 'tv_exp_fcf = 
# 74 "src/syntax/parser.mly"
                                                 ( FCF.Let(x,e1,e2) )
# 5375 "src/syntax/parser.ml"
         in
        _menhir_goto_exp_fcf _menhir_env _menhir_stack _menhir_s _v) : 'freshtv700)) : 'freshtv702)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv709 * _menhir_state) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv705 * _menhir_state) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv703 * _menhir_state) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_fcf)) = _menhir_stack in
            let _v : 'tv_exp_fcf = 
# 66 "src/syntax/parser.mly"
                                                 ( e )
# 5394 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_fcf _menhir_env _menhir_stack _menhir_s _v) : 'freshtv704)) : 'freshtv706)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv707 * _menhir_state) * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv708)) : 'freshtv710)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv723 * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv719 * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv717 * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (a : 'tv_exp_fcf)) = _menhir_stack in
            let _v : (
# 38 "src/syntax/parser.mly"
       (Ast.FCF.prog)
# 5419 "src/syntax/parser.ml"
            ) = 
# 59 "src/syntax/parser.mly"
                ( a )
# 5423 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv715) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 38 "src/syntax/parser.mly"
       (Ast.FCF.prog)
# 5431 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv713) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 38 "src/syntax/parser.mly"
       (Ast.FCF.prog)
# 5439 "src/syntax/parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv711) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 38 "src/syntax/parser.mly"
       (Ast.FCF.prog)
# 5447 "src/syntax/parser.ml"
            )) : (
# 38 "src/syntax/parser.mly"
       (Ast.FCF.prog)
# 5451 "src/syntax/parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv712)) : 'freshtv714)) : 'freshtv716)) : 'freshtv718)) : 'freshtv720)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv721 * _menhir_state * 'tv_exp_fcf) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv722)) : 'freshtv724)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_atom__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv633 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv629 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv627 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)), _, (xs_inlined1 : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _v : 'tv_inst_atom_ = let es =
              let xs = xs_inlined1 in
              
# 232 "<standard.mly>"
    ( xs )
# 5486 "src/syntax/parser.ml"
              
            in
            let xs = 
# 232 "<standard.mly>"
    ( xs )
# 5492 "src/syntax/parser.ml"
             in
            
# 190 "src/syntax/parser.mly"
  ( Inst.Assign (List.combine xs es) )
# 5497 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv628)) : 'freshtv630)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv631 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv632)) : 'freshtv634)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv641 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 5512 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv637 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 5522 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv635 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 5529 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : (
# 11 "src/syntax/parser.mly"
       (string)
# 5534 "src/syntax/parser.ml"
            ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _v : 'tv_p_state_atom_ = let l = 
# 232 "<standard.mly>"
    ( xs )
# 5539 "src/syntax/parser.ml"
             in
            
# 63 "src/syntax/parser.mly"
                                                      ( (q,l) )
# 5544 "src/syntax/parser.ml"
             in
            _menhir_goto_p_state_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv636)) : 'freshtv638)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv639 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 5554 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv640)) : 'freshtv642)
    | _ ->
        _menhir_fail ()

and _menhir_reduce76 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_lvalue_exp_li_ = 
# 193 "src/syntax/parser.mly"
                                 ( (x,None) )
# 5567 "src/syntax/parser.ml"
     in
    _menhir_goto_lvalue_exp_li_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce42 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
    let _v : 'tv_exp_li_without_paren = 
# 94 "src/syntax/parser.mly"
                           ( LI.Var x )
# 5577 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v

and _menhir_run207 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv625 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState207 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | BANG ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | BOOL_LIT _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | CALL ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | IF ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | INT_LIT _v ->
            _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | LBRACKET ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | LET ->
            _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | LIST_HD ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | LIST_TL ->
            _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | LPAREN ->
            _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | MINUS ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | NOT ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ONE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | RPAREN ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | WILDCARD ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | ZERO ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | AND | CIRCUIT | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv623 * _menhir_state * 'tv_ident)) * _menhir_state) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _) = _menhir_stack in
            let _v : 'tv_exp_li_without_paren = 
# 109 "src/syntax/parser.mly"
                            ( LI.App(x,[]) )
# 5667 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv624)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208) : 'freshtv626)
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState207

and _menhir_run246 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState246
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState246

and _menhir_goto_separated_nonempty_list_COMMA_ident_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_ident_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState324 | MenhirState276 | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv617) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv615) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_ident_) : 'tv_separated_nonempty_list_COMMA_ident_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_ident__ = 
# 144 "<standard.mly>"
    ( x )
# 5744 "src/syntax/parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_ident__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv616)) : 'freshtv618)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv621 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ident_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv619 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_ident_) : 'tv_separated_nonempty_list_COMMA_ident_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_ident_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 5760 "src/syntax/parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_ident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv620)) : 'freshtv622)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_efsm_ = 
# 211 "<standard.mly>"
    ( [] )
# 5776 "src/syntax/parser.ml"
     in
    _menhir_goto_list_transition_efsm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_goto_lvalue_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lvalue_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState83 | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv607 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv601 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv602)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv603 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_lvalue_atom__ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5844 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_lvalue_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv604)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv605 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv606)) : 'freshtv608)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv613 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv609 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | CALL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | INT_LIT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | LBRACKET ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | MINUS ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | NOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv610)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv611 * _menhir_state * 'tv_lvalue_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv612)) : 'freshtv614)
    | _ ->
        _menhir_fail ()

and _menhir_goto_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv463 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv459 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv457 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = 
# 156 "src/syntax/parser.mly"
                                ( mk_array_get x a )
# 5944 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)) : 'freshtv460)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv461 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv462)) : 'freshtv464)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv469 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | END | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv465 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = let c = 
# 176 "src/syntax/parser.mly"
        ( Atom.Mul )
# 5971 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 5976 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv466)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv467 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv468)) : 'freshtv470)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv475 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | END | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv471 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = let c = 
# 174 "src/syntax/parser.mly"
       ( Atom.Add )
# 6003 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6008 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv473 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)) : 'freshtv476)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv481 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | END | EOF | IN | PIPE | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv477 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = let c = 
# 184 "src/syntax/parser.mly"
            ( Atom.Or )
# 6053 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6058 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv478)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv479 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv480)) : 'freshtv482)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv487 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | END | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv483 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = let c = 
# 182 "src/syntax/parser.mly"
      ( Atom.Neq )
# 6089 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6094 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv484)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv485 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)) : 'freshtv488)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv493 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | END | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv489 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = let c = 
# 175 "src/syntax/parser.mly"
        ( Atom.Sub )
# 6121 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6126 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv490)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv491 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv492)) : 'freshtv494)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv499 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | END | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv495 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = let c = 
# 177 "src/syntax/parser.mly"
     ( Atom.Lt )
# 6157 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6162 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv497 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv498)) : 'freshtv500)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv505 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | END | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv501 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = let c = 
# 178 "src/syntax/parser.mly"
     ( Atom.Le )
# 6193 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6198 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv502)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv503 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv504)) : 'freshtv506)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv511 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | END | EOF | IN | LAND | PIPE | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv507 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = let c = 
# 183 "src/syntax/parser.mly"
       ( Atom.And )
# 6241 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6246 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv508)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv509 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv510)) : 'freshtv512)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv517 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | END | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv513 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = let c = 
# 179 "src/syntax/parser.mly"
     ( Atom.Gt )
# 6277 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6282 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv515 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv516)) : 'freshtv518)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv523 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | END | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv519 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = let c = 
# 180 "src/syntax/parser.mly"
     ( Atom.Ge )
# 6313 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6318 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv520)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv521 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv522)) : 'freshtv524)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv529 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | END | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE | PIPE_PIPE | RBRACKET | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv525 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = let c = 
# 181 "src/syntax/parser.mly"
     ( Atom.Eq )
# 6349 "src/syntax/parser.ml"
             in
            
# 153 "src/syntax/parser.mly"
                                ( mk_binop c a1 a2 )
# 6354 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv526)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv527 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv528)) : 'freshtv530)
    | MenhirState132 | MenhirState92 | MenhirState56 | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv537 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv531 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | CALL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | INT_LIT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | LBRACKET ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | MINUS ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | NOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv532)
        | EQ ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv533 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 6433 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv534)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv535 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv536)) : 'freshtv538)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv541 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv539 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv540)) : 'freshtv542)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv547 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | END | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv543 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = 
# 155 "src/syntax/parser.mly"
                                ( mk_unop Atom.Uminus a )
# 6499 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv544)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv545 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv546)) : 'freshtv548)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv553 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | AND | COL | COMMA | ELSE | END | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv549 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_prim_atom_ = 
# 154 "src/syntax/parser.mly"
                                ( mk_unop Atom.Not a  )
# 6524 "src/syntax/parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv550)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv551 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv552)) : 'freshtv554)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv563 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv559 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv557) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState79 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
                | WILDCARD ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv555) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState80 in
                    ((let _v : 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___ = 
# 142 "<standard.mly>"
    ( [] )
# 6589 "src/syntax/parser.ml"
                     in
                    _menhir_goto_loption_separated_nonempty_list_COMMA_lvalue_atom___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv556)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv558)
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv560)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv561 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv562)) : 'freshtv564)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv571 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv567 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv565 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_ident)), _, (a : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_lvalue_atom_ = 
# 194 "src/syntax/parser.mly"
                                 ( (x,Some a) )
# 6649 "src/syntax/parser.ml"
             in
            _menhir_goto_lvalue_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv566)) : 'freshtv568)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv569 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv570)) : 'freshtv572)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv577 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv573 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_lvalue_atom_)), _, (a : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_inst_atom_ = 
# 187 "src/syntax/parser.mly"
                          ( Inst.Assign [ (x,a) ] )
# 6698 "src/syntax/parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv574)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv575 * _menhir_state * 'tv_lvalue_atom_)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv576)) : 'freshtv578)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv583 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv579 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
            | CALL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | CAP_IDENT _v ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
            | DO ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
            | IF ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | INT_LIT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
            | LBRACKET ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | LET ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | LPAREN ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | MINUS ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | NOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv580)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv581 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv582)) : 'freshtv584)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv589 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 6790 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv585 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 6808 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | CALL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | CAP_IDENT _v ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | DO ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | IF ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | INT_LIT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | LBRACKET ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LET ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LPAREN ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | MINUS ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | NOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv586)
        | LAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv587 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 6870 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv588)) : 'freshtv590)
    | MenhirState117 | MenhirState168 | MenhirState170 | MenhirState162 | MenhirState159 | MenhirState143 | MenhirState122 | MenhirState125 | MenhirState139 | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv595 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | AND | ELSE | END | EOF | IN | PIPE | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv591 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (a : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_exp_fcf = 
# 67 "src/syntax/parser.mly"
                                                 ( FCF.Atom a )
# 6911 "src/syntax/parser.ml"
             in
            _menhir_goto_exp_fcf _menhir_env _menhir_stack _menhir_s _v) : 'freshtv592)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv593 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv594)) : 'freshtv596)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv599 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | HAT ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv597 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv598)) : 'freshtv600)
    | _ ->
        _menhir_fail ()

and _menhir_goto_exp_li_without_paren : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_li_without_paren -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv455) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_exp_li_without_paren) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv453) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((e : 'tv_exp_li_without_paren) : 'tv_exp_li_without_paren) = _v in
    ((let _v : 'tv_exp_li = 
# 91 "src/syntax/parser.mly"
                           ( e )
# 6978 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)) : 'freshtv456)

and _menhir_goto_loption_separated_nonempty_list_COMMA_ident__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_ident__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv431 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 6991 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv427 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 7001 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv425 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 7008 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : (
# 11 "src/syntax/parser.mly"
       (string)
# 7013 "src/syntax/parser.ml"
            ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_ident__)) = _menhir_stack in
            let _v : 'tv_p_state_ident_ = let l = 
# 232 "<standard.mly>"
    ( xs )
# 7018 "src/syntax/parser.ml"
             in
            
# 63 "src/syntax/parser.mly"
                                                      ( (q,l) )
# 7023 "src/syntax/parser.ml"
             in
            _menhir_goto_p_state_ident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv426)) : 'freshtv428)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv429 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 7033 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv430)) : 'freshtv432)
    | MenhirState276 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv441 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv437 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv433 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ARRAY_LENGTH ->
                    _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | BANG ->
                    _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | BOOL_LIT _v ->
                    _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
                | CALL ->
                    _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | IDENT _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
                | IF ->
                    _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | INT_LIT _v ->
                    _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
                | LBRACKET ->
                    _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | LET ->
                    _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | LIST_HD ->
                    _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | LIST_TL ->
                    _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | LPAREN ->
                    _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | MINUS ->
                    _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | NOT ->
                    _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | ONE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | RPAREN ->
                    _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | WILDCARD ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | ZERO ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState279
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState279) : 'freshtv434)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv435 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)) : 'freshtv438)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv439 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv440)) : 'freshtv442)
    | MenhirState324 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv451 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 7114 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv447 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 7124 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv443 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 7134 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ARRAY_LENGTH ->
                    _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | BANG ->
                    _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | BOOL_LIT _v ->
                    _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _v
                | CALL ->
                    _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | IDENT _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _v
                | IF ->
                    _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | INT_LIT _v ->
                    _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _v
                | LBRACKET ->
                    _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | LET ->
                    _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | LIST_HD ->
                    _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | LIST_TL ->
                    _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | LPAREN ->
                    _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | MINUS ->
                    _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | NOT ->
                    _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | ONE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | RPAREN ->
                    _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | WILDCARD ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | ZERO ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState327
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState327) : 'freshtv444)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv445 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 7186 "src/syntax/parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv449 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 7197 "src/syntax/parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_PIPE_ : _menhir_env -> 'ttv_tail -> 'tv_option_PIPE_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv423 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv424)

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv421 * _menhir_state) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _v : 'tv_const_atom_ = 
# 149 "src/syntax/parser.mly"
                           ( Atom.Unit )
# 7231 "src/syntax/parser.ml"
     in
    _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)

and _menhir_run149 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/syntax/parser.mly"
       (string)
# 7238 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 7250 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v
        | WILDCARD ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState150
        | RPAREN ->
            _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState150
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState150) : 'freshtv416)
    | RIGHT_ARROW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv417 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 7270 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (q : (
# 11 "src/syntax/parser.mly"
       (string)
# 7275 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_p_state_ident_ = 
# 62 "src/syntax/parser.mly"
              ( (q,[]))
# 7280 "src/syntax/parser.ml"
         in
        _menhir_goto_p_state_ident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv419 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 7290 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv420)

and _menhir_goto_p_state_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_p_state_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_p_state_atom_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv411) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_p_state_atom_) : 'tv_p_state_atom_) = _v in
    ((let _v : 'tv_exp_fcf = 
# 68 "src/syntax/parser.mly"
                                                 ( FCF.State p )
# 7308 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_fcf _menhir_env _menhir_stack _menhir_s _v) : 'freshtv412)) : 'freshtv414)

and _menhir_reduce64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 142 "<standard.mly>"
    ( [] )
# 7317 "src/syntax/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | RPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_goto_const_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_const_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv409) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_const_atom_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv407) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : 'tv_const_atom_) : 'tv_const_atom_) = _v in
    ((let _v : 'tv_atom = 
# 169 "src/syntax/parser.mly"
                         ( mk_const c )
# 7369 "src/syntax/parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv408)) : 'freshtv410)

and _menhir_goto_std_logic : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_std_logic -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState117 | MenhirState118 | MenhirState170 | MenhirState168 | MenhirState162 | MenhirState159 | MenhirState143 | MenhirState122 | MenhirState139 | MenhirState125 | MenhirState130 | MenhirState132 | MenhirState128 | MenhirState123 | MenhirState97 | MenhirState92 | MenhirState86 | MenhirState8 | MenhirState11 | MenhirState12 | MenhirState13 | MenhirState56 | MenhirState53 | MenhirState51 | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState30 | MenhirState27 | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_const_atom_ = 
# 147 "src/syntax/parser.mly"
                           ( mk_std_logic v )
# 7388 "src/syntax/parser.ml"
         in
        _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)) : 'freshtv402)
    | MenhirState327 | MenhirState178 | MenhirState179 | MenhirState180 | MenhirState181 | MenhirState307 | MenhirState301 | MenhirState182 | MenhirState183 | MenhirState184 | MenhirState185 | MenhirState288 | MenhirState285 | MenhirState279 | MenhirState189 | MenhirState272 | MenhirState270 | MenhirState193 | MenhirState196 | MenhirState198 | MenhirState260 | MenhirState258 | MenhirState254 | MenhirState207 | MenhirState250 | MenhirState246 | MenhirState243 | MenhirState241 | MenhirState239 | MenhirState237 | MenhirState235 | MenhirState233 | MenhirState231 | MenhirState229 | MenhirState227 | MenhirState223 | MenhirState221 | MenhirState218 | MenhirState213 | MenhirState210 | MenhirState208 | MenhirState205 | MenhirState203 | MenhirState199 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv405) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv403) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_const_exp_li_ = 
# 147 "src/syntax/parser.mly"
                           ( mk_std_logic v )
# 7403 "src/syntax/parser.ml"
         in
        _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)) : 'freshtv406)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ident : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ident -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv305 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv301 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | CALL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | INT_LIT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | LBRACKET ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | MINUS ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | NOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv302)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv303 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)
    | MenhirState117 | MenhirState118 | MenhirState170 | MenhirState168 | MenhirState162 | MenhirState159 | MenhirState143 | MenhirState122 | MenhirState139 | MenhirState125 | MenhirState130 | MenhirState132 | MenhirState128 | MenhirState123 | MenhirState97 | MenhirState92 | MenhirState86 | MenhirState8 | MenhirState11 | MenhirState12 | MenhirState13 | MenhirState56 | MenhirState53 | MenhirState51 | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState41 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState30 | MenhirState27 | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv307 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
            | CALL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
            | INT_LIT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
            | LBRACKET ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | MINUS ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | NOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv308)
        | AND | COL | COMMA | ELSE | END | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE | PIPE_PIPE | PLUS | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv309 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
            let _v : 'tv_atom = 
# 168 "src/syntax/parser.mly"
                         ( Atom.Var x )
# 7503 "src/syntax/parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv311 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | MenhirState79 | MenhirState80 | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv321 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv315 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | CALL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | INT_LIT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | LBRACKET ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | MINUS ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | NOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv316)
        | COLONEQ | COMMA | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv317 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
            let _v : 'tv_lvalue_atom_ = 
# 193 "src/syntax/parser.mly"
                                 ( (x,None) )
# 7558 "src/syntax/parser.ml"
             in
            _menhir_goto_lvalue_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv319 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | MenhirState3 | MenhirState109 | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv339 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
        let _v : 'tv_state = 
# 143 "src/syntax/parser.mly"
          ( x )
# 7577 "src/syntax/parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv337) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_state) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState109 | MenhirState3 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv327 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RIGHT_ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IF ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                | END | PIPE ->
                    _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState7
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv324)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv325 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)) : 'freshtv328)
        | MenhirState100 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv335 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv333 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (s : 'tv_inst_atom_)), _, (q : 'tv_state)) = _menhir_stack in
            let _v : 'tv_transition_efsm = 
# 54 "src/syntax/parser.mly"
                                              ( (g,s,q) )
# 7621 "src/syntax/parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv331) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_transition_efsm) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | END | PIPE ->
                _menhir_reduce62 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv330)) : 'freshtv332)) : 'freshtv334)) : 'freshtv336)
        | _ ->
            _menhir_fail ()) : 'freshtv338)) : 'freshtv340)) : 'freshtv342)
    | MenhirState146 | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv347 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv343 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
            | CALL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | CAP_IDENT _v ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
            | DO ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
            | IF ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | INT_LIT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
            | LBRACKET ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | LET ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | LPAREN ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | MINUS ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | NOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv344)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv345 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)) : 'freshtv348)
    | MenhirState324 | MenhirState276 | MenhirState155 | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv355 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv349 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState155
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155) : 'freshtv350)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv351 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_ident)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_ident_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 7723 "src/syntax/parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_ident_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv353 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv361 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv357 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | CALL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | CAP_IDENT _v ->
                _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | DO ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | IF ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | INT_LIT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | LBRACKET ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | LET ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | LPAREN ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | MINUS ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | NOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168) : 'freshtv358)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv359 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv360)) : 'freshtv362)
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv367 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv363 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | BANG ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | BOOL_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
            | CALL ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
            | IF ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | INT_LIT _v ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
            | LBRACKET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | LET ->
                _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | LIST_HD ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | LIST_TL ->
                _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | LPAREN ->
                _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | MINUS ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | NOT ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | RPAREN ->
                _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState196
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState196) : 'freshtv364)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv365 * _menhir_state) * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)) : 'freshtv368)
    | MenhirState180 | MenhirState181 | MenhirState307 | MenhirState184 | MenhirState185 | MenhirState285 | MenhirState189 | MenhirState272 | MenhirState196 | MenhirState198 | MenhirState199 | MenhirState258 | MenhirState254 | MenhirState207 | MenhirState250 | MenhirState246 | MenhirState243 | MenhirState241 | MenhirState239 | MenhirState237 | MenhirState235 | MenhirState233 | MenhirState231 | MenhirState229 | MenhirState227 | MenhirState223 | MenhirState221 | MenhirState213 | MenhirState205 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv373 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv369 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | BANG ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | BOOL_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
            | CALL ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
            | IF ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | INT_LIT _v ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
            | LBRACKET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | LET ->
                _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | LIST_HD ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | LIST_TL ->
                _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | LPAREN ->
                _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | MINUS ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | NOT ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | RPAREN ->
                _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState260
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState260) : 'freshtv370)
        | LPAREN ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            _menhir_reduce42 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv371 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)
    | MenhirState327 | MenhirState178 | MenhirState179 | MenhirState182 | MenhirState301 | MenhirState183 | MenhirState288 | MenhirState279 | MenhirState270 | MenhirState193 | MenhirState203 | MenhirState260 | MenhirState218 | MenhirState210 | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv379 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            _menhir_run246 _menhir_env (Obj.magic _menhir_stack)
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv375 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | BANG ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | BOOL_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
            | CALL ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
            | IF ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | INT_LIT _v ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
            | LBRACKET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | LET ->
                _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | LIST_HD ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | LIST_TL ->
                _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | LPAREN ->
                _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | MINUS ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | NOT ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | RPAREN ->
                _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState210) : 'freshtv376)
        | LPAREN ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack)
        | AND | CIRCUIT | COL | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | RPAREN | SEMICOL | THEN | TIMES ->
            _menhir_reduce42 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv377 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)
    | MenhirState282 | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv385 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState276 _v
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState276
            | RPAREN ->
                _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState276
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState276) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv383 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
    | MenhirState291 | MenhirState186 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | BANG ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | BOOL_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState288 _v
            | CALL ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState288 _v
            | IF ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | INT_LIT _v ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState288 _v
            | LBRACKET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | LET ->
                _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | LIST_HD ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | LIST_TL ->
                _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | LPAREN ->
                _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | MINUS ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | NOT ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | RPAREN ->
                _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState288
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState288) : 'freshtv388)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)) : 'freshtv392)
    | MenhirState297 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv393 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARRAY_LENGTH ->
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | BANG ->
                _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | BOOL_LIT _v ->
                _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState301 _v
            | CALL ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState301 _v
            | IF ->
                _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | INT_LIT _v ->
                _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState301 _v
            | LBRACKET ->
                _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | LET ->
                _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | LIST_HD ->
                _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | LIST_TL ->
                _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | LPAREN ->
                _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | MINUS ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | NOT ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | RPAREN ->
                _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState301
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState301) : 'freshtv394)
        | COMMA | RPAREN ->
            _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv395 * _menhir_state * 'tv_ident) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)) : 'freshtv398)
    | _ ->
        _menhir_fail ()

and _menhir_goto_const_exp_li_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_const_exp_li_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv299) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_const_exp_li_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv297) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : 'tv_const_exp_li_) : 'tv_const_exp_li_) = _v in
    ((let _v : 'tv_exp_li_without_paren = 
# 95 "src/syntax/parser.mly"
                           ( LI.Const c )
# 8142 "src/syntax/parser.ml"
     in
    _menhir_goto_exp_li_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)) : 'freshtv300)

and _menhir_reduce68 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_ident__ = 
# 142 "<standard.mly>"
    ( [] )
# 8151 "src/syntax/parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_ident__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PIPE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289) = Obj.magic _menhir_stack in
        ((let x = () in
        let _v : 'tv_option_PIPE_ = 
# 116 "<standard.mly>"
    ( Some x )
# 8171 "src/syntax/parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv290)) : 'freshtv292)
    | IDENT _ | WILDCARD ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv293) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_PIPE_ = 
# 114 "<standard.mly>"
    ( None )
# 8180 "src/syntax/parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv294)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv295 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_run118 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | CAP_IDENT _v ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
    | DO ->
        _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
    | IF ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | LET ->
        _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | LPAREN ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | RPAREN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118

and _menhir_run119 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AUTOMATON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv285 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState119 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CAP_IDENT _v ->
            _menhir_run149 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148) : 'freshtv286)
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
    | PAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState119 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
        | WILDCARD ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv288)
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState119
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : 'tv_const_atom_ = 
# 150 "src/syntax/parser.mly"
                           ( EmptyList )
# 8361 "src/syntax/parser.ml"
         in
        _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)) : 'freshtv282)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv283 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "src/syntax/parser.mly"
       (int)
# 8375 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 13 "src/syntax/parser.mly"
       (int)
# 8385 "src/syntax/parser.ml"
    )) : (
# 13 "src/syntax/parser.mly"
       (int)
# 8389 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_atom_ = 
# 148 "src/syntax/parser.mly"
                           ( mk_int n )
# 8394 "src/syntax/parser.ml"
     in
    _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)

and _menhir_run123 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | LPAREN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState123
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123

and _menhir_run126 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "src/syntax/parser.mly"
       (string)
# 8443 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLONEQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv269 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 8454 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | CALL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | INT_LIT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | LBRACKET ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | LPAREN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | MINUS ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | NOT ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | ONE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | ZERO ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv271 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 8492 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)

and _menhir_run131 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/syntax/parser.mly"
       (string)
# 8507 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 8519 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL_LIT _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | CALL ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | INT_LIT _v ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | LBRACKET ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LPAREN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | MINUS ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | NOT ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | ONE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | WILDCARD ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | ZERO ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | RPAREN ->
            _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv264)
    | AND | ELSE | END | EOF | IN | PIPE | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 8557 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (q : (
# 11 "src/syntax/parser.mly"
       (string)
# 8562 "src/syntax/parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_p_state_atom_ = 
# 62 "src/syntax/parser.mly"
              ( (q,[]))
# 8567 "src/syntax/parser.ml"
         in
        _menhir_goto_p_state_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 8577 "src/syntax/parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "src/syntax/parser.mly"
       (bool)
# 8600 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv261) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 12 "src/syntax/parser.mly"
       (bool)
# 8610 "src/syntax/parser.ml"
    )) : (
# 12 "src/syntax/parser.mly"
       (bool)
# 8614 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_atom_ = 
# 146 "src/syntax/parser.mly"
                           ( mk_bool b )
# 8619 "src/syntax/parser.ml"
     in
    _menhir_goto_const_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_std_logic = 
# 164 "src/syntax/parser.mly"
       ( Atom.Zero )
# 8632 "src/syntax/parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_ident = 
# 209 "src/syntax/parser.mly"
           ( Gensym.gensym "wildcard" )
# 8645 "src/syntax/parser.ml"
     in
    _menhir_goto_ident _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)

and _menhir_run179 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv255) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_std_logic = 
# 165 "src/syntax/parser.mly"
       ( Atom.One )
# 8705 "src/syntax/parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)

and _menhir_run180 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState180

and _menhir_run181 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181

and _menhir_run182 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState182 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARRAY_LENGTH ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | BANG ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | BOOL_LIT _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | CALL ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | IF ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | INT_LIT _v ->
            _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | LBRACKET ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | LET ->
            _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | LIST_HD ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | LIST_TL ->
            _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | LPAREN ->
            _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | MINUS ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | NOT ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | ONE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | RPAREN ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | WILDCARD ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | ZERO ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState183
        | AND | CIRCUIT | COL | COMMA | DOT | ELSE | EOF | EQ | GE | GT | HAT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | PLUS | QUOTE _ | RBRACKET | SEMICOL | THEN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv251 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            let _v : 'tv_const_exp_li_ = 
# 149 "src/syntax/parser.mly"
                           ( Atom.Unit )
# 8890 "src/syntax/parser.ml"
             in
            _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183) : 'freshtv254)
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState182
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState182

and _menhir_run184 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184

and _menhir_run185 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185

and _menhir_run186 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState186 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | WILDCARD ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState187) : 'freshtv250)
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState186

and _menhir_run190 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : 'tv_const_exp_li_ = 
# 150 "src/syntax/parser.mly"
                           ( EmptyList )
# 9047 "src/syntax/parser.ml"
         in
        _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)) : 'freshtv246)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)

and _menhir_run192 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "src/syntax/parser.mly"
       (int)
# 9061 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv241) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 13 "src/syntax/parser.mly"
       (int)
# 9071 "src/syntax/parser.ml"
    )) : (
# 13 "src/syntax/parser.mly"
       (int)
# 9075 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_exp_li_ = 
# 148 "src/syntax/parser.mly"
                           ( mk_int n )
# 9080 "src/syntax/parser.ml"
     in
    _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)

and _menhir_run193 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState193

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "src/syntax/parser.mly"
       (string)
# 9134 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv239) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 11 "src/syntax/parser.mly"
       (string)
# 9144 "src/syntax/parser.ml"
    )) : (
# 11 "src/syntax/parser.mly"
       (string)
# 9148 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_ident = 
# 208 "src/syntax/parser.mly"
          ( x )
# 9153 "src/syntax/parser.ml"
     in
    _menhir_goto_ident _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)

and _menhir_run194 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState194

and _menhir_run197 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "src/syntax/parser.mly"
       (bool)
# 9175 "src/syntax/parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv237) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 12 "src/syntax/parser.mly"
       (bool)
# 9185 "src/syntax/parser.ml"
    )) : (
# 12 "src/syntax/parser.mly"
       (bool)
# 9189 "src/syntax/parser.ml"
    )) = _v in
    ((let _v : 'tv_const_exp_li_ = 
# 146 "src/syntax/parser.mly"
                           ( mk_bool b )
# 9194 "src/syntax/parser.ml"
     in
    _menhir_goto_const_exp_li_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv238)

and _menhir_run198 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARRAY_LENGTH ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState198
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
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState199

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState332 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * 'tv_circuit) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState327 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv19 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 9305 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState324 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv21 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 9314 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState321 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv24)
    | MenhirState313 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv25 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState307 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv27 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_exp_li___)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState301 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState297 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState291 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * 'tv_binding_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState288 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState285 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState282 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state * 'tv_fun_binding_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState279 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv41 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ident__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState276 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState272 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv45 * _menhir_state) * _menhir_state * 'tv_exp_li)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState270 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState260 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState258 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState254 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv53 * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState250 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv55 * _menhir_state) * _menhir_state * 'tv_exp_li))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState246 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState243 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState239 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState237 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState233 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState231 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState227 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState223 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState221 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv79 * _menhir_state * 'tv_exp_li))) * _menhir_state * 'tv_exp_li))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState218 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state * 'tv_exp_li))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState213 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_exp_li)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState210 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv87 * _menhir_state * 'tv_ident)) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState207 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState205 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_inst_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_lvalue_exp_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState199 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState198 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState196 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv99 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv105 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_li_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState186 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState182 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState180 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv126)
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv127 * _menhir_state) * _menhir_state * 'tv_ident)) * _menhir_state * 'tv_exp_fcf)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv129 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState165 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state * 'tv_b_fcf)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state * 'tv_p_state_ident_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv135 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_PIPE_b_fcf_))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 9611 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state * 'tv_binding_fcf)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv147 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_exp_fcf)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state * (
# 11 "src/syntax/parser.mly"
       (string)
# 9640 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv151 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 9649 "src/syntax/parser.ml"
        ))) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv153 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 9658 "src/syntax/parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv159 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_fcf_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv168)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * 'tv_automaton_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state * 'tv_psi_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv175 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv179 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_lvalue_atom___)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state * 'tv_lvalue_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv187 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv191 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv207 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv219 * _menhir_state) * _menhir_state * 'tv_ident)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv227 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv236)

and _menhir_run322 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 11 "src/syntax/parser.mly"
       (string)
# 9878 "src/syntax/parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv9 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 9889 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState324 _v
            | WILDCARD ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | RPAREN ->
                _menhir_reduce68 _menhir_env (Obj.magic _menhir_stack) MenhirState324
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState324) : 'freshtv10)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv11 * _menhir_state) * (
# 11 "src/syntax/parser.mly"
       (string)
# 9911 "src/syntax/parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

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

and efsm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 37 "src/syntax/parser.mly"
       (Ast.EFSM.prog)
# 9938 "src/syntax/parser.ml"
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
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv8))

and fcf : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 38 "src/syntax/parser.mly"
       (Ast.FCF.prog)
# 9962 "src/syntax/parser.ml"
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
    | BOOL_LIT _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
    | CALL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | CAP_IDENT _v ->
        _menhir_run131 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
    | DO ->
        _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
    | IF ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | INT_LIT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
    | LBRACKET ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | LET ->
        _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | LPAREN ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | MINUS ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | NOT ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv6))

and li : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 39 "src/syntax/parser.mly"
       (Ast.LI.prog)
# 10014 "src/syntax/parser.ml"
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
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | BANG ->
        _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | BOOL_LIT _v ->
        _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v
    | CALL ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | IDENT _v ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v
    | IF ->
        _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | INT_LIT _v ->
        _menhir_run192 _menhir_env (Obj.magic _menhir_stack) MenhirState178 _v
    | LBRACKET ->
        _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | LET ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | LIST_HD ->
        _menhir_run185 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | LIST_TL ->
        _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | LPAREN ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | MINUS ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | NOT ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | ONE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | RPAREN ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | WILDCARD ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | ZERO ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState178
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState178) : 'freshtv4))

and platform : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 40 "src/syntax/parser.mly"
       (Ast.PLATFORM.prog)
# 10072 "src/syntax/parser.ml"
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
    | CIRCUIT ->
        _menhir_run322 _menhir_env (Obj.magic _menhir_stack) MenhirState321
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState321) : 'freshtv2))

# 269 "<standard.mly>"
  

# 10096 "src/syntax/parser.ml"
