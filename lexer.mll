{
  open Parser
  exception Eof

}

let ident = ['a'-'z''A'-'Z''_'] ['a'-'z''A'-'Z''0'-'9''_''A'-'Z'''']*

rule token = parse
| '('               { LPAREN }
| ')'               { RPAREN }
| ":="              { COLONEQ }
| ','               { COMMA }
| ';'               { SEMICOL }
| '|'               { PIPE }
| "->"              { LEFT_ARROW }
| "||"              { PIPE_PIPE }
| "automaton"       { AUTOMATON }
| "end"             { END }
| "let"             { LET }
| "rec"             { REC }
| "and"             { AND }
| "in"              { IN }
| "if"              { IF }
| "then"            { THEN }
| "else"            { ELSE }
| "return"          { RETURN }
| "true"            { BOOL_LIT true }
| "false"           { BOOL_LIT false }
| (['0'-'9']+) as n { INT_LIT (int_of_string n) }
| "not"             { NOT }
| "+"               { PLUS }
| "-"               { MINUS }
| "*"               { TIMES }
| "<"               { LT }
| "<="              { LE }
| ">"               { GT }
| ">="              { GE }
| "="               { EQ }
| "<>"              { NEQ }
| "&&"              { LAND }
| "'0'"             { ZERO }
| "'1'"             { ONE }
| ident as lxm      { IDENT lxm }
| ['\n' ]           { (Lexing.new_line lexbuf) ; (token lexbuf) }
| [' ' '\t']        { token lexbuf }
| "(*"              { comment lexbuf }
| eof               { EOF }
| _  as lxm         { failwith (Printf.sprintf "Unexpected character: %c"  lxm) }

and comment = parse
| "*)" { token lexbuf }
| _    { comment lexbuf }
