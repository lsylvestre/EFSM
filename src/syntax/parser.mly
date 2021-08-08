%{
    open Ast
    open Types
%}

%token EOF 
%token LPAREN RPAREN COMMA PIPE_PIPE EQ COLONEQ SEMICOL
%token PIPE LEFT_ARROW AUTOMATON END
%token LET REC AND IN IF THEN ELSE RETURN
%token WILDCARD
%token <string> IDENT CAP_IDENT
%token <bool> BOOL_LIT 
%token <int> INT_LIT
%token PLUS MINUS TIMES LT LE GT GE NEQ LAND NOT
%token UMINUS
%token ZERO ONE /* std_logic values */
%token LBRACKET RBRACKET HAT
%token INT BOOL ARRAY STD_LOGIC COL
%token BANG
%token CALL REF PTR
%token DOT RIGHT_ARROW ARRAY_LENGTH
%token LIST LIST_HD LIST_TL
%token CIRCUIT
%token DO PAR
%token <string> QUOTE

%left COLONEQ
%left PIPE_PIPE
%left LAND
%left LT LE GT GE NEQ EQ
%left PLUS MINUS
%left TIMES
%nonassoc NOT UMINUS
%nonassoc BANG 
%nonassoc ARRAY_LENGTH LIST_HD LIST_TL 

%start <Ast.EFSM.prog> efsm
%start <Ast.FCF.prog> fcf
%start <Ast.LI.prog> li
%start <Ast.PLATFORM.prog> platform

%%

efsm:
| p=separated_nonempty_list(PIPE_PIPE,automaton_efsm) EOF { p }

automaton_efsm:
| AUTOMATON PIPE? l=separated_nonempty_list(PIPE,psi_efsm) END { EFSM.Automaton l }

psi_efsm:
| q=state RIGHT_ARROW ts=transition_efsm* { (q,ts) }

transition_efsm:
| IF g=atom THEN s=inst(atom) SEMICOL q=state { (g,s,q) }

/*  ******************* FCF ******************* */

fcf:
| a=exp_fcf EOF { a }

p_state(E):
| q=CAP_IDENT { (q,[])}
| q=CAP_IDENT LPAREN l=separated_list(COMMA,E) RPAREN { (q,l) }

exp_fcf:
| LPAREN e=exp_fcf RPAREN                        { e }
| a=atom                                         { FCF.Atom a }
| p=p_state(atom)                                { FCF.State p }
| IF a=atom THEN e1=exp_fcf ELSE e2=exp_fcf      { FCF.If(a,e1,e2) } 
| DO x=IDENT COLONEQ a=atom IN e=exp_fcf         { FCF.Assign(x,a,e) } 
| LET AUTOMATON 
        bs=separated_nonempty_list(PIPE,b_fcf) 
      END IN a=exp_fcf                           { FCF.LetAutomaton (bs,a) }
| LET x=ident EQ e1=exp_fcf IN e2=exp_fcf        { FCF.Let(x,e1,e2) }
| LET PAR 
    bs=separated_nonempty_list(AND,binding_fcf) 
  IN e=exp_fcf                                   { FCF.LetPar (bs,e) }

b_fcf:
| b=p_state(ident) RIGHT_ARROW e=exp_fcf { let (q,xs) = b in (q,xs,e) }

binding_fcf:
| x=ident EQ e=exp_fcf { (x,e) }

/*  ******************* LI ******************* */
li:
| e=exp_li EOF { e }

exp_li:
| LPAREN e=exp_li RPAREN   { e }
| e=exp_li_without_paren   { e }

exp_li_without_paren:
| x=ident                  { LI.Var x }
| c=const(exp_li)          { LI.Const c }
| p=prim(exp_li)           { LI.Prim p }
/*| x=ident COLONEQ e=exp_li SEMICOL e2=exp_li 
                           { LI.Seq(Inst.Assign [(x,e)],e2) }*/
| s=inst(exp_li) SEMICOL e=exp_li  { LI.Seq(s,e) }
| LET bs=separated_nonempty_list(AND,binding_li) 
  IN e=exp_li              { LI.Let (bs,e) }
| LET REC bs=separated_nonempty_list(AND,fun_binding_li) 
  IN e=exp_li              { LI.LetRec (bs,e) }
| x=ident LPAREN 
  e1=exp_li COMMA es=separated_nonempty_list(COMMA,exp_li) RPAREN      
                            { LI.App(x,e1::es) }
