
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | ZERO
    | UMINUS
    | TIMES
    | THEN
    | SEMICOL
    | RPAREN
    | RETURN
    | REC
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
    | LAND
    | INT_LIT of (
# 11 "parser.mly"
       (int)
# 32 "parser.ml"
  )
    | IN
    | IF
    | IDENT of (
# 9 "parser.mly"
       (string)
# 39 "parser.ml"
  )
    | GT
    | GE
    | EQ
    | EOF
    | END
    | ELSE
    | COMMA
    | COLONEQ
    | BOOL_LIT of (
# 10 "parser.mly"
       (bool)
# 52 "parser.ml"
  )
    | AUTOMATON
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
  | MenhirState267
  | MenhirState261
  | MenhirState258
  | MenhirState254
  | MenhirState251
  | MenhirState247
  | MenhirState245
  | MenhirState243
  | MenhirState242
  | MenhirState239
  | MenhirState237
  | MenhirState235
  | MenhirState226
  | MenhirState223
  | MenhirState220
  | MenhirState217
  | MenhirState214
  | MenhirState210
  | MenhirState208
  | MenhirState205
  | MenhirState203
  | MenhirState201
  | MenhirState197
  | MenhirState195
  | MenhirState193
  | MenhirState191
  | MenhirState189
  | MenhirState187
  | MenhirState185
  | MenhirState183
  | MenhirState181
  | MenhirState179
  | MenhirState177
  | MenhirState174
  | MenhirState166
  | MenhirState164
  | MenhirState162
  | MenhirState159
  | MenhirState157
  | MenhirState156
  | MenhirState155
  | MenhirState154
  | MenhirState153
  | MenhirState152
  | MenhirState150
  | MenhirState144
  | MenhirState141
  | MenhirState137
  | MenhirState134
  | MenhirState132
  | MenhirState130
  | MenhirState129
  | MenhirState127
  | MenhirState125
  | MenhirState123
  | MenhirState117
  | MenhirState111
  | MenhirState109
  | MenhirState106
  | MenhirState104
  | MenhirState103
  | MenhirState101
  | MenhirState98
  | MenhirState93
  | MenhirState90
  | MenhirState87
  | MenhirState84
  | MenhirState81
  | MenhirState76
  | MenhirState73
  | MenhirState69
  | MenhirState66
  | MenhirState64
  | MenhirState62
  | MenhirState61
  | MenhirState58
  | MenhirState55
  | MenhirState54
  | MenhirState52
  | MenhirState47
  | MenhirState41
  | MenhirState39
  | MenhirState34
  | MenhirState32
  | MenhirState30
  | MenhirState28
  | MenhirState26
  | MenhirState24
  | MenhirState22
  | MenhirState20
  | MenhirState18
  | MenhirState16
  | MenhirState13
  | MenhirState6
  | MenhirState5
  | MenhirState4
  | MenhirState1
  | MenhirState0

# 1 "parser.mly"
  
    open Ast

# 175 "parser.ml"

let rec _menhir_goto_separated_nonempty_list_AND_psi_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState237 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1075 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1071 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
            | LET ->
                _menhir_run236 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | LPAREN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState258) : 'freshtv1072)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1073 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1074)) : 'freshtv1076)
    | MenhirState261 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1079 * _menhir_state * 'tv_psi_psm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1077 * _menhir_state * 'tv_psi_psm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_psm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_psm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_psm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 220 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1078)) : 'freshtv1080)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_psi_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1065 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1061 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
            | LET ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | LPAREN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | RETURN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState81
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv1062)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1063 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1064)) : 'freshtv1066)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1069 * _menhir_state * 'tv_psi_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1067 * _menhir_state * 'tv_psi_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_csm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_csm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_csm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 271 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1068)) : 'freshtv1070)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1055 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1051 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1049 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 24 "parser.mly"
       (Ast.EFSM.prog)
# 297 "parser.ml"
            ) = 
# 32 "parser.mly"
                                                          ( p )
# 301 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1047) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 24 "parser.mly"
       (Ast.EFSM.prog)
# 309 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1045) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 24 "parser.mly"
       (Ast.EFSM.prog)
# 317 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1043) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 24 "parser.mly"
       (Ast.EFSM.prog)
# 325 "parser.ml"
            )) : (
# 24 "parser.mly"
       (Ast.EFSM.prog)
# 329 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1044)) : 'freshtv1046)) : 'freshtv1048)) : 'freshtv1050)) : 'freshtv1052)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1053 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1054)) : 'freshtv1056)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1059 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1057 * _menhir_state * 'tv_automaton_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 349 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1058)) : 'freshtv1060)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1037 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1033 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1031 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 26 "parser.mly"
       (Ast.PSM.prog)
# 375 "parser.ml"
            ) = 
# 61 "parser.mly"
                                                         ( p )
# 379 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1029) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 26 "parser.mly"
       (Ast.PSM.prog)
# 387 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1027) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 26 "parser.mly"
       (Ast.PSM.prog)
# 395 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1025) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 26 "parser.mly"
       (Ast.PSM.prog)
# 403 "parser.ml"
            )) : (
# 26 "parser.mly"
       (Ast.PSM.prog)
# 407 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv1026)) : 'freshtv1028)) : 'freshtv1030)) : 'freshtv1032)) : 'freshtv1034)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1035 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1036)) : 'freshtv1038)
    | MenhirState267 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1041 * _menhir_state * 'tv_automaton_psm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1039 * _menhir_state * 'tv_automaton_psm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_psm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 427 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1040)) : 'freshtv1042)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_binding_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1019 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1015 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | LET ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | LPAREN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | RETURN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv1016)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1017 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1018)) : 'freshtv1020)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1023 * _menhir_state * 'tv_binding_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1021 * _menhir_state * 'tv_binding_csm)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_csm)), _, (xs : 'tv_separated_nonempty_list_AND_binding_csm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_binding_csm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 478 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1022)) : 'freshtv1024)
    | _ ->
        _menhir_fail ()

and _menhir_goto_transition_csm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_transition_csm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1013 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | IF ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LET ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LPAREN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | RETURN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | AND | IN ->
        _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv1014)

and _menhir_goto_separated_nonempty_list_AND_binding_ker_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_binding_ker_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1007 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_ker_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1003 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_ker_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
            | IDENT _v ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
            | IF ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState223
            | INT_LIT _v ->
                _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
            | LET ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState223
            | LPAREN ->
                _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState223
            | MINUS ->
                _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState223
            | NOT ->
                _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState223
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState223
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState223
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState223) : 'freshtv1004)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1005 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_ker_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1006)) : 'freshtv1008)
    | MenhirState226 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1011 * _menhir_state * 'tv_binding_ker)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_ker_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1009 * _menhir_state * 'tv_binding_ker)) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_ker_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_binding_ker)), _, (xs : 'tv_separated_nonempty_list_AND_binding_ker_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_binding_ker_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 566 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_binding_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1010)) : 'freshtv1012)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_fun_binding_ker_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_fun_binding_ker_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv997 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_ker_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv993 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_ker_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | IDENT _v ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | IF ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | INT_LIT _v ->
                _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | LET ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | LPAREN ->
                _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | MINUS ->
                _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | NOT ->
                _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState214) : 'freshtv994)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv995 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_ker_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv996)) : 'freshtv998)
    | MenhirState217 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1001 * _menhir_state * 'tv_fun_binding_ker)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_ker_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv999 * _menhir_state * 'tv_fun_binding_ker)) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_ker_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_fun_binding_ker)), _, (xs : 'tv_separated_nonempty_list_AND_fun_binding_ker_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_fun_binding_ker_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 629 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_fun_binding_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1000)) : 'freshtv1002)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_exp_ker_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_exp_ker_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv987 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 644 "parser.ml"
        ))) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_ker_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv983 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 654 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_ker_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv981 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 661 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_ker_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (x : (
# 9 "parser.mly"
       (string)
# 666 "parser.ml"
            ))), _, (e1 : 'tv_exp_ker)), _, (es : 'tv_separated_nonempty_list_COMMA_exp_ker_)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_exp_ker_without_paren = 
