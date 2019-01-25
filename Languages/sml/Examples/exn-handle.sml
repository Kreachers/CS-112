(* $Id: exn-handle.sml,v 321.1 2002-02-07 12:58:23-08 - - $ *)
(*
* Handline exceptions.
*)

load "Int";

fun maxint (n:int) =
    (print (Int.toString n ^ "\n");
     if n<0 then 0 else maxint (2*n+1));

fun foo (n: int) =
    (if n = 0 then n div 0 else if n = 1 then 65536*65535 else 3)
    handle Overflow => (print "Overflow in foo.\n"; 0)
         | Div => (print "Div in foo.\n"; 0);

maxint 16777215
handle Overflow => ( print( "Overflow handled.\n" ); 0);

maxint 1;

