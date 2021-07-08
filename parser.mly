%{
    open Ast
%}

%token EOF 
%token LPAREN RPAREN COMMA PIPE_PIPE EQ COLONEQ SEMICOL
%token PIPE LEFT_ARROW AUTOMATON END
%token LET REC AND IN IF THEN RETURN
%token <string> IDENT
%token <bool> BOOL_LIT 
%token <int> INT_LIT
%token PLUS MINUS TIMES LT LE GT GE NEQ LAND NOT
%token UMINUS

%left PLUS MINUS
%left TIMES
%nonassoc UMINUS


%start <Ast.EFSM.prog> efsm
%start <Ast.HSM.prog> hsm
%start <Ast.PSM.prog> psm
%start <Ast.CSM.prog> csm
%%

efsm:
| p=separated_nonempty_list(PIPE_PIPE,automaton_efsm) EOF { p }

automaton_efsm:
| AUTOMATON PIPE? l=separated_nonempty_list(PIPE,psi_efsm) END { EFSM.Automaton l }

psi_efsm:
| q=state LEFT_ARROW ts=transition_efsm* { (q,ts) }

transition_efsm:
| IF g=atom THEN s=inst SEMICOL q=state { (g,s,q) }

/*  ******************* HSM ******************* */

hsm:
| p=separated_nonempty_list(PIPE_PIPE,automaton_hsm) EOF { p }

automaton_hsm:
| q=state { HSM.State q }
| LET REC bs=separated_nonempty_list(AND,psi_hsm) IN a=automaton_hsm { HSM.LetRec (bs,a) }

psi_hsm:
| q=state EQ ts=transition_hsm* { (q,ts) }

transition_hsm:
| IF g=atom THEN s=inst SEMICOL a=automaton_hsm { (g,s,a) }

/*  ******************* PSM ******************* */

psm:
| p=separated_nonempty_list(PIPE_PIPE,automaton_psm) EOF { p }

automaton_psm:
| q=state LPAREN es=separated_list(COMMA,atom) RPAREN { PSM.State (q,es) }
| s=inst SEMICOL a=automaton_psm { PSM.Seq(s,a) } 
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
| s=inst SEMICOL a=automaton_csm { CSM.Seq(s,a) } 
| LET REC bs=separated_nonempty_list(AND,psi_csm) IN a=automaton_csm { CSM.LetRec (bs,a) }
| RETURN a=atom { CSM.Return a }
| LET bs=separated_nonempty_list(AND,binding_csm) IN a=automaton_csm { CSM.Let (bs,a) }

psi_csm:
| q=state LPAREN xs=separated_list(COMMA,IDENT) RPAREN EQ ts=transition_csm* { (q,xs,ts) }

transition_csm:
| IF g=atom THEN a=automaton_csm { (g,a) }

binding_csm:
| x=IDENT EQ a=automaton_csm { (x,a) }

/*  ******************* Atoms and instructions ******************* */

state:
| x=IDENT { x }

atom:
| x=IDENT                  { Atom.Var x }
| b=BOOL_LIT               { Atom.Prim(Bool b) }
| n=INT_LIT                { Atom.Prim(Int n) }
| a1=atom c=binop a2=atom  { Atom.Prim(Binop(c,a1,a2)) }
| NOT a=atom { Atom.Prim(Unop(Not,a)) }
| MINUS a=atom %prec UMINUS { Atom.Prim(Unop(Uminus,a)) }

binop:
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

inst:
| x=IDENT COLONEQ a=atom { Inst.Assign [ (x,a) ] }
| LPAREN xs=separated_list(COMMA,IDENT) RPAREN 
  COLONEQ LPAREN es=separated_list(COMMA,atom) RPAREN { Inst.Assign (List.combine xs es) }