# 116 "parser.mly"
                             ( KER.App(x,e1::es) )
# 674 "parser.ml"
             in
            _menhir_goto_exp_ker_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv982)) : 'freshtv984)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv985 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 684 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_ker_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv986)) : 'freshtv988)
    | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv991 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_ker_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv989 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_exp_ker_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_exp_ker)), _, (xs : 'tv_separated_nonempty_list_COMMA_exp_ker_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_exp_ker_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 698 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv990)) : 'freshtv992)
    | _ ->
        _menhir_fail ()

and _menhir_run174 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_ker -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState174
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState174
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState174
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState174
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState174
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState174
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState174
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState174

and _menhir_run177 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_ker -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState177
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177

and _menhir_run179 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_ker -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179

and _menhir_run181 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_ker -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181

and _menhir_run183 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_ker -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState183
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState183
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState183
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState183
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState183
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState183
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState183
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183

and _menhir_run185 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_ker -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState185
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185

and _menhir_run187 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_ker -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState187

and _menhir_run189 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_ker -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState189 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState189
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState189

and _menhir_run191 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_ker -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState191
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191

and _menhir_run193 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_ker -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState193
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState193

and _menhir_run195 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_ker -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState195

and _menhir_goto_list_transition_psm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_psm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState254 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv965 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv963 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_psm_) : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_psm)) = _menhir_stack in
        let _v : 'tv_list_transition_psm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1050 "parser.ml"
         in
        _menhir_goto_list_transition_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv964)) : 'freshtv966)
    | MenhirState242 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv979 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_psm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv977 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_psm_) : 'tv_list_transition_psm_) = _v in
        ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_psi_psm = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 1069 "parser.ml"
         in
        
# 69 "parser.mly"
                                                                             ( (q,xs,ts) )
# 1074 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv975) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_psm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv973 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv967 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState261) : 'freshtv968)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv969 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_psm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_psm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1105 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv970)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv971 * _menhir_state * 'tv_psi_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv972)) : 'freshtv974)) : 'freshtv976)) : 'freshtv978)) : 'freshtv980)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_csm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_csm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv947 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv945 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_csm_) : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_csm)) = _menhir_stack in
        let _v : 'tv_list_transition_csm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1134 "parser.ml"
         in
        _menhir_goto_list_transition_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv946)) : 'freshtv948)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv961 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_csm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv959 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_csm_) : 'tv_list_transition_csm_) = _v in
        ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = _menhir_stack in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_psi_csm = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 1153 "parser.ml"
         in
        
# 87 "parser.mly"
                                                                             ( (q,xs,ts) )
# 1158 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv957) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_csm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv955 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv949 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv950)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv951 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_csm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_csm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1189 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv952)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv953 * _menhir_state * 'tv_psi_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv954)) : 'freshtv956)) : 'freshtv958)) : 'freshtv960)) : 'freshtv962)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_AND_psi_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_psi_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv939 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv935 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | LET ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv936)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv937 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv938)) : 'freshtv940)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv943 * _menhir_state * 'tv_psi_hsm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv941 * _menhir_state * 'tv_psi_hsm)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_hsm)), _, (xs : 'tv_separated_nonempty_list_AND_psi_hsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_psi_hsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1243 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_psi_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv942)) : 'freshtv944)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_psi_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv929 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv925 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv923 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (_2 : 'tv_option_PIPE_)), _, (l : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_automaton_efsm = 
# 35 "parser.mly"
                                                               ( EFSM.Automaton l )
# 1271 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv921) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_automaton_efsm) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv919 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | PIPE_PIPE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv913 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AUTOMATON ->
                    _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState123
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv914)
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv915 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_efsm)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1302 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv916)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv917 * _menhir_state * 'tv_automaton_efsm) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv918)) : 'freshtv920)) : 'freshtv922)) : 'freshtv924)) : 'freshtv926)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv927 * _menhir_state) * 'tv_option_PIPE_) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv928)) : 'freshtv930)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv933 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv931 * _menhir_state * 'tv_psi_efsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_psi_efsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_psi_efsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1329 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv932)) : 'freshtv934)
    | _ ->
        _menhir_fail ()

and _menhir_goto_automaton_psm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_psm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState251 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv891 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv889 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_automaton_psm = 
# 65 "parser.mly"
                                       ( PSM.Seq(s,a) )
# 1349 "parser.ml"
         in
        _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv890)) : 'freshtv892)
    | MenhirState245 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv899 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv897 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_psm = 
# 72 "parser.mly"
                                 ( (g,a) )
# 1363 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv895) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_psm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv893 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | AND | IN ->
            _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) MenhirState254
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState254) : 'freshtv894)) : 'freshtv896)) : 'freshtv898)) : 'freshtv900)
    | MenhirState258 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv903 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv901 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_psi_psm_)), _, (a : 'tv_automaton_psm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_psm = 
# 66 "parser.mly"
                                                                     ( PSM.LetRec (bs,a) )
# 1395 "parser.ml"
         in
        _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv902)) : 'freshtv904)
    | MenhirState267 | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv911 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE_PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv905 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState267 _v
            | LET ->
                _menhir_run236 _menhir_env (Obj.magic _menhir_stack) MenhirState267
            | LPAREN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState267
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState267) : 'freshtv906)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv907 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_psm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_psm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1427 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_psm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv908)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv909 * _menhir_state * 'tv_automaton_psm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv910)) : 'freshtv912)
    | _ ->
        _menhir_fail ()

and _menhir_run107 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (string)
# 1443 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLONEQ ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv887 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 1459 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv888)

and _menhir_goto_inst_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_inst_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState90 | MenhirState87 | MenhirState81 | MenhirState61 | MenhirState76 | MenhirState73 | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv867 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv863 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
            | LET ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | LPAREN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | RETURN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState73
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv864)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv865 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv866)) : 'freshtv868)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv873 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv869 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv870)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv871 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv872)) : 'freshtv874)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv879 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv875 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
            | LET ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv876)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv877 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv878)) : 'freshtv880)
    | MenhirState267 | MenhirState235 | MenhirState258 | MenhirState251 | MenhirState245 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv885 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv881 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
            | LET ->
                _menhir_run236 _menhir_env (Obj.magic _menhir_stack) MenhirState251
            | LPAREN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState251
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState251) : 'freshtv882)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv883 * _menhir_state * 'tv_inst_atom_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv884)) : 'freshtv886)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState247 | MenhirState69 | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv857) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_atom_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv855) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_atom_) : 'tv_separated_nonempty_list_COMMA_atom_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 144 "<standard.mly>"
    ( x )
