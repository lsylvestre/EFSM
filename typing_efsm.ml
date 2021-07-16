open Ast


module Vs = Set.Make(String);;

let accum f l = 
  List.fold_left (fun acc x -> Vs.union acc (f x)) Vs.empty l

(* variables lues *)

let rec rv_atom = function
| Atom.Var x -> Vs.singleton x
| Atom.Prim c -> 
    match c with
    | Std_logic _ | Bool _ | Int _ -> Vs.empty
    | Binop (_,a1,a2) -> Vs.union (rv_atom a1) (rv_atom a2)
    | Unop (_,a) -> rv_atom a

let rv_inst = function
| Inst.Assign bs -> 
    accum (fun (_,e) -> rv_atom e) bs

let rv_transition (_,ts) = 
  accum (fun (a,s,_) -> Vs.union (rv_atom a) (rv_inst s)) ts

let rv_automaton (EFSM.Automaton l) =
  accum rv_transition l

(* variables écrites *)

let wv_inst = function
| Inst.Assign bs -> 
    accum (fun (x,_) -> Vs.singleton x) bs

let wv_transition (_,ts) = 
  accum (fun (_,s,_) -> wv_inst s) ts

let wv_automaton (EFSM.Automaton l) =
  accum wv_transition l

(* variables locales *)

let localv_automaton a =
   Vs.inter (rv_automaton a) (wv_automaton a)

let v_prog p =
  let rl = List.map rv_automaton p in
  let wl = List.map wv_automaton p in
  let vl = List.map2 Vs.inter rl wl in
  let vs = let rec check acc = function
           | [] -> acc
           | vs::l -> if Vs.disjoint vs acc then check (Vs.union vs acc) l
                      else assert false 
           in 
           check Vs.empty vl
  in
  let r = List.fold_left Vs.union Vs.empty rl in
  let w = List.fold_left Vs.union Vs.empty wl in
  let rvs = Vs.diff (accum (fun x -> x) rl) (Vs.union vs w) in  
  let wvs = Vs.diff (accum (fun x -> x) wl) (Vs.union vs r) in
  let locals_shared =  Vs.diff 
                          (Vs.inter (accum (fun x -> x) rl)
                                    (accum (fun x -> x) wl)) vs in
  (rvs,wvs,vl, locals_shared)

(* typage *)

type ty = 
| TStd_logic 
| TBool 
| TInt 
| TVar of tvar ref
and tvar = V of int | Ty of ty

module Tenv = Hashtbl;;

let rec print_ty fmt ty = 
  let open Format in 
  match ty with
  | TStd_logic -> pp_print_text fmt "std_logic"
  | TBool -> pp_print_text fmt "bool"
  | TInt -> pp_print_text fmt "int"
  | TVar{contents=V n} -> fprintf fmt "'a%d" n
  | TVar{contents=Ty t} -> print_ty fmt t

let print_env fmt env = 
  Tenv.iter (fun x t -> Format.fprintf fmt "(%s, %a);" x print_ty t) env

let newvar = 
  let c = ref 0 in
  fun () -> TVar (ref (V (!c)))

let rec unify env t1 t2 = match t1,t2 with
| TStd_logic, TStd_logic | TBool, TBool | TInt,TInt -> ()
| TVar {contents=V n},TVar ({contents=V m} as v) -> 
v := V n
| TVar {contents=Ty ty},TVar ({contents=V n} as v) 
| TVar ({contents=V n} as v),TVar {contents=Ty ty} -> v := Ty ty
| TVar {contents=Ty t1'},TVar {contents=Ty t2'} -> unify env t1' t2'
| TVar {contents=Ty t},t' | t,TVar {contents=Ty t'} -> unify env t t' 
| TVar ({contents=V n} as v),t | t,TVar ({contents=V n} as v) -> v := Ty t
| _ -> print_env Format.std_formatter env;
       Format.fprintf Format.std_formatter "\ncannot unify types %a and %a\n" 
         print_ty t1 
         print_ty t2;
       failwith "unify"

let rec typ_atom env = function 
| Atom.Var x -> 
  (match Tenv.find_opt env x with
   | None ->
      let v = newvar() in
      Tenv.add env x v; v
   | Some ty -> 
      ty)
| Atom.Prim c -> 
  match c with
  | Std_logic _ -> TStd_logic
  | Bool _ -> TBool 
  | Int _ -> TInt 
  | Binop (Add,a1,a2)
  | Binop (Sub,a1,a2)
  | Binop (Mul,a1,a2) -> 
      unify env (typ_atom env a1) TInt;
      unify env (typ_atom env a2) TInt;
      TInt
  | Binop (Lt,a1,a2)
  | Binop (Le,a1,a2)
  | Binop (Gt,a1,a2)
  | Binop (Ge,a1,a2) ->
      unify env (typ_atom env a1) TInt;
      unify env (typ_atom env a2) TInt;
      TBool  
  | Binop (Eq,a1,a2)
  | Binop (Neq,a1,a2) -> 
      let t1 = typ_atom env a1 in
      let t2 = typ_atom env a2 in
      unify env t1 t2;
      TBool
  | Binop (And,a1,a2)
  | Binop (Or,a1,a2) -> 
      unify env (typ_atom env a1) TBool;
      unify env (typ_atom env a2) TBool;
      TBool 
 | Unop (Not,a) ->
      unify env (typ_atom env a) TBool;
      TBool
  | Unop (Uminus,a) ->
      unify env (typ_atom env a) TInt;
      TInt

let typ_inst env = function
| Inst.Assign bs -> 
    List.iter (fun (x,a) -> 
                 let t = typ_atom env a in 
                   match Tenv.find_opt env x with
                   | None -> 
                       Tenv.add env x t 
                   | Some ty -> unify env ty t) bs

let typ_transition env (_,ts) = 
  List.iter (fun (a,s,_) ->
               unify env TBool (typ_atom env a); 
               typ_inst env s) ts

let check_state_scope glob_states (EFSM.Automaton l) =
  let qs = List.fold_left (fun qs (q,_) -> Vs.add q qs) Vs.empty l in
  List.iter (fun (_,ts) -> 
    List.iter (fun (_,_,q) -> 
                 if not (Vs.mem q qs) then 
                 if not (List.mem q glob_states) then
                 failwith ("typing_efsm: unbound state " ^ q)
     ) ts
  ) l


let typ_automaton glob_states env ((EFSM.Automaton l) as a) =
  check_state_scope glob_states a;
  List.iter (typ_transition env) l

let rec canon t = 
  (* Si des variables de types ne peuvent pas être instantiées,
     une exception est lancée *)
  match t with 
  | TVar{contents=Ty t} -> 
      canon t
  | TVar{contents=V n} -> 
      failwith "Typing_efsm.canon: uninstantiated type variable"
  | t -> t

let typ_prog p =
  let env = Tenv.create 10 in
  List.iter (typ_automaton [] env) p;
  let (rvs,wvs,vl,v_local_shared) = v_prog p in
  let f vs = 
    Vs.fold (fun x acc ->
               let ty = canon @@ Tenv.find env x in
               (* [ty] est un type en forme normale. *)
              (x,ty)::acc)
      vs [] 
  in
  (f rvs, f wvs, List.map f vl,f v_local_shared) 
