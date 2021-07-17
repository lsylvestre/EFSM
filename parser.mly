%{
    open Ast
%}

%token EOF 
%token LPAREN RPAREN COMMA PIPE_PIPE EQ COLONEQ SEMICOL
%token PIPE LEFT_ARROW AUTOMATON END
%token LET REC AND IN IF THEN ELSE RETURN
%token <string> IDENT
%token <bool> BOOL_LIT 
%token <int> INT_LIT
%token PLUS MINUS TIMES LT LE GT GE NEQ LAND NOT
%token UMINUS
%token ZERO ONE /* std_logic values */

%left PIPE_PIPE
%left LAND
%left LT LE GT GE NEQ EQ
%left PLUS MINUS
%left TIMES
%nonassoc NOT UMINUS


%start <Ast.EFSM.prog> efsm
%start <Ast.HSM.prog> hsm
%start <Ast.PSM.prog> psm
%start <Ast.CSM.prog> csm
%start <Ast.KER.prog> ker
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
| q=state LPAREN xs=separated_list(COMMA,IDENT) RPAREN EQ ts=transition_psm* { (q,xs,ts) }

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
| q=state LPAREN xs=separated_list(COMMA,IDENT) RPAREN EQ ts=transition_csm* { (q,xs,ts) }

transition_csm:
| a=automaton_csm { (Atom.Prim(Bool true),a) }
| IF e=atom THEN a=automaton_csm { (e,a) }

binding_csm:
| x=IDENT EQ a=automaton_csm { (x,a) }

/*  ******************* ker ******************* */
ker:
| e=exp_ker EOF { e }

exp_ker:
| LPAREN e=exp_ker RPAREN   { e }
| e=exp_ker_without_paren   { e }

exp_ker_without_paren:
| x=IDENT                   { KER.Var x }
| p=prim(exp_ker)           { KER.Prim p }
| x=IDENT COLONEQ e=exp_ker SEMICOL e2=exp_ker 
  { KER.Seq(Inst.Assign [(x,e)],e2) }
/*| s=inst(exp_ker) SEMICOL e=exp_ker  { KER.Seq(s,e) }*/
| LET bs=separated_nonempty_list(AND,binding_ker) 
  IN e=exp_ker              { KER.Let (bs,e) }
| LET REC bs=separated_nonempty_list(AND,fun_binding_ker) 
  IN e=exp_ker              { KER.LetRec (bs,e) }
| x=IDENT LPAREN 
  e1=exp_ker COMMA es=separated_nonempty_list(COMMA,exp_ker) RPAREN      
                             { KER.App(x,e1::es) }
| x=IDENT LPAREN e=exp_ker_without_paren RPAREN  
                             { KER.App(x,[e]) }
| x=IDENT LPAREN RPAREN     { KER.App(x,[]) }
| IF e1=exp_ker
  THEN e2=exp_ker
  ELSE e3=exp_ker           { KER.If(e1,e2,e3) } 

/* array, map, reduce */

binding_ker:
| x=IDENT EQ e=exp_ker      { (x,e) }

fun_binding_ker:
| f=IDENT LPAREN xs=separated_list(COMMA,IDENT) RPAREN EQ e=exp_ker { (f,xs,e) }


/*  ******************* Atoms and instructions ******************* */

state:
| x=IDENT { x }

prim(E):
| b=BOOL_LIT               { Atom.Bool b }
| v=std_logic              { Atom.Std_logic v }
| n=INT_LIT                { Atom.Int n }       
| a1=E c=binop a2=E  { Atom.Binop(c,a1,a2) }
| NOT a=E { Atom.Unop(Not,a) }
| MINUS a=E %prec UMINUS { Atom.Unop(Uminus,a) }

std_logic:
| ZERO { Atom.Zero }
| ONE  { Atom.One }

atom:
| x=IDENT                { Atom.Var x }
| p=prim(atom)           { Atom.Prim p }
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
| x=IDENT COLONEQ a=E { Inst.Assign [ (x,a) ] }
| LPAREN xs=separated_list(COMMA,IDENT) RPAREN 
  COLONEQ LPAREN es=separated_list(COMMA,E) RPAREN { Inst.Assign (List.combine xs es) }