| x=ident LPAREN e=exp_li RPAREN 
                            { LI.App(x,[e]) }
| x=ident LPAREN RPAREN     { LI.App(x,[]) }
| IF e1=exp_li
  THEN e2=exp_li
  ELSE e3=exp_li            { LI.If(e1,e2,e3) } 
| e=caml_prim               { LI.CamlPrim e }

caml_prim:
| BANG e=exp_li             { LI.RefAccess e }
| RPAREN r=exp_li LPAREN COLONEQ e=exp_li 
                            { LI.RefAssign{r;e} }
| x=ident COLONEQ e=exp_li  { LI.RefAssign{r=Var x;e} } 
| arr=exp_li DOT 
  LPAREN idx=exp_li RPAREN  { LI.ArrayAccess{arr;idx} }
| arr=exp_li DOT 
  LPAREN idx=exp_li RPAREN 
  LEFT_ARROW e=exp_li 
                            { LI.ArrayAssign{arr;idx;e} }
| ARRAY_LENGTH e=exp_li     { LI.ArrayLength e }
| LIST_HD e=exp_li          { LI.ListHd e }
| LIST_TL e=exp_li          { LI.ListTl e }


/* array, map, reduce */

binding_li:
| x=ident EQ e=exp_li      { (x,e) }

fun_binding_li:
| f=ident LPAREN xs=separated_list(COMMA,ident) RPAREN EQ e=exp_li { (f,xs,e) }


/*  ******************* Atoms and instructions ******************* */

state:
| x=ident { x }

const(E):
| b=BOOL_LIT               { mk_bool b }
| v=std_logic              { mk_std_logic v }
| n=INT_LIT                { mk_int n }       
| LPAREN RPAREN            { Atom.Unit }
| LBRACKET RBRACKET        { EmptyList }

prim(E): 
| a1=E c=binop a2=E             { mk_binop c a1 a2 }
| NOT a=E                       { mk_unop Atom.Not a  }
| MINUS a=E %prec UMINUS        { mk_unop Atom.Uminus a }
| x=ident LBRACKET a=E RBRACKET { mk_array_get x a }
| e=E HAT n=INT_LIT             { mk_array_make n e }
| LPAREN e=E COL t=ty RPAREN    { mk_ty_annot e t }
| CALL x=ident 
  LPAREN args= separated_nonempty_list(COMMA,E) RPAREN 
                                { mk_call x args }

std_logic:
| ZERO { Atom.Zero }
| ONE  { Atom.One }

atom:
| x=ident                { Atom.Var x }
| c=const(atom)          { mk_const c }
| p=prim(atom)           { mk_prim p }
| LPAREN a=atom RPAREN   { a }

%inline binop:
| PLUS { Atom.Add }
| MINUS { Atom.Sub }
| TIMES { Atom.Mul }
| LT { Atom.Lt }
| LE { Atom.Le }
| GT { Atom.Gt }
| GE { Atom.Ge }
| EQ { Atom.Eq }
| NEQ { Atom.Neq }
| LAND { Atom.And }
| PIPE_PIPE { Atom.Or }

inst(E):
| x=lvalue(E) COLONEQ a=E { Inst.Assign [ (x,a) ] }
| LPAREN xs=separated_list(COMMA,lvalue(E)) RPAREN 
  COLONEQ LPAREN es=separated_list(COMMA,E) RPAREN 
  { Inst.Assign (List.combine xs es) }

lvalue(E):
| x=ident                        { (x,None) }
| x=ident LBRACKET a=E RBRACKET  { (x,Some a) }

ty:
| LPAREN ty=ty RPAREN                  { ty }
| STD_LOGIC                            { TStd_logic }
| INT                                  { TInt }
| BOOL                                 { TBool }
| PTR                                  { TPtr }
| ty=ty REF                            { TCamlRef ty }
| ty=ty ARRAY                          { TCamlArray ty }
| ty=ty LIST                           { TCamlList ty }
| ty=ty ARRAY LPAREN n=INT_LIT RPAREN  { TArray{ty;size=TSize n} }

ident:
| x=IDENT { x }
| WILDCARD { Gensym.gensym "wildcard" }


/*  ******************* apps ******************* */

platform:
fs=circuit+ s=QUOTE  { (fs,s)}

circuit:
| CIRCUIT x=IDENT 
  LPAREN xs=separated_list(COMMA,ident) RPAREN
  EQ e=exp_li
                  { (x,xs,e) }

