2962
((3) 0 () 13 ((q lib "web-server/scribblings/tutorial/examples/dummy-10.rkt") (q 1290 . 4) (q lib "web-server/scribblings/tutorial/examples/iteration-5.rkt") (q 691 . 6) (q lib "web-server/scribblings/tutorial/examples/iteration-4.rkt") (q 510 . 3) (q lib "web-server/scribblings/tutorial/examples/iteration-9.rkt") (q 982 . 6) (q lib "web-server/scribblings/tutorial/examples/iteration-1.rkt") (q lib "web-server/servlet.rkt") (q lib "web-server/scribblings/tutorial/examples/iteration-2.rkt") (q 0 . 4) (q 1241 . 3)) () (h ! (equal) ((c def c (c (? . 0) q post-id)) c (? . 1)) ((c def c (c (? . 6) q blog)) c (? . 7)) ((c def c (c (? . 8) q post-body)) c (? . 11)) ((q def ((lib "web-server/scribblings/tutorial/examples/iteration-7.rkt") static-files-path)) q (891 . 2)) ((c def c (c (? . 2) q set-post-title!)) c (? . 3)) ((c def c (c (? . 0) q post?)) c (? . 1)) ((c def c (c (? . 4) q blog-posts)) c (? . 5)) ((c def c (c (? . 9) q exists-binding?)) q (341 . 2)) ((c def c (c (? . 0) q struct:post)) c (? . 1)) ((c def c (c (? . 2) q set-post-body!)) c (? . 3)) ((c def c (c (? . 2) q post-title)) c (? . 3)) ((c def c (c (? . 4) q struct:blog)) c (? . 5)) ((c def c (c (? . 10) q parse-post)) q (462 . 2)) ((c def c (c (? . 6) q blog-home)) c (? . 7)) ((c def c (c (? . 6) q blog?)) c (? . 7)) ((c def c (c (? . 6) q struct:blog)) c (? . 7)) ((c def c (c (? . 2) q struct:post)) c (? . 3)) ((c def c (c (? . 2) q post-body)) c (? . 3)) ((c def c (c (? . 2) q post)) c (? . 3)) ((c def c (c (? . 8) q render-posts)) q (155 . 2)) ((c def c (c (? . 9) q request-bindings)) q (213 . 2)) ((c def c (c (? . 4) q blog)) c (? . 5)) ((c def c (c (? . 0) q struct:blog)) c (? . 12)) ((c def c (c (? . 10) q can-parse-post?)) q (406 . 2)) ((c def c (c (? . 6) q blog-posts)) c (? . 7)) ((c def c (c (? . 8) q blog)) q (77 . 2)) ((c def c (c (? . 4) q blog-insert-post!)) q (634 . 2)) ((c def c (c (? . 6) q post-insert-comment!)) q (1172 . 2)) ((c def c (c (? . 8) q post?)) c (? . 11)) ((c def c (c (? . 8) q struct:post)) c (? . 11)) ((c def c (c (? . 4) q blog?)) c (? . 5)) ((c def c (c (? . 8) q post)) c (? . 11)) ((c def c (c (? . 6) q set-blog-home!)) c (? . 7)) ((c def c (c (? . 0) q blog)) c (? . 12)) ((c def c (c (? . 6) q blog-insert-post!)) q (1104 . 2)) ((c def c (c (? . 0) q blog?)) c (? . 12)) ((c def c (c (? . 0) q blog-db)) c (? . 12)) ((c def c (c (? . 8) q render-post)) q (108 . 2)) ((c def c (c (? . 9) q extract-binding/single)) q (270 . 2)) ((c def c (c (? . 2) q set-post-comments!)) c (? . 3)) ((c def c (c (? . 2) q post?)) c (? . 3)) ((c def c (c (? . 9) q redirect/get)) q (944 . 2)) ((c def c (c (? . 0) q post-blog)) c (? . 1)) ((c def c (c (? . 8) q post-title)) c (? . 11)) ((c def c (c (? . 6) q set-blog-posts!)) c (? . 7)) ((c def c (c (? . 0) q post)) c (? . 1)) ((c def c (c (? . 2) q post-add-comment!)) q (832 . 2)) ((c def c (c (? . 4) q set-blog-posts!)) q (569 . 2)) ((c def c (c (? . 2) q post-comments)) c (? . 3))))
struct
(struct post (title body))
  title : string?
  body : string?
value
blog : (listof post?)
value
render-post : (post? . -> . xexpr/c)
value
render-posts : ((listof post?) . -> . xexpr/c)
value
request-bindings : (request? . -> . bindings?)
value
extract-binding/single : (symbol? bindings? . -> . string?)
value
exists-binding? : (symbol? bindings? . -> . boolean?)
value
can-parse-post? : (bindings? . -> . boolean?)
value
parse-post : (bindings? . -> . post?)
struct
(struct blog (posts))
  posts : (listof post?)
value
set-blog-posts! : (blog? (listof post?) . -> . void)
value
blog-insert-post! : (blog? post? . -> . void)
struct
(struct post (title body comments)
    #:mutable)
  title : string?
  body : string?
  comments : (listof string?)
value
post-add-comment! : (post? string? . -> . void)
value
static-files-path : (path-string? -> void)
value
redirect/get : (-> request?)
struct
(struct blog (home posts)
    #:mutable
    #:prefab)
  home : string?
  posts : (listof post?)
value
blog-insert-post! : (blog? string? string? . -> . void)
value
post-insert-comment! : (blog? post? string? . -> . void)
struct
(struct blog (db))
  db : connection?
struct
(struct post (blog id))
  blog : blog?
  id : integer?
