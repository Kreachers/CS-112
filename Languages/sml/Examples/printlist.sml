(* $Id: printlist.sml,v 321.1 2002-02-07 12:58:23-08 - - $ *)
(*
* Printing lists.
* The following will likely be useful in debugging your programs.
* The part where you put in print statements to find out why it
* doesn't work.
*)

load "Int";

fun printlistlist intlistlist =
    let     
       fun comma (elt, "") = elt
         | comma (elt, rest) = elt ^ "," ^ rest; 
       fun stringlist list =  
           "[" ^ (foldr comma "" (map Int.toString list)) ^ "]\n";
    in
       (map print ("\n" :: map stringlist intlistlist);
        length intlistlist)
    end;    

printlistlist [[1,2,3], [1,3,2], [2,1,3], [2,3,1], [3,1,2], [3,2,1] ];

