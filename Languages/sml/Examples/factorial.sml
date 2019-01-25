(* $Id: factorial.sml,v 321.3 2002-02-11 16:18:11-08 - - $ *)
(* Factorial example. *)

exception Factorial;

fun fac( n ) =
    let
       fun fac'( 0 ) = 1
         | fac'( n ) = n * fac'( n - 1 );
    in
       if n < 0 then raise Factorial else fac'( n )
    end;

fac(6);

fun rfac( x ) =
    let
       fun fac'( 0.0 ) = 1.0
         | fac'( x ) = x * fac'( x - 1.0 );
    in
       if x < 0.0 then raise Factorial else fac'( x )
    end;

