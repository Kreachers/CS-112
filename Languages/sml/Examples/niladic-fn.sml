(* $Id: niladic-fn.sml,v 321.1 2002-02-07 12:58:23-08 - - $ *)
(*
* A niladic function can not be written, but the next
* best thing is to write a function that takes unit as
* an argument.
*)

fun world () = "Hello, World!";

world();

explode( world() );

