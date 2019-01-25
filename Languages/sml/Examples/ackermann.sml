(* $Id: ackermann.sml,v 321.1 2002-02-07 12:58:23-08 - - $ *)
(* Ackermann's Function *)

fun ack( 0, 0, k ) = k
  | ack( 0, j, k ) = ack( 0, j - 1, k ) + 1
  | ack( 1, 0, k ) = 0
  | ack( i, 0, k ) = 1
  | ack( i, j, k ) = ack( i - 1, ack( i, j - 1, k), k )
  ;

(*
 * Prove that:
 *    ack( 0, j, k ) is k + j
 *    ack( 1, j, k ) is k * j
 *    ack( 2, j, k ) is k ** j
 *
 * What is ack( 3, j, k )?
 *)

