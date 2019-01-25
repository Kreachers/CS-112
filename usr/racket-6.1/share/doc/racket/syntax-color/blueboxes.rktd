1690
((3) 0 () 6 ((q lib "syntax-color/token-tree.rkt") (q lib "syntax-color/lexer-contract.rkt") (q 82 . 4) (c (? . 0) q token-tree%) (q lib "syntax-color/racket-lexer.rkt") (q lib "syntax-color/scribble-lexer.rkt")) () (h ! (equal) ((c def c (c (? . 0) q node?)) q (2892 . 3)) ((c def c (c (? . 0) q insert-first!)) q (3279 . 4)) ((c meth c (c (? . 3) q search!)) q (2792 . 3)) ((c def c (c (? . 1) q struct:dont-stop)) c (? . 2)) ((c def c (c (? . 1) q lexer/c)) q (54 . 2)) ((c def c (c (? . 0) q insert-last!)) q (3404 . 4)) ((c def c (c (? . 0) q insert-last-spec!)) q (3528 . 5)) ((c def c (c (? . 1) q dont-stop?)) c (? . 2)) ((c def c (c (? . 1) q make-dont-stop)) c (? . 2)) ((q def ((lib "syntax-color/module-lexer.rkt") module-lexer)) q (1235 . 16)) ((c def c (c (? . 0) q node-right)) q (3214 . 3)) ((c def c (c (? . 1) q dont-stop)) c (? . 2)) ((c def c (? . 3)) q (2516 . 3)) ((c def c (c (? . 4) q racket-lexer)) q (183 . 7)) ((c def c (c (? . 4) q racket-lexer/status)) q (421 . 8)) ((c def c (c (? . 0) q node-token-data)) q (3014 . 3)) ((c def c (c (? . 0) q node-left-subtree-length)) q (3072 . 3)) ((c def c (c (? . 0) q node-token-length)) q (2943 . 3)) ((c def c (c (? . 1) q dont-stop-val)) c (? . 2)) ((c def c (c (? . 0) q node-left)) q (3150 . 3)) ((c meth c (c (? . 3) q get-root)) q (2731 . 2)) ((q def ((lib "syntax-color/paren-tree.rkt") paren-tree%)) q (0 . 3)) ((c def c (c (? . 5) q scribble-inside-lexer)) q (2220 . 12)) ((q def ((lib "syntax-color/default-lexer.rkt") default-lexer)) q (992 . 7)) ((c def c (c (? . 5) q scribble-lexer)) q (1746 . 11)) ((c def c (c (? . 4) q racket-nobar-lexer/status)) q (763 . 9)) ((c constructor c (? . 3)) q (2570 . 5))))
class
paren-tree% : class?
  superclass: object%
value
lexer/c : contract?
struct
(struct dont-stop (val)
    #:extra-constructor-name make-dont-stop)
  val : any/c
procedure
(racket-lexer in) -> (or/c string? eof-object?)
                     symbol?
                     (or/c symbol? #f)
                     (or/c number? #f)
                     (or/c number? #f)
  in : input-port?
procedure
(racket-lexer/status in) -> (or/c string? eof-object?)
                            symbol?
                            (or/c symbol? #f)
                            (or/c number? #f)
                            (or/c number? #f)
                            (or/c 'datum 'open 'close 'continue)
  in : input-port?
procedure
(racket-nobar-lexer/status in)
 -> (or/c string? eof-object?)
    symbol?
    (or/c symbol? #f)
    (or/c number? #f)
    (or/c number? #f)
    (or/c 'datum 'open 'close 'continue)
  in : input-port?
procedure
(default-lexer in) -> (or/c string? eof-object?)
                      symbol?
                      (or/c symbol? #f)
                      (or/c number? #f)
                      (or/c number? #f)
  in : input-port?
procedure
(module-lexer in offset mode)
 -> (or/c string? eof-object?)
    symbol?
    (or/c symbol? #f)
    (or/c number? #f)
    (or/c number? #f)
    exact-nonnegative-integer?
    (or/c #f
          (-> input-port? any)
          (cons/c (-> input-port? any/c any) any/c))
  in : input-port?
  offset : exact-nonnegative-integer?
  mode : (or/c #f
               (-> input-port? any)
               (cons/c (-> input-port? any/c any) any/c))
procedure
(scribble-lexer in offset mode) -> (or/c string? eof-object?)
                                   symbol?
                                   (or/c symbol? #f)
                                   (or/c number? #f)
                                   (or/c number? #f)
                                   exact-nonnegative-integer?
                                   any/c
  in : input-port?
  offset : exact-nonnegative-integer?
  mode : any/c
procedure
(scribble-inside-lexer in offset mode)
 -> (or/c string? eof-object?)
    symbol?
    (or/c symbol? #f)
    (or/c number? #f)
    (or/c number? #f)
    exact-nonnegative-integer?
    any/c
  in : input-port?
  offset : exact-nonnegative-integer?
  mode : any/c
class
token-tree% : class?
  superclass: object%
constructor
(new token-tree% [len len] [data data])
 -> (is-a?/c token-tree%)
  len : (or/c exact-nonnegative-integer? fasle/c)
  data : any/c
method
(send a-token-tree get-root) -> (or/c node? #f)
method
(send a-token-tree search! key-position) -> void?
  key-position : natural-number/c
procedure
(node? v) -> boolean?
  v : any/c
procedure
(node-token-length n) -> natural-number/c
  n : node?
procedure
(node-token-data n) -> any/c
  n : node?
procedure
(node-left-subtree-length n) -> natural-number/c
  n : node?
procedure
(node-left n) -> (or/c node? #f)
  n : node?
procedure
(node-right n) -> (or/c node? #f)
  n : node?
procedure
(insert-first! tree1 tree2) -> void?
  tree1 : (is-a?/c token-tree%)
  tree2 : (is-a?/c token-tree%)
procedure
(insert-last! tree1 tree2) -> void?
  tree1 : (is-a?/c token-tree%)
  tree2 : (is-a?/c token-tree%)
procedure
(insert-last-spec! tree n v) -> void?
  tree : (is-a?/c token-tree%)
  n : natural-number/c
  v : any/c
