(* $Id: array.sml,v 321.7 2002-02-26 16:01:17-08 - - $ *)

(*
* Create an array, update it with the square roots of its subscripts,
* and print it out.
*)

load "Array";
load "Int";
load "Math";
load "Real";

val array    = Array.array;
val intstr   = Int.toString;
val realstr  = Real.toString;
val sqrt     = Math.sqrt;
val sub      = Array.sub;
val update   = Array.update;

infixr 5 :::;
fun op::: (lwb, upb) =
    if lwb > upb then [] else lwb :: (lwb + 1 ::: upb);

infixr 5 ::::;
fun op:::: (lwb, upb) =
    if lwb > upb then [] else lwb :: (lwb + 1.0 :::: upb);

val dim = 20;
val indices = 0 ::: dim - 1;
val data = array (dim, 0.0);

map (fn index => update (data, index, sqrt (real index)))
    indices;

map (fn index => print ( (intstr index)
                       ^ " => "
                       ^ (realstr (sub (data, index)))
                       ^ "\n"))
    indices;

quit ();

