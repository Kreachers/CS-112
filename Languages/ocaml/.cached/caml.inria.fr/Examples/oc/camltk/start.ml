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

(* The Hello world program in CamlTk: creates a single button with a
text on it.

Compile using:
 ocamlc -I +camltk -c start.ml
Link using:
 ocamlc -I +camltk -custom camltk.cma  start.cmo -o start

Try with ./start

*)

open Tk;;

let start () =
  let main_window = openTk () in
  let button =
    Button.create main_window
      [Text "Hello World!"] in
  pack [button] [];
  mainLoop ();;

if !Sys.interactive then () else start ();;