# 1598 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv856)) : 'freshtv858)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv861 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_atom_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv859 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_atom_) : 'tv_separated_nonempty_list_COMMA_atom_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_atom)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1615 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv860)) : 'freshtv862)
    | _ ->
        _menhir_fail ()

and _menhir_goto_automaton_csm : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_automaton_csm -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv809 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv807 * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_automaton_csm = 
# 81 "parser.mly"
                                       ( CSM.Seq(s,a) )
# 1635 "parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv808)) : 'freshtv810)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv813 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv811 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (e : 'tv_atom)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_csm = 
# 91 "parser.mly"
                                 ( (e,a) )
# 1649 "parser.ml"
         in
        _menhir_goto_transition_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv812)) : 'freshtv814)
    | MenhirState61 | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv817 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv815 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _v : 'tv_transition_csm = 
# 90 "parser.mly"
                  ( (Atom.Prim(Bool true),a) )
# 1661 "parser.ml"
         in
        _menhir_goto_transition_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv816)) : 'freshtv818)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv821 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv819 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_psi_csm_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_csm = 
# 82 "parser.mly"
                                                                     ( CSM.LetRec (bs,a) )
# 1676 "parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv820)) : 'freshtv822)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv835 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 1684 "parser.ml"
        ))) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv833 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 1690 "parser.ml"
        ))) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 9 "parser.mly"
       (string)
# 1695 "parser.ml"
        ))), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_binding_csm = 
# 94 "parser.mly"
                             ( (x,a) )
# 1701 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv831) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_binding_csm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv829 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv823 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv824)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv825 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_csm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_binding_csm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1732 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_binding_csm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv826)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv827 * _menhir_state * 'tv_binding_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv828)) : 'freshtv830)) : 'freshtv832)) : 'freshtv834)) : 'freshtv836)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv839 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv837 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_binding_csm_)), _, (a : 'tv_automaton_csm)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_automaton_csm = 
# 84 "parser.mly"
                                                                     ( CSM.Let (bs,a) )
# 1753 "parser.ml"
         in
        _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv838)) : 'freshtv840)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv853 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv849 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv847 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (a : 'tv_automaton_csm)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 27 "parser.mly"
       (Ast.CSM.prog)
# 1772 "parser.ml"
            ) = 
# 77 "parser.mly"
                      ( a )
# 1776 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv845) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 27 "parser.mly"
       (Ast.CSM.prog)
# 1784 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv843) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 27 "parser.mly"
       (Ast.CSM.prog)
# 1792 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv841) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 27 "parser.mly"
       (Ast.CSM.prog)
# 1800 "parser.ml"
            )) : (
# 27 "parser.mly"
       (Ast.CSM.prog)
# 1804 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv842)) : 'freshtv844)) : 'freshtv846)) : 'freshtv848)) : 'freshtv850)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv851 * _menhir_state * 'tv_automaton_csm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv852)) : 'freshtv854)
    | _ ->
        _menhir_fail ()

and _menhir_run13 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run16 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_run18 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run20 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
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

and _menhir_run22 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
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

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
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
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
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
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
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
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
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
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
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
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
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

and _menhir_goto_exp_ker : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_ker -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv629 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 2112 "parser.ml"
        ))) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv625 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 2122 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
            | IDENT _v ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
            | IF ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState197
            | INT_LIT _v ->
                _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
            | LET ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState197
            | LPAREN ->
                _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState197
            | MINUS ->
                _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState197
            | NOT ->
                _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState197
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState197
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState197
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState197) : 'freshtv626)
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv627 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 2180 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv628)) : 'freshtv630)
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv633 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv631 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_ker)), _, (a2 : 'tv_exp_ker)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_prim_exp_ker_ = let c = 
# 158 "parser.mly"
        ( Atom.Mul )
# 2194 "parser.ml"
         in
        
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 2199 "parser.ml"
         in
        _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv632)) : 'freshtv634)
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv639 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv635 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_ker)), _, (a2 : 'tv_exp_ker)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_ker_ = let c = 
# 156 "parser.mly"
       ( Atom.Add )
# 2218 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 2223 "parser.ml"
             in
            _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv636)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv637 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv638)) : 'freshtv640)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv645 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | PIPE_PIPE | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv641 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_ker)), _, (a2 : 'tv_exp_ker)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_ker_ = let c = 
# 166 "parser.mly"
            ( Atom.Or )
# 2267 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 2272 "parser.ml"
             in
            _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv642)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv643 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv644)) : 'freshtv646)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv651 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv647 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_ker)), _, (a2 : 'tv_exp_ker)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_ker_ = let c = 
# 164 "parser.mly"
      ( Atom.Neq )
# 2302 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 2307 "parser.ml"
             in
            _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv648)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv649 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv650)) : 'freshtv652)
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv657 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv653 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_ker)), _, (a2 : 'tv_exp_ker)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_ker_ = let c = 
# 157 "parser.mly"
        ( Atom.Sub )
# 2333 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 2338 "parser.ml"
             in
            _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv654)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv655 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv656)) : 'freshtv658)
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv663 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv659 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_ker)), _, (a2 : 'tv_exp_ker)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_ker_ = let c = 
# 159 "parser.mly"
     ( Atom.Lt )
# 2368 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 2373 "parser.ml"
             in
            _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv660)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv661 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv662)) : 'freshtv664)
    | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv669 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv665 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_ker)), _, (a2 : 'tv_exp_ker)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_ker_ = let c = 
# 160 "parser.mly"
     ( Atom.Le )
# 2403 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 2408 "parser.ml"
             in
            _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv666)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv667 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv668)) : 'freshtv670)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv675 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | LAND | PIPE_PIPE | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv671 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_ker)), _, (a2 : 'tv_exp_ker)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_ker_ = let c = 
# 165 "parser.mly"
       ( Atom.And )
# 2450 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 2455 "parser.ml"
             in
            _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv672)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv673 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv674)) : 'freshtv676)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv681 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv677 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_ker)), _, (a2 : 'tv_exp_ker)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_ker_ = let c = 
# 161 "parser.mly"
     ( Atom.Gt )
# 2485 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 2490 "parser.ml"
             in
            _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv678)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv679 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv680)) : 'freshtv682)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv687 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv683 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_ker)), _, (a2 : 'tv_exp_ker)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_ker_ = let c = 
# 162 "parser.mly"
     ( Atom.Ge )
