
(* The type of tokens. *)

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
  | QUOTE of (string)
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
  | CIRCUIT
  | CALL
  | BOOL_LIT of (bool)
  | BOOL
  | BANG
  | AUTOMATON
  | ARRAY_LENGTH
  | ARRAY
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val psm: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.PSM.prog)

val platform: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.PLATFORM.prog)

val li: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.LI.prog)

val hsm: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.HSM.prog)

val efsm: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.EFSM.prog)

val csm: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.CSM.prog)
