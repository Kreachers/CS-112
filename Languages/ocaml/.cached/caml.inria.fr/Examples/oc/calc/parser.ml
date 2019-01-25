type token =
    INT of (int)
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | LPAREN
  | RPAREN
  | EOL

open Parsing
let yytransl_const = [|
  258 (* PLUS *);
  259 (* MINUS *);
  260 (* TIMES *);
  261 (* DIV *);
  262 (* LPAREN *);
  263 (* RPAREN *);
  264 (* EOL *);
    0|]

let yytransl_block = [|
  257 (* INT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\000\000"

let yylen = "\002\000\
\002\000\001\000\003\000\003\000\003\000\003\000\003\000\002\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\002\000\000\000\000\000\009\000\000\000\008\000\
\000\000\000\000\000\000\000\000\000\000\001\000\003\000\000\000\
\000\000\006\000\007\000"

let yydgoto = "\002\000\
\006\000\007\000"

let yysindex = "\003\000\
\027\255\000\000\000\000\027\255\027\255\000\000\008\255\000\000\
\022\255\027\255\027\255\027\255\027\255\000\000\000\000\254\254\
\254\254\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\012\255\
\015\255\000\000\000\000"

let yygindex = "\000\000\
\000\000\252\255"

let yytablesize = 33
let yytable = "\008\000\
\009\000\012\000\013\000\001\000\000\000\016\000\017\000\018\000\
\019\000\010\000\011\000\012\000\013\000\004\000\004\000\014\000\
\005\000\005\000\004\000\004\000\000\000\005\000\005\000\010\000\
\011\000\012\000\013\000\003\000\015\000\004\000\000\000\000\000\
\005\000"

let yycheck = "\004\000\
\005\000\004\001\005\001\001\000\255\255\010\000\011\000\012\000\
\013\000\002\001\003\001\004\001\005\001\002\001\003\001\008\001\
\002\001\003\001\007\001\008\001\255\255\007\001\008\001\002\001\
\003\001\004\001\005\001\001\001\007\001\003\001\255\255\255\255\
\006\001"

let yynames_const = "\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIV\000\
  LPAREN\000\
  RPAREN\000\
  EOL\000\
  "

let yynames_block = "\
  INT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun parser_env ->
    let _1 = (peek_val parser_env 1 : 'expr) in
    Obj.repr((
# 28 "parser.mly"
                              _1 ) : int))
; (fun parser_env ->
    let _1 = (peek_val parser_env 0 : int) in
    Obj.repr((
# 31 "parser.mly"
                              _1 ) : 'expr))
; (fun parser_env ->
    let _2 = (peek_val parser_env 1 : 'expr) in
    Obj.repr((
# 32 "parser.mly"
                              _2 ) : 'expr))
; (fun parser_env ->
    let _1 = (peek_val parser_env 2 : 'expr) in
    let _3 = (peek_val parser_env 0 : 'expr) in
    Obj.repr((
# 33 "parser.mly"
                              _1 + _3 ) : 'expr))
; (fun parser_env ->
    let _1 = (peek_val parser_env 2 : 'expr) in
    let _3 = (peek_val parser_env 0 : 'expr) in
    Obj.repr((
# 34 "parser.mly"
                              _1 - _3 ) : 'expr))
; (fun parser_env ->
    let _1 = (peek_val parser_env 2 : 'expr) in
    let _3 = (peek_val parser_env 0 : 'expr) in
    Obj.repr((
# 35 "parser.mly"
                              _1 * _3 ) : 'expr))
; (fun parser_env ->
    let _1 = (peek_val parser_env 2 : 'expr) in
    let _3 = (peek_val parser_env 0 : 'expr) in
    Obj.repr((
# 36 "parser.mly"
                              _1 / _3 ) : 'expr))
; (fun parser_env ->
    let _2 = (peek_val parser_env 0 : 'expr) in
    Obj.repr((
# 37 "parser.mly"
                              - _2 ) : 'expr))
(* Entry main *)
; (fun parser_env -> raise (YYexit (peek_val parser_env 0)))
|]
let yytables =
  { actions=yyact;
    transl_const=yytransl_const;
    transl_block=yytransl_block;
    lhs=yylhs;
    len=yylen;
    defred=yydefred;
    dgoto=yydgoto;
    sindex=yysindex;
    rindex=yyrindex;
    gindex=yygindex;
    tablesize=yytablesize;
    table=yytable;
    check=yycheck;
    error_function=parse_error;
    names_const=yynames_const;
    names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (yyparse yytables 1 lexfun lexbuf : int)