# 2520 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 2525 "parser.ml"
             in
            _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv684)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv685 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv686)) : 'freshtv688)
    | MenhirState195 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv693 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | NEQ | PIPE_PIPE | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv689 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_exp_ker)), _, (a2 : 'tv_exp_ker)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_exp_ker_ = let c = 
# 163 "parser.mly"
     ( Atom.Eq )
# 2555 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 2560 "parser.ml"
             in
            _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv690)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv691 * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv692)) : 'freshtv694)
    | MenhirState201 | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv701 * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv695 * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
            | IDENT _v ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
            | IF ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | INT_LIT _v ->
                _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
            | LET ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | LPAREN ->
                _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | MINUS ->
                _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | NOT ->
                _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState201
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState201) : 'freshtv696)
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv697 * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_exp_ker)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_exp_ker_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2635 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv698)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv699 * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv700)) : 'freshtv702)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv707 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 2650 "parser.ml"
        ))) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv703 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 2680 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | IDENT _v ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | IF ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | INT_LIT _v ->
                _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | LET ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | LPAREN ->
                _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | MINUS ->
                _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | NOT ->
                _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState205) : 'freshtv704)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv705 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 2718 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv706)) : 'freshtv708)
    | MenhirState205 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv713 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 2727 "parser.ml"
        ))) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv709 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 2759 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (x : (
# 9 "parser.mly"
       (string)
# 2764 "parser.ml"
            ))), _, (e : 'tv_exp_ker)), _, (e2 : 'tv_exp_ker)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_exp_ker_without_paren = 
# 108 "parser.mly"
  ( KER.Seq(Inst.Assign [(x,e)],e2) )
# 2771 "parser.ml"
             in
            _menhir_goto_exp_ker_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv710)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv711 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 2781 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv712)) : 'freshtv714)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv719 * _menhir_state) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv715 * _menhir_state) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | IDENT _v ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | IF ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | INT_LIT _v ->
                _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | LET ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | LPAREN ->
                _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | MINUS ->
                _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | NOT ->
                _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208) : 'freshtv716)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv717 * _menhir_state) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv718)) : 'freshtv720)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv725 * _menhir_state) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv721 * _menhir_state) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
            | IDENT _v ->
                _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
            | IF ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | INT_LIT _v ->
                _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
            | LET ->
                _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | LPAREN ->
                _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | MINUS ->
                _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | NOT ->
                _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState210
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState210) : 'freshtv722)
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv723 * _menhir_state) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv724)) : 'freshtv726)
    | MenhirState210 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv731 * _menhir_state) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv727 * _menhir_state) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_exp_ker)), _, (e2 : 'tv_exp_ker)), _, (e3 : 'tv_exp_ker)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_ker_without_paren = 
# 122 "parser.mly"
                            ( KER.If(e1,e2,e3) )
# 2953 "parser.ml"
             in
            _menhir_goto_exp_ker_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv728)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv729 * _menhir_state) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv730)) : 'freshtv732)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv747 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 2968 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv743 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 3000 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (f : (
# 9 "parser.mly"
       (string)
# 3005 "parser.ml"
            ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)), _, (e : 'tv_exp_ker)) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_fun_binding_ker = let xs = 
# 232 "<standard.mly>"
    ( xs )
# 3013 "parser.ml"
             in
            
# 130 "parser.mly"
                                                                    ( (f,xs,e) )
# 3018 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv741) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_fun_binding_ker) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv739 * _menhir_state * 'tv_fun_binding_ker) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv733 * _menhir_state * 'tv_fun_binding_ker) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState217) : 'freshtv734)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv735 * _menhir_state * 'tv_fun_binding_ker) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_fun_binding_ker)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_fun_binding_ker_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3049 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_fun_binding_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv736)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv737 * _menhir_state * 'tv_fun_binding_ker) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv738)) : 'freshtv740)) : 'freshtv742)) : 'freshtv744)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv745 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 3066 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv746)) : 'freshtv748)
    | MenhirState214 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv753 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_ker_)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv749 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_ker_)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _), _, (bs : 'tv_separated_nonempty_list_AND_fun_binding_ker_)), _, (e : 'tv_exp_ker)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_exp_ker_without_paren = 
# 113 "parser.mly"
                            ( KER.LetRec (bs,e) )
# 3108 "parser.ml"
             in
            _menhir_goto_exp_ker_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv750)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv751 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_ker_)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv752)) : 'freshtv754)
    | MenhirState220 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv769 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 3123 "parser.ml"
        ))) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv765 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 3155 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 9 "parser.mly"
       (string)
# 3160 "parser.ml"
            ))), _, (e : 'tv_exp_ker)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_binding_ker = 
# 127 "parser.mly"
                            ( (x,e) )
# 3166 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv763) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_binding_ker) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv761 * _menhir_state * 'tv_binding_ker) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv755 * _menhir_state * 'tv_binding_ker) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run219 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState226) : 'freshtv756)
            | IN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv757 * _menhir_state * 'tv_binding_ker) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_binding_ker)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_AND_binding_ker_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3197 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_AND_binding_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv758)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv759 * _menhir_state * 'tv_binding_ker) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv760)) : 'freshtv762)) : 'freshtv764)) : 'freshtv766)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv767 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 3214 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv768)) : 'freshtv770)
    | MenhirState223 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv775 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_ker_)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | ELSE | EOF | IN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv771 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_ker_)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_binding_ker_)), _, (e : 'tv_exp_ker)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_ker_without_paren = 
# 111 "parser.mly"
                            ( KER.Let (bs,e) )
# 3255 "parser.ml"
             in
            _menhir_goto_exp_ker_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv772)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv773 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_ker_)) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv774)) : 'freshtv776)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv783 * _menhir_state) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv779 * _menhir_state) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv777 * _menhir_state) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_exp_ker)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_exp_ker = 
# 101 "parser.mly"
                            ( e )
# 3303 "parser.ml"
             in
            _menhir_goto_exp_ker _menhir_env _menhir_stack _menhir_s _v) : 'freshtv778)) : 'freshtv780)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv781 * _menhir_state) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv782)) : 'freshtv784)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv787 * _menhir_state) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv785 * _menhir_state) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_ker)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_prim_exp_ker_ = 
# 144 "parser.mly"
                         ( Atom.Unop(Uminus,a) )
# 3325 "parser.ml"
         in
        _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv786)) : 'freshtv788)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv791 * _menhir_state) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv789 * _menhir_state) * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_exp_ker)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_prim_exp_ker_ = 
# 143 "parser.mly"
          ( Atom.Unop(Not,a) )
# 3338 "parser.ml"
         in
        _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv790)) : 'freshtv792)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv805 * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv801 * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv799 * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_exp_ker)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 28 "parser.mly"
       (Ast.KER.prog)
# 3357 "parser.ml"
            ) = 
# 98 "parser.mly"
                ( e )
# 3361 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv797) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 28 "parser.mly"
       (Ast.KER.prog)
# 3369 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv795) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 28 "parser.mly"
       (Ast.KER.prog)
# 3377 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv793) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 28 "parser.mly"
       (Ast.KER.prog)
# 3385 "parser.ml"
            )) : (
# 28 "parser.mly"
       (Ast.KER.prog)
# 3389 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv794)) : 'freshtv796)) : 'freshtv798)) : 'freshtv800)) : 'freshtv802)
        | EQ ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run185 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run183 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run177 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run174 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv803 * _menhir_state * 'tv_exp_ker) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv804)) : 'freshtv806)
    | _ ->
        _menhir_fail ()

and _menhir_reduce45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_psm_ = 
# 211 "<standard.mly>"
    ( [] )
