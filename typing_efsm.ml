open Ast
open Variables

(* variables lues *)

let rv_transition (_,ts) = 
  accum (fun (a,s,_) -> Vs.union (rv_atom a) (rv_inst s)) ts

let rv_automaton (EFSM.Automaton l) =
  accum rv_transition l

(* variables écrites *)

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
  let rs = List.fold_left Vs.union Vs.empty rl in
  let ws = List.fold_left Vs.union Vs.empty wl in
  let vl = List.map (Vs.inter rs) wl in
  let vs = List.fold_left (fun acc vs -> 
              if (Vs.disjoint vs acc) 
              then Vs.union acc vs
              else failwith "Typing_efsl: driving signal from different processes"
              ) Vs.empty vl in
  let rs = Vs.diff rs vs in
  let ws = Vs.diff ws vs in
  (rs,ws,vl)

(* typage *)

open Types_efsm

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

let rec typ_atom env a =
  let open Atom in
  match a with
  | Var x -> 
    (match Tenv.find_opt env x with
     | None ->
        let v = newvar() in
        Tenv.add env x v; v
     | Some ty -> 
        ty)
  | Const c -> 
      (match c with
      | Std_logic _ -> TStd_logic
      | Bool _ -> TBool 
      | Int _ -> TInt)
  | Prim (Binop c,[a1;a2]) -> 
      (match c with
      | (Add|Sub|Mul) ->
          unify env (typ_atom env a1) TInt;
          unify env (typ_atom env a2) TInt;
          TInt
      | (Lt|Le|Gt|Ge) ->
          unify env (typ_atom env a1) TInt;
          unify env (typ_atom env a2) TInt;
          TBool  
      | (Eq|Neq) -> 
          let t1 = typ_atom env a1 in
          let t2 = typ_atom env a2 in
          unify env t1 t2;
          TBool
      | (And|Or) -> 
          unify env (typ_atom env a1) TBool;
          unify env (typ_atom env a2) TBool;
          TBool)
  | Prim (Unop c,[a]) -> 
      (match c with
       | Not -> 
          unify env (typ_atom env a) TBool;
          TBool
       | Uminus ->
          unify env (typ_atom env a) TInt;
          TInt)
  | Prim _ -> 
      failwith "typing-efsm: bad arity"

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
  (* Si des variables de types ne sont pas instantiées dans [t],
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
  let (rvs,wvs,vl) = v_prog p in
  let f vs = 
    Vs.fold (fun x acc ->
               let ty = canon @@ Tenv.find env x in
               (* [ty] est un type en forme normale. *)
              (x,ty)::acc)
      vs [] 
  in
  (f rvs, f wvs, List.map f vl) 
