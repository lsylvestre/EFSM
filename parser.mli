
(* The type of tokens. *)

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
  | INT_LIT of (int)
  | IN
  | IF
  | IDENT of (string)
  | GT
  | GE
  | EQ
  | EOF
  | END
  | COMMA
  | COLONEQ
  | BOOL_LIT of (bool)
  | AUTOMATON
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val psm: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.PSM.prog)

val hsm: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.HSM.prog)

val efsm: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.EFSM.prog)

val csm: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.CSM.prog)