# 3429 "parser.ml"
     in
    _menhir_goto_list_transition_psm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run243 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState243
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState243

and _menhir_reduce39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_csm_ = 
# 211 "<standard.mly>"
    ( [] )
# 3465 "parser.ml"
     in
    _menhir_goto_list_transition_csm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run62 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv619 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv615 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv613 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (p : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 25 "parser.mly"
       (Ast.HSM.prog)
# 3516 "parser.ml"
            ) = 
# 46 "parser.mly"
                                                         ( p )
# 3520 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv611) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 25 "parser.mly"
       (Ast.HSM.prog)
# 3528 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv609) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 25 "parser.mly"
       (Ast.HSM.prog)
# 3536 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv607) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 25 "parser.mly"
       (Ast.HSM.prog)
# 3544 "parser.ml"
            )) : (
# 25 "parser.mly"
       (Ast.HSM.prog)
# 3548 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv608)) : 'freshtv610)) : 'freshtv612)) : 'freshtv614)) : 'freshtv616)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv617 * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv618)) : 'freshtv620)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv623 * _menhir_state * 'tv_automaton_hsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv621 * _menhir_state * 'tv_automaton_hsm)) * _menhir_state * 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_automaton_hsm)), _, (xs : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 3568 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv622)) : 'freshtv624)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_hsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_hsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv591 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv589 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_hsm_) : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_hsm)) = _menhir_stack in
        let _v : 'tv_list_transition_hsm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 3590 "parser.ml"
         in
        _menhir_goto_list_transition_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv590)) : 'freshtv592)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv605 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv603 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_hsm_) : 'tv_list_transition_hsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_psi_hsm = 
# 53 "parser.mly"
                                ( (q,ts) )
# 3607 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv601) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_hsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv599 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv593 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv594)
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv595 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_hsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_psi_hsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3638 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_psi_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv596)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv597 * _menhir_state * 'tv_psi_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv598)) : 'freshtv600)) : 'freshtv602)) : 'freshtv604)) : 'freshtv606)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_efsm_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_efsm_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv573 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv571 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition_efsm)) = _menhir_stack in
        let _v : 'tv_list_transition_efsm_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 3667 "parser.ml"
         in
        _menhir_goto_list_transition_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv572)) : 'freshtv574)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv587 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv585 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_efsm_) : 'tv_list_transition_efsm_) = _v in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_psi_efsm = 
# 38 "parser.mly"
                                         ( (q,ts) )
# 3684 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv583) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_psi_efsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv581 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv575 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv576)
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv577 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_psi_efsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_psi_efsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3715 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_psi_efsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv578)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv579 * _menhir_state * 'tv_psi_efsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv580)) : 'freshtv582)) : 'freshtv584)) : 'freshtv586)) : 'freshtv588)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_atom__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv553 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv549 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv547 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)), _, (xs_inlined1 : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_inst_atom_ = let es =
              let xs = xs_inlined1 in
              
# 232 "<standard.mly>"
    ( xs )
# 3755 "parser.ml"
              
            in
            let xs = 
# 232 "<standard.mly>"
    ( xs )
# 3761 "parser.ml"
             in
            
# 171 "parser.mly"
                                                   ( Inst.Assign (List.combine xs es) )
# 3766 "parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv548)) : 'freshtv550)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv551 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv552)) : 'freshtv554)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv561 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv557 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv555 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_automaton_csm = let es = 
# 232 "<standard.mly>"
    ( xs )
# 3794 "parser.ml"
             in
            
# 80 "parser.mly"
                                                      ( CSM.State (q,es) )
# 3799 "parser.ml"
             in
            _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv556)) : 'freshtv558)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv559 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv560)) : 'freshtv562)
    | MenhirState247 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv569 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv565 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv563 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (q : 'tv_state)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_atom__)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_automaton_psm = let es = 
# 232 "<standard.mly>"
    ( xs )
# 3827 "parser.ml"
             in
            
# 64 "parser.mly"
                                                      ( PSM.State (q,es) )
# 3832 "parser.ml"
             in
            _menhir_goto_automaton_psm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv564)) : 'freshtv566)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv567 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_atom__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv568)) : 'freshtv570)
    | _ ->
        _menhir_fail ()

and _menhir_goto_atom : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atom -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv429 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv425 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv423 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_atom = 
# 153 "parser.mly"
                         ( a )
# 3887 "parser.ml"
             in
            _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)) : 'freshtv426)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv427 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv428)) : 'freshtv430)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv433 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv431 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_prim_atom_ = let c = 
# 158 "parser.mly"
        ( Atom.Mul )
# 3909 "parser.ml"
         in
        
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 3914 "parser.ml"
         in
        _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)) : 'freshtv434)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv439 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv435 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 156 "parser.mly"
       ( Atom.Add )
# 3933 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 3938 "parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv437 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv438)) : 'freshtv440)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv445 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | IDENT _ | IF | IN | LET | LPAREN | PIPE_PIPE | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv441 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 166 "parser.mly"
            ( Atom.Or )
# 3982 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 3987 "parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv442)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv443 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv444)) : 'freshtv446)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv451 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv447 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 164 "parser.mly"
      ( Atom.Neq )
# 4017 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 4022 "parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv449 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv457 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv453 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 157 "parser.mly"
        ( Atom.Sub )
# 4048 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 4053 "parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv455 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv456)) : 'freshtv458)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv463 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv459 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 159 "parser.mly"
     ( Atom.Lt )
# 4083 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 4088 "parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv460)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv461 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv462)) : 'freshtv464)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv469 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv465 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 160 "parser.mly"
     ( Atom.Le )
# 4118 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 4123 "parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv466)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv467 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv468)) : 'freshtv470)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv475 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | IDENT _ | IF | IN | LAND | LET | LPAREN | PIPE_PIPE | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv471 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 165 "parser.mly"
       ( Atom.And )
# 4165 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 4170 "parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv473 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)) : 'freshtv476)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv481 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv477 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 161 "parser.mly"
     ( Atom.Gt )
# 4200 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 4205 "parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv478)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv479 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv480)) : 'freshtv482)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv487 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv483 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 162 "parser.mly"
     ( Atom.Ge )
# 4235 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 4240 "parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv484)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv485 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)) : 'freshtv488)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv493 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | AND | COMMA | EOF | EQ | GE | GT | IDENT _ | IF | IN | LAND | LE | LET | LPAREN | LT | NEQ | PIPE_PIPE | RETURN | RPAREN | SEMICOL | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv489 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a1 : 'tv_atom)), _, (a2 : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_prim_atom_ = let c = 
# 163 "parser.mly"
     ( Atom.Eq )
# 4270 "parser.ml"
             in
            
# 142 "parser.mly"
                     ( Atom.Binop(c,a1,a2) )
# 4275 "parser.ml"
             in
            _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv490)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv491 * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv492)) : 'freshtv494)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv495 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_prim_atom_ = 
# 144 "parser.mly"
                         ( Atom.Unop(Uminus,a) )
# 4295 "parser.ml"
         in
        _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)) : 'freshtv498)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv501 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv499 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_prim_atom_ = 
# 143 "parser.mly"
          ( Atom.Unop(Not,a) )
