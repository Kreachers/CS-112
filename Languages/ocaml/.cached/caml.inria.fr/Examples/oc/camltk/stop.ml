(***********************************************************************)
(*                                                                     *)
(*                           Objective Caml                            *)
(*                                                                     *)
(*               Pierre Weis, projet Cristal, INRIA Rocquencourt       *)
(*                                                                     *)
(*  Copyright 2001 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed    *)
(*  under the terms of the Q Public License version 1.0.               *)
(*                                                                     *)
(***********************************************************************)

(* The Stop program: creates a single button with a call back function
that quits the program.

Compile using:
 ocamlc -I +camltk -c stop.ml
Link using:
 ocamlc -I +camltk -custom camltk.cma  stop.cmo -o stop

Try with ./stop

*)

open Tk;;

let action () = closeTk ();;

let stop () =
  let main_window = openTk () in
  let bouton_quit =
    Button.create main_window
      [Text "Stop"; Command action] in
  pack [bouton_quit] [];
  mainLoop ();;

if !Sys.interactive then () else begin stop (); exit 0 end;;
