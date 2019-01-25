576
((3) 0 () 1 ((q lib "test-engine/racket-tests.rkt")) () (h ! (equal) ((c form c (c (? . 0) q check-range)) q (307 . 6)) ((c form c (c (? . 0) q test)) q (428 . 2)) ((c form c (c (? . 0) q check-member-of)) q (256 . 2)) ((c def c (c (? . 0) q test-format)) q (442 . 4)) ((c def c (c (? . 0) q test-silence)) q (569 . 4)) ((c def c (c (? . 0) q test-execute)) q (667 . 4)) ((c form c (c (? . 0) q check-random)) q (43 . 2)) ((c form c (c (? . 0) q check-within)) q (86 . 4)) ((c form c (c (? . 0) q check-error)) q (171 . 5)) ((c form c (c (? . 0) q check-expect)) q (0 . 2))))
syntax
(check-expect expr expected-expr)
syntax
(check-random expr expected-expr)
syntax
(check-within expr expected-expr delta-expr)
 
  delta-expr : number?
syntax
(check-error expr)
(check-error expr msg-expr)
 
  msg-expr : string?
syntax
(check-member-of expr expected-expr ...)
syntax
(check-range expr min-expr max-expr)
 
  expr : number?
  min-expr : number?
  max-expr : number?
syntax
(test)
parameter
(test-format) -> (any/c . -> . string?)
(test-format format) -> void?
  format : (any/c . -> . string?)
parameter
(test-silence) -> boolean?
(test-silence silence?) -> void?
  silence? : any/c
parameter
(test-execute) -> boolean?
(test-execute execute?) -> void?
  execute? : any/c