# 4308 "parser.ml"
         in
        _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv507 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | AND | EOF | IDENT _ | IF | IN | LET | LPAREN | RETURN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv503 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_atom)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_automaton_csm = 
# 83 "parser.mly"
                ( CSM.Return a )
# 4347 "parser.ml"
             in
            _menhir_goto_automaton_csm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv504)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv505 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv506)) : 'freshtv508)
    | MenhirState247 | MenhirState69 | MenhirState52 | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv515 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv509 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | INT_LIT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | NOT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv510)
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv511 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_atom)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_atom_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4418 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv512)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv513 * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv514)) : 'freshtv516)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv521 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv517 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | LET ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LPAREN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | RETURN ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv518)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv519 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv520)) : 'freshtv522)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv527 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 4486 "parser.ml"
        ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv523 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 4518 "parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 9 "parser.mly"
       (string)
# 4523 "parser.ml"
            ))), _, (a : 'tv_atom)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_inst_atom_ = 
# 169 "parser.mly"
                      ( Inst.Assign [ (x,a) ] )
# 4529 "parser.ml"
             in
            _menhir_goto_inst_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv525 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 4539 "parser.ml"
            ))) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv526)) : 'freshtv528)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv533 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv529 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | LPAREN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv530)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv531 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv532)) : 'freshtv534)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv539 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv535 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | LPAREN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv536)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv537 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv538)) : 'freshtv540)
    | MenhirState243 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv545 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | LAND ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | NEQ ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PIPE_PIPE ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv541 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
            | LET ->
                _menhir_run236 _menhir_env (Obj.magic _menhir_stack) MenhirState245
            | LPAREN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState245
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState245) : 'freshtv542)
        | TIMES ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv543 * _menhir_state) * _menhir_state * 'tv_atom) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv544)) : 'freshtv546)
    | _ ->
        _menhir_fail ()

and _menhir_goto_prim_atom_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prim_atom_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv421) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_prim_atom_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv419) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_prim_atom_) : 'tv_prim_atom_) = _v in
    ((let _v : 'tv_atom = 
# 152 "parser.mly"
                         ( Atom.Prim p )
# 4708 "parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv420)) : 'freshtv422)

and _menhir_reduce24 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_exp_ker_without_paren -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (e : 'tv_exp_ker_without_paren)) = _menhir_stack in
    let _v : 'tv_exp_ker = 
# 102 "parser.mly"
                            ( e )
# 4718 "parser.ml"
     in
    _menhir_goto_exp_ker _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_IDENT__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv387 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv383 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLONEQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv379 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv375 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BOOL_LIT _v ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
                    | IDENT _v ->
                        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
                    | INT_LIT _v ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
                    | LPAREN ->
                        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                    | MINUS ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                    | NOT ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                    | ONE ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                    | ZERO ->
                        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                    | RPAREN ->
                        _menhir_reduce49 _menhir_env (Obj.magic _menhir_stack) MenhirState47
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv376)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv377 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv381 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv385 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv397 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv393 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv389 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
                | IF ->
                    _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                | LET ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                | LPAREN ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                | RETURN ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                | AND | IN ->
                    _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack) MenhirState61
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv390)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv391 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv392)) : 'freshtv394)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv395 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)) : 'freshtv398)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv407 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 4846 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv403 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 4856 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv399 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 4866 "parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL_LIT _v ->
                    _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
                | IDENT _v ->
                    _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
                | IF ->
                    _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState162
                | INT_LIT _v ->
                    _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
                | LET ->
                    _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState162
                | LPAREN ->
                    _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState162
                | MINUS ->
                    _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState162
                | NOT ->
                    _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState162
                | ONE ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState162
                | ZERO ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState162
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162) : 'freshtv400)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv401 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 4902 "parser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv405 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 4913 "parser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)) : 'freshtv408)
    | MenhirState239 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv417 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv413 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv409 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IF ->
                    _menhir_run243 _menhir_env (Obj.magic _menhir_stack) MenhirState242
                | AND | IN ->
                    _menhir_reduce45 _menhir_env (Obj.magic _menhir_stack) MenhirState242
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState242) : 'freshtv410)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv411 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)) : 'freshtv414)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv415 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)) : 'freshtv418)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_IDENT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_IDENT_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv369 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 4968 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv367 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 4976 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_IDENT_) : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 9 "parser.mly"
       (string)
# 4983 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_IDENT_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 4989 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)) : 'freshtv370)
    | MenhirState239 | MenhirState159 | MenhirState58 | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv373) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv371) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_IDENT_) : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_IDENT__ = 
# 144 "<standard.mly>"
    ( x )
# 5004 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)) : 'freshtv374)
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
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv353 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv351 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (s : 'tv_inst_atom_)), _, (a : 'tv_automaton_hsm)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_hsm = 
# 56 "parser.mly"
                                                      ( (g,s,a) )
# 5031 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv349) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_hsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv347 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | AND | IN ->
            _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv348)) : 'freshtv350)) : 'freshtv352)) : 'freshtv354)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv357 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv355 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (bs : 'tv_separated_nonempty_list_AND_psi_hsm_)), _, (a : 'tv_automaton_hsm)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_automaton_hsm = 
# 50 "parser.mly"
                                                                     ( HSM.LetRec (bs,a) )
# 5063 "parser.ml"
         in
        _menhir_goto_automaton_hsm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv356)) : 'freshtv358)
    | MenhirState150 | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv365 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PIPE_PIPE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv359 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v
            | LET ->
                _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState150
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState150) : 'freshtv360)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv361 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_automaton_hsm)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5093 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_PIPE_PIPE_automaton_hsm_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv363 * _menhir_state * 'tv_automaton_hsm) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv364)) : 'freshtv366)
    | _ ->
        _menhir_fail ()

and _menhir_reduce43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_hsm_ = 
# 211 "<standard.mly>"
    ( [] )
# 5111 "parser.ml"
     in
    _menhir_goto_list_transition_hsm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run130 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130

and _menhir_reduce41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_efsm_ = 
# 211 "<standard.mly>"
    ( [] )
# 5147 "parser.ml"
     in
    _menhir_goto_list_transition_efsm_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run104 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
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
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104

and _menhir_reduce49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_atom__ = 
# 142 "<standard.mly>"
    ( [] )
# 5183 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_atom__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
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
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
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
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
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
# 11 "parser.mly"
       (int)
# 5271 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv345) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 11 "parser.mly"
       (int)
# 5281 "parser.ml"
    )) : (
# 11 "parser.mly"
       (int)
# 5285 "parser.ml"
    )) = _v in
    ((let _v : 'tv_prim_atom_ = 
# 141 "parser.mly"
                           ( Atom.Int n )
# 5290 "parser.ml"
     in
    _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv346)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (string)
# 5297 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv343) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 9 "parser.mly"
       (string)
# 5307 "parser.ml"
    )) : (
# 9 "parser.mly"
       (string)
# 5311 "parser.ml"
    )) = _v in
    ((let _v : 'tv_atom = 
# 151 "parser.mly"
                         ( Atom.Var x )
# 5316 "parser.ml"
     in
    _menhir_goto_atom _menhir_env _menhir_stack _menhir_s _v) : 'freshtv344)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (bool)
# 5323 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv341) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 10 "parser.mly"
       (bool)
# 5333 "parser.ml"
    )) : (
# 10 "parser.mly"
       (bool)
# 5337 "parser.ml"
    )) = _v in
    ((let _v : 'tv_prim_atom_ = 
# 139 "parser.mly"
                           ( Atom.Bool b )
# 5342 "parser.ml"
     in
    _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (string)
# 5349 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv337 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5361 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | LET ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | LPAREN ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | RETURN ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState87
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv338)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv339 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5385 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)

