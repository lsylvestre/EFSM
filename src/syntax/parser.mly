%{
    open Ast
    open Types
%}

%token EOF 
%token LPAREN RPAREN COMMA PIPE_PIPE EQ COLONEQ SEMICOL
%token PIPE LEFT_ARROW AUTOMATON END
%token LET REC AND IN IF THEN ELSE RETURN
%token WILDCARD
%token <string> IDENT
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
%start <Ast.HSM.prog> hsm
%start <Ast.PSM.prog> psm
%start <Ast.CSM.prog> csm
%start <Ast.LI.prog> li
%start <Ast.PLATFORM.prog> platform

%%

efsm:
| p=separated_nonempty_list(PIPE_PIPE,automaton_efsm) EOF { p }

automaton_efsm:
| AUTOMATON PIPE? l=separated_nonempty_list(PIPE,psi_efsm) END { EFSM.Automaton l }

psi_efsm:
| q=state LEFT_ARROW ts=transition_efsm* { (q,ts) }

transition_efsm:
| IF g=atom THEN s=inst(atom) SEMICOL q=state { (g,s,q) }

/*  ******************* HSM ******************* */

hsm:
| p=separated_nonempty_list(PIPE_PIPE,automaton_hsm) EOF { p }

automaton_hsm:
| q=state { HSM.State q }
| LET REC bs=separated_nonempty_list(AND,psi_hsm) IN a=automaton_hsm { HSM.LetRec (bs,a) }

psi_hsm:
| q=state EQ ts=transition_hsm* { (q,ts) }

transition_hsm:
| IF g=atom THEN s=inst(atom) SEMICOL a=automaton_hsm { (g,s,a) }

/*  ******************* PSM ******************* */

psm:
| p=separated_nonempty_list(PIPE_PIPE,automaton_psm) EOF { p }

automaton_psm:
| q=state LPAREN es=separated_list(COMMA,atom) RPAREN { PSM.State (q,es) }
| s=inst(atom) SEMICOL a=automaton_psm { PSM.Seq(s,a) } 
| LET REC bs=separated_nonempty_list(AND,psi_psm) IN a=automaton_psm { PSM.LetRec (bs,a) }

psi_psm:
| q=state LPAREN xs=separated_list(COMMA,ident) RPAREN EQ ts=transition_psm* { (q,xs,ts) }

transition_psm:
| IF g=atom THEN a=automaton_psm { (g,a) }

/*  ******************* CSM ******************* */

csm:
| a=automaton_csm EOF { a }

automaton_csm:
| q=state LPAREN es=separated_list(COMMA,atom) RPAREN { CSM.State (q,es) }
| s=inst(atom) SEMICOL a=automaton_csm { CSM.Seq(s,a) } 
| LET REC bs=separated_nonempty_list(AND,psi_csm) IN a=automaton_csm { CSM.LetRec (bs,a) }
| RETURN a=atom { CSM.Return a }
| LET bs=separated_nonempty_list(AND,binding_csm) IN a=automaton_csm { CSM.Let (bs,a) }

psi_csm:
| q=state LPAREN xs=separated_list(COMMA,ident) RPAREN EQ ts=transition_csm* { (q,xs,ts) }

transition_csm:
| a=automaton_csm { (mk_bool' true,a) }
| IF e=atom THEN a=automaton_csm { (e,a) }

binding_csm:
| x=ident EQ a=automaton_csm { (x,a) }

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
  RIGHT_ARROW e=exp_li 
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
| LPAREN RPAREN            { Unit }
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

