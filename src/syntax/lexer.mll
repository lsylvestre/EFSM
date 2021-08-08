{
  open Parser
  exception Eof

}

let ident = ['a'-'z''A'-'Z'] ['a'-'z''A'-'Z''0'-'9''_''A'-'Z'''']*
let cap_ident = ['A'-'Z'] ['a'-'z''A'-'Z''0'-'9''_''A'-'Z'''']*

rule token = parse
| '('               { LPAREN }
| ')'               { RPAREN }
| ":="              { COLONEQ }
| ','               { COMMA }
| ';'               { SEMICOL }
| '|'               { PIPE }
| "->"              { RIGHT_ARROW }
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
| "["               { LBRACKET }
| "]"               { RBRACKET }
| "^"               { HAT }
| "int"             { INT }
| "bool"            { BOOL }
| "array"           { ARRAY }
| "std_logic"       { STD_LOGIC }
| "call"            { CALL }
| "ref"             { REF }
| "ptr"             { PTR }
| ['!']             { BANG }
| ['.']             { DOT }
| "<-"              { LEFT_ARROW }
| [':']             { COL }
| "array_length"    { ARRAY_LENGTH }
| "hd"              { LIST_HD }
| "tl"              { LIST_TL }
| "list"            { LIST }
| "circuit"         { CIRCUIT }
| "do"              { DO }
| "par"             { PAR }
| cap_ident as lxm      { CAP_IDENT lxm }
| ident as lxm      { IDENT lxm }
| ['_']             { WILDCARD }
| ['\n' ]           { (Lexing.new_line lexbuf) ; (token lexbuf) }
| [' ' '\t']        { token lexbuf }
| ";;" (( _ * ) as lxm) eof { QUOTE(lxm) }
| "(*"              { comment lexbuf }
| eof               { EOF }
| _  as lxm         { failwith (Printf.sprintf "Unexpected character: %c"  lxm) }

and comment = parse
| "*)" { token lexbuf }
| _    { comment lexbuf }
