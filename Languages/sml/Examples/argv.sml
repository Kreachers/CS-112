(* $Id: argv.sml,v 321.1 2002-02-11 16:51:49-08 - - $ *)

(*
* Illustrate access to the command line.
*)

load "Int";

fun printlist( name, list ) =
    let
       fun printlist'( _, [] ) = ()
         | printlist'( count, head::tail ) =
              ( print( name ^ "[" ^ Int.toString count ^ "]= \""
                     ^ head ^ "\"\n" );
                printlist'( count + 1, tail );
                ()
              );
    in
       printlist'( 0, list )
    end;

load "Mosml";
printlist( "argv", Mosml.argv() );

load "CommandLine";
print( "name = " ^ CommandLine.name() ^ "\n" );
printlist( "arguments", CommandLine.arguments() );

quit();