and _menhir_goto_option_PIPE_ : _menhir_env -> 'ttv_tail -> 'tv_option_PIPE_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv335 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv336)

and _menhir_goto_std_logic : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_std_logic -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState247 | MenhirState243 | MenhirState130 | MenhirState104 | MenhirState69 | MenhirState66 | MenhirState62 | MenhirState52 | MenhirState47 | MenhirState1 | MenhirState4 | MenhirState5 | MenhirState34 | MenhirState32 | MenhirState30 | MenhirState28 | MenhirState26 | MenhirState24 | MenhirState22 | MenhirState20 | MenhirState18 | MenhirState16 | MenhirState13 | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv329) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv327) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_prim_atom_ = 
# 140 "parser.mly"
                           ( Atom.Std_logic v )
# 5420 "parser.ml"
         in
        _menhir_goto_prim_atom_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)) : 'freshtv330)
    | MenhirState152 | MenhirState153 | MenhirState154 | MenhirState155 | MenhirState223 | MenhirState220 | MenhirState214 | MenhirState162 | MenhirState210 | MenhirState208 | MenhirState164 | MenhirState205 | MenhirState203 | MenhirState201 | MenhirState197 | MenhirState195 | MenhirState193 | MenhirState191 | MenhirState189 | MenhirState187 | MenhirState185 | MenhirState183 | MenhirState181 | MenhirState179 | MenhirState177 | MenhirState174 | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv333) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_std_logic) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((v : 'tv_std_logic) : 'tv_std_logic) = _v in
        ((let _v : 'tv_prim_exp_ker_ = 
# 140 "parser.mly"
                           ( Atom.Std_logic v )
# 5435 "parser.ml"
         in
        _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv332)) : 'freshtv334)
    | _ ->
        _menhir_fail ()

and _menhir_run158 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (string)
# 5444 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5456 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
        | RPAREN ->
            _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv324)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5476 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)

and _menhir_run219 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (string)
# 5484 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5496 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL_LIT _v ->
            _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | IDENT _v ->
            _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | IF ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState220
        | INT_LIT _v ->
            _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | LET ->
            _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState220
        | LPAREN ->
            _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState220
        | MINUS ->
            _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState220
        | NOT ->
            _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState220
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState220
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState220
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState220) : 'freshtv320)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv321 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5532 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)

and _menhir_goto_exp_ker_without_paren : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp_ker_without_paren -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv315 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5546 "parser.ml"
        ))) * _menhir_state * 'tv_exp_ker_without_paren) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5556 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker_without_paren) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv309 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5563 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker_without_paren) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 9 "parser.mly"
       (string)
# 5568 "parser.ml"
            ))), _, (e : 'tv_exp_ker_without_paren)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_exp_ker_without_paren = 
# 118 "parser.mly"
                             ( KER.App(x,[e]) )
# 5575 "parser.ml"
             in
            _menhir_goto_exp_ker_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)) : 'freshtv312)
        | COMMA | EQ | GE | GT | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | TIMES ->
            _menhir_reduce24 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv313 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5587 "parser.ml"
            ))) * _menhir_state * 'tv_exp_ker_without_paren) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
    | MenhirState152 | MenhirState153 | MenhirState154 | MenhirState155 | MenhirState223 | MenhirState220 | MenhirState214 | MenhirState162 | MenhirState210 | MenhirState208 | MenhirState164 | MenhirState205 | MenhirState203 | MenhirState201 | MenhirState197 | MenhirState195 | MenhirState193 | MenhirState191 | MenhirState189 | MenhirState187 | MenhirState185 | MenhirState183 | MenhirState181 | MenhirState179 | MenhirState177 | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317 * _menhir_state * 'tv_exp_ker_without_paren) = Obj.magic _menhir_stack in
        (_menhir_reduce24 _menhir_env (Obj.magic _menhir_stack) : 'freshtv318)
    | _ ->
        _menhir_fail ()

and _menhir_goto_prim_exp_ker_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_prim_exp_ker_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv307) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_prim_exp_ker_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv305) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((p : 'tv_prim_exp_ker_) : 'tv_prim_exp_ker_) = _v in
    ((let _v : 'tv_exp_ker_without_paren = 
# 106 "parser.mly"
                            ( KER.Prim p )
# 5611 "parser.ml"
     in
    _menhir_goto_exp_ker_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)) : 'freshtv308)

and _menhir_reduce47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_IDENT__ = 
# 142 "<standard.mly>"
    ( [] )
# 5620 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (string)
# 5627 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5639 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41) : 'freshtv300)
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv301 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5655 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 9 "parser.mly"
       (string)
# 5660 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_IDENT_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 5665 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv302)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv303 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5675 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)

and _menhir_reduce116 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5683 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (
# 9 "parser.mly"
       (string)
# 5689 "parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_state = 
# 136 "parser.mly"
          ( x )
# 5694 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv297) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_state) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState84 | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv249 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | RPAREN ->
                _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv251 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)) : 'freshtv254)
    | MenhirState0 | MenhirState90 | MenhirState87 | MenhirState81 | MenhirState61 | MenhirState76 | MenhirState73 | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv255 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL_LIT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | INT_LIT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | NOT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | RPAREN ->
                _menhir_reduce49 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv256)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv257 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)) : 'freshtv260)
    | MenhirState117 | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv261 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | END | PIPE ->
                _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv262)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv263 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv273 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv271 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (g : 'tv_atom)), _, (s : 'tv_inst_atom_)), _, (q : 'tv_state)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_transition_efsm = 
# 41 "parser.mly"
                                              ( (g,s,q) )
# 5809 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_transition_efsm) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IF ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | END | PIPE ->
            _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv268)) : 'freshtv270)) : 'freshtv272)) : 'freshtv274)
    | MenhirState144 | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv275 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IF ->
                _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | AND | IN ->
                _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv276)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv277 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)) : 'freshtv280)
    | MenhirState150 | MenhirState125 | MenhirState141 | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv283 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (q : 'tv_state)) = _menhir_stack in
        let _v : 'tv_automaton_hsm = 
# 49 "parser.mly"
          ( HSM.State q )
# 5865 "parser.ml"
         in
        _menhir_goto_automaton_hsm _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)) : 'freshtv284)
    | MenhirState261 | MenhirState237 ->
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
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
            | RPAREN ->
                _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) MenhirState239
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState239) : 'freshtv286)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv287 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)) : 'freshtv290)
    | MenhirState267 | MenhirState235 | MenhirState258 | MenhirState251 | MenhirState245 ->
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
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
            | IDENT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
            | INT_LIT _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
            | LPAREN ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | MINUS ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | NOT ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | ONE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | ZERO ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | RPAREN ->
                _menhir_reduce49 _menhir_env (Obj.magic _menhir_stack) MenhirState247
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState247) : 'freshtv292)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv293 * _menhir_state * 'tv_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)) : 'freshtv296)
    | _ ->
        _menhir_fail ()) : 'freshtv298)

