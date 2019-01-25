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
#use "start.ml";;
#use "hello.ml";;
#use "hello_quit.ml";;
#use "addition.ml";;
#use "convert_euro.ml";;
#use "convert.ml";;
#use "rgb.ml";;
#use "camleyes.ml";;
#use "taquin.ml";;
#use "tetris.ml";;

print_string "\n
To run type in one of:
        start ();;
        hello ();;
        hello_quit ();;
        addition ();;
        convertion_en_francs ();;
        convertion ();;
        rgb ();;
        camleyes ();;
        taquin \"file name\" <number> <number>
        (* For instance *)
        taquin \"joconde.gif\" 3 5;;
        tetris ();;
";;

print_newline();;

