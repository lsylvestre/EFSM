
(* The type of tokens. *)

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
  | INT_LIT of (int)
  | INT
  | IN
  | IF
  | IDENT of (string)
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
  | BOOL_LIT of (bool)
  | BOOL
  | BANG
  | AUTOMATON
  | ARRAY
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val psm: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.PSM.prog)

val li: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.LI.prog)

val hsm: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.HSM.prog)

val efsm: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.EFSM.prog)

val csm: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.CSM.prog)