and _menhir_run66 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 9 "parser.mly"
       (string)
# 5942 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | IDENT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | INT_LIT _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | LPAREN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | MINUS ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | NOT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
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

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState54 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv248)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run99 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PIPE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239) = Obj.magic _menhir_stack in
        ((let x = () in
        let _v : 'tv_option_PIPE_ = 
# 116 "<standard.mly>"
    ( Some x )
# 6039 "parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv240)) : 'freshtv242)
    | IDENT _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_PIPE_ = 
# 114 "<standard.mly>"
    ( None )
# 6048 "parser.ml"
         in
        _menhir_goto_option_PIPE_ _menhir_env _menhir_stack _v) : 'freshtv244)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)

and _menhir_run126 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv236)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)

and _menhir_run56 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (string)
# 6088 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce116 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv233) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_std_logic = 
# 147 "parser.mly"
       ( Atom.Zero )
# 6105 "parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv231) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_std_logic = 
# 148 "parser.mly"
       ( Atom.One )
# 6119 "parser.ml"
     in
    _menhir_goto_std_logic _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)

and _menhir_run153 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153

and _menhir_run154 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154

and _menhir_run155 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState155
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155

and _menhir_run156 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run219 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState156 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState157 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState157) : 'freshtv230)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156

and _menhir_run163 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "parser.mly"
       (int)
# 6246 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv227) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 11 "parser.mly"
       (int)
# 6256 "parser.ml"
    )) : (
# 11 "parser.mly"
       (int)
# 6260 "parser.ml"
    )) = _v in
    ((let _v : 'tv_prim_exp_ker_ = 
# 141 "parser.mly"
                           ( Atom.Int n )
# 6265 "parser.ml"
     in
    _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv228)

and _menhir_run164 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164

and _menhir_run165 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (string)
# 6303 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLONEQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6315 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL_LIT _v ->
            _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | IDENT _v ->
            _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | IF ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | INT_LIT _v ->
            _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | LET ->
            _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | LPAREN ->
            _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | MINUS ->
            _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | NOT ->
            _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState203) : 'freshtv216)
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6349 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL_LIT _v ->
            _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
        | IDENT _v ->
            _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
        | IF ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | INT_LIT _v ->
            _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
        | LET ->
            _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | LPAREN ->
            _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | MINUS ->
            _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | NOT ->
            _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | ONE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv219 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6377 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState166 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv217 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6385 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (x : (
# 9 "parser.mly"
       (string)
# 6391 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_exp_ker_without_paren = 
# 119 "parser.mly"
                            ( KER.App(x,[]) )
# 6398 "parser.ml"
             in
            _menhir_goto_exp_ker_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)) : 'freshtv220)
        | ZERO ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166) : 'freshtv222)
    | AND | COMMA | ELSE | EOF | EQ | GE | GT | IN | LAND | LE | LT | MINUS | NEQ | PIPE_PIPE | PLUS | RPAREN | SEMICOL | THEN | TIMES ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6412 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 9 "parser.mly"
       (string)
# 6417 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_exp_ker_without_paren = 
# 105 "parser.mly"
                            ( KER.Var x )
# 6422 "parser.ml"
         in
        _menhir_goto_exp_ker_without_paren _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6432 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)

and _menhir_run168 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 10 "parser.mly"
       (bool)
# 6440 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv213) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 10 "parser.mly"
       (bool)
# 6450 "parser.ml"
    )) : (
# 10 "parser.mly"
       (bool)
# 6454 "parser.ml"
    )) = _v in
    ((let _v : 'tv_prim_exp_ker_ = 
# 139 "parser.mly"
                           ( Atom.Bool b )
# 6459 "parser.ml"
     in
    _menhir_goto_prim_exp_ker_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState267 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state * 'tv_automaton_psm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState261 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state * 'tv_psi_psm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState258 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv21 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_psm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState254 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state * 'tv_transition_psm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState251 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState247 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState245 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv29 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState243 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState242 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv33 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState239 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState237 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv40)
    | MenhirState226 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_binding_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState223 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_ker_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState220 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6540 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState217 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * 'tv_fun_binding_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState214 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv49 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_fun_binding_ker_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState210 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv51 * _menhir_state) * _menhir_state * 'tv_exp_ker)) * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state) * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState205 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv55 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6569 "parser.ml"
        ))) * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6578 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv61 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6592 "parser.ml"
        ))) * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState195 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState191 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState189 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState185 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState181 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState179 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState177 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * 'tv_exp_ker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6656 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv89 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6670 "parser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6679 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState157 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv104)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_automaton_hsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * 'tv_psi_hsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv109 * _menhir_state)) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_hsm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state * 'tv_transition_hsm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv113 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv124)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state * 'tv_automaton_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * 'tv_psi_efsm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * 'tv_transition_efsm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv131 * _menhir_state) * _menhir_state * 'tv_atom)) * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state) * 'tv_option_PIPE_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv142)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state * 'tv_binding_csm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv145 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_binding_csm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6820 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state * 'tv_psi_csm)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv151 * _menhir_state) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_AND_psi_csm_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_transition_csm) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv155 * _menhir_state * 'tv_inst_atom_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv159 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6854 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv161 * _menhir_state) * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv165 * _menhir_state * 'tv_state)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167 * _menhir_state * 'tv_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv175 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 6903 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state * 'tv_atom)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv212)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | RPAREN ->
        _menhir_reduce47 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run236 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState237) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (string)
# 7036 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLONEQ ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack)
    | LPAREN ->
        _menhir_reduce116 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 9 "parser.mly"
       (string)
# 7054 "parser.ml"
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
# 27 "parser.mly"
       (Ast.CSM.prog)
# 7074 "parser.ml"
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
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RETURN ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv10))

and efsm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 24 "parser.mly"
       (Ast.EFSM.prog)
# 7104 "parser.ml"
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
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv8))

and hsm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 25 "parser.mly"
       (Ast.HSM.prog)
# 7128 "parser.ml"
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
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
    | LET ->
        _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState125
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv6))

and ker : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 28 "parser.mly"
       (Ast.KER.prog)
# 7154 "parser.ml"
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
    | BOOL_LIT _v ->
        _menhir_run168 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v
    | IDENT _v ->
        _menhir_run165 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v
    | IF ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState152
    | INT_LIT _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v
    | LET ->
        _menhir_run156 _menhir_env (Obj.magic _menhir_stack) MenhirState152
    | LPAREN ->
        _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState152
    | MINUS ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState152
    | NOT ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState152
    | ONE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState152
    | ZERO ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState152
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152) : 'freshtv4))

and psm : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 26 "parser.mly"
       (Ast.PSM.prog)
# 7196 "parser.ml"
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
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | LET ->
        _menhir_run236 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | LPAREN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState235) : 'freshtv2))

# 269 "<standard.mly>"
  

# 7224 "parser.ml"
