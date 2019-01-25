(***********************************************************************)
(*                                                                     *)
(*                           Objective Caml                            *)
(*                                                                     *)
(*               Pierre Weis, projet Cristal, INRIA Rocquencourt       *)
(*                                                                     *)
(*  Copyright 2001 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed    *)
(*  only by permission.                                                *)
(*                                                                     *)
(***********************************************************************)

(* $Id: soli.ml,v 1.4 1999/11/17 18:58:34 xleroy Exp $ *)

let nb_pegs = 33;;

let positions = Array.init nb_pegs (fun i -> Hashtbl.create (3 * i));;

let add_position rank pos k =
 Hashtbl.add positions.(rank) pos k;;
let find_position rank pos =
 Hashtbl.find positions.(rank) pos;;
let position_seen rank pos =
 Hashtbl.mem positions.(rank) pos;;

let current_position n m = n, m;;

let alarm r =
 if r mod 500 = 0 then begin
  print_newline ();
  print_string "Recorded positions: ";
  print_int r;
 end;;

let record_pos =
 let count = ref 0 in
 (fun rank ->
  add_position rank (current_position ()) !count;
  incr count;
  alarm !count);;

let print_peg = function
  | 0 -> print_string " "
  | _ -> print_string "$";;

let print_board board =
 for i = 0 to 8 do
   for j = 0 to 8 do
    print_peg board.(i).(j)
   done;
   print_newline()
 done;;
