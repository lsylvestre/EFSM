
(* The type of tokens. *)

type token = 
  | ZERO
  | UMINUS
  | TIMES
  | THEN
  | STD_LOGIC
  | SEMICOL
  | RPAREN
  | RETURN
  | REC
  | RBRACKET
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
  | COMMA
  | COLONEQ
  | COL
  | BOOL_LIT of (bool)
  | BOOL
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
