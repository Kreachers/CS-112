2811
((3) 0 () 7 ((q lib "scriblib/autobib.rkt") (q lib "scriblib/figure.rkt") (q lib "scriblib/gui-eval.rkt") (q lib "scriblib/bibtex.rkt") (q 6655 . 4) (q lib "scriblib/render-cond.rkt") (q lib "scriblib/footnote.rkt")) () (h ! (equal) ((c def c (c (? . 0) q abbreviate-given-names)) q (6353 . 4)) ((c def c (c (? . 3) q bibdb)) c (? . 4)) ((c def c (c (? . 0) q org-author-name)) q (6187 . 3)) ((c def c (c (? . 1) q figure*)) q (1640 . 11)) ((c def c (c (? . 1) q figure-here)) q (2407 . 11)) ((c form c (c (? . 2) q gui-def+int)) q (926 . 6)) ((c form c (c (? . 2) q gui-defs+int)) q (1094 . 6)) ((c form c (c (? . 2) q gui-racketblock+eval)) q (558 . 6)) ((c form c (c (? . 0) q define-cite)) q (3245 . 17)) ((c def c (c (? . 0) q techrpt-location)) q (5556 . 5)) ((c form c (c (? . 3) q define-bibtex-cite)) q (6474 . 3)) ((c def c (c (? . 1) q Figure-target)) q (3081 . 4)) ((c def c (c (? . 3) q bibdb-raw)) c (? . 4)) ((c def c (c (? . 0) q other-authors)) q (6254 . 2)) ((c def c (c (? . 1) q figure**)) q (2021 . 11)) ((c def c (c (? . 1) q figure-ref)) q (2945 . 3)) ((c def c (c (? . 3) q struct:bibdb)) c (? . 4)) ((c def c (c (? . 0) q in-bib)) q (4599 . 4)) ((c def c (c (? . 0) q author-name)) q (5952 . 5)) ((c def c (c (? . 1) q figure)) q (1264 . 11)) ((c form c (c (? . 3) q define-bibtex-cite*)) q (6568 . 2)) ((c form c (c (? . 5) q cond-element)) q (7053 . 8)) ((c def c (c (? . 1) q left)) q (2923 . 2)) ((c def c (c (? . 6) q note)) q (6915 . 3)) ((c def c (c (? . 0) q book-location)) q (5378 . 5)) ((c def c (c (? . 3) q bibtex-parse)) q (6851 . 3)) ((c def c (c (? . 0) q author+date-style)) q (3939 . 2)) ((c form c (c (? . 5) q cond-block)) q (7383 . 3)) ((c def c (c (? . 0) q authors)) q (6090 . 4)) ((c form c (c (? . 2) q gui-interaction)) q (0 . 6)) ((c def c (c (? . 1) q Figure-ref)) q (3013 . 3)) ((c def c (c (? . 0) q bib?)) q (4002 . 3)) ((c def c (c (? . 0) q editor)) q (6294 . 3)) ((c def c (c (? . 0) q number-style)) q (3973 . 2)) ((c def c (c (? . 0) q dissertation-location)) q (5745 . 5)) ((c def c (c (? . 3) q bibdb?)) c (? . 4)) ((c form c (c (? . 2) q gui-interaction-eval-show)) q (362 . 6)) ((c def c (c (? . 3) q bibdb-bibs)) c (? . 4)) ((c def c (c (? . 0) q proceedings-location)) q (4681 . 9)) ((c def c (c (? . 1) q left-figure-style)) q (2815 . 2)) ((c form c (c (? . 2) q gui-racketmod+eval)) q (744 . 6)) ((c form c (c (? . 6) q define-footnote)) q (6997 . 2)) ((c def c (c (? . 3) q path->bibdb)) q (6783 . 3)) ((c def c (c (? . 0) q make-bib)) q (4052 . 15)) ((c def c (c (? . 1) q suppress-floats)) q (3203 . 2)) ((c def c (c (? . 1) q right-figure-style)) q (2887 . 2)) ((c form c (c (? . 2) q gui-interaction-eval)) q (176 . 6)) ((c def c (c (? . 1) q center-figure-style)) q (2850 . 2)) ((c def c (c (? . 0) q journal-location)) q (5039 . 9))))
syntax
(gui-interaction datum ...)
(gui-interaction
 #:eval+opts the-eval get-predicate? get-render
             get-get-width get-get-height
 datum ...)
syntax
(gui-interaction-eval datum ...)
(gui-interaction-eval
 #:eval+opts the-eval get-predicate? get-render
             get-get-width get-get-height
 datum ...)
syntax
(gui-interaction-eval-show datum ...)
(gui-interaction-eval-show
 #:eval+opts the-eval get-predicate? get-render
             get-get-width get-get-height
 datum ...)
syntax
(gui-racketblock+eval datum ...)
(gui-racketblock+eval
 #:eval+opts the-eval get-predicate? get-render
             get-get-width get-get-height
 datum ...)
syntax
(gui-racketmod+eval datum ...)
(gui-racketmod+eval
 #:eval+opts the-eval get-predicate? get-render
             get-get-width get-get-height
 datum ...)
syntax
(gui-def+int datum ...)
(gui-def+int
 #:eval+opts the-eval get-predicate? get-render
             get-get-width get-get-height
 datum ...)
syntax
(gui-defs+int datum ...)
(gui-defs+int
 #:eval+opts the-eval get-predicate? get-render
             get-get-width get-get-height
 datum ...)
procedure
(figure  tag                         
         caption                     
         p ...                       
        [#:style style               
         #:continue? continue?]) -> block?
  tag : string?
  caption : content?
  p : pre-flow?
  style : style? = center-figure-style
  continue? : any/c = #f
procedure
(figure*  tag                         
          caption                     
          p ...                       
         [#:style style               
          #:continue? continue?]) -> block?
  tag : string?
  caption : content?
  p : pre-flow?
  style : style? = center-figure-style
  continue? : any/c = #f
procedure
(figure**  tag                         
           caption                     
           p ...                       
          [#:style style               
           #:continue? continue?]) -> block?
  tag : string?
  caption : content?
  p : pre-flow?
  style : style? = center-figure-style
  continue? : any/c = #f
procedure
(figure-here  tag                         
              caption                     
              pre-flow ...                
             [#:style style               
              #:continue? continue?]) -> block?
  tag : string?
  caption : content?
  pre-flow : pre-flow?
  style : style? = center-figure-style
  continue? : any/c = #f
value
left-figure-style : style?
value
center-figure-style : style?
value
right-figure-style : style?
value
left : style?
procedure
(figure-ref tag ...+) -> element?
  tag : string?
procedure
(Figure-ref tag ...+) -> element?
  tag : string?
procedure
(Figure-target tag [#:continue? continue?]) -> element?
  tag : string?
  continue? : any/c = #f
procedure
(suppress-floats) -> element?
syntax
(define-cite ~cite-id citet-id generate-bibliography-id
             option ...)
 
option = #:style style-expr
       | #:disambiguate disambiguator-expr
       | #:spaces spaces-expr
       | #:render-date-bib render-date-expr
       | #:render-date-cite render-date-expr
       | #:date<? date-compare-expr
       | #:date=? date-compare-expr
 
  style-expr : (or/c author+date-style number-style)
  spaces-expr : number
  disambiguator-expr : (or/c #f (-> exact-nonnegative-integer? element?))
  render-date-expr : (or/c #f (-> date? element?))
  date-compare-expr : (or/c #f (-> date? date? boolean?))
value
author+date-style : any/c
value
number-style : any/c
procedure
(bib? v) -> boolean?
  v : any/c
procedure
(make-bib  #:title title           
          [#:author author         
           #:is-book? is-book?     
           #:location location     
           #:date date             
           #:url url               
           #:note note])       -> bib?
  title : any/c
  author : any/c = #f
  is-book? : any/c = #f
  location : any/c = #f
  date : (or/c #f date? exact-nonnegative-integer? string?) = #f
  url : string? = #f
  note : any/c = #f
procedure
(in-bib orig where) -> bib?
  orig : bib?
  where : string?
procedure
(proceedings-location  location              
                      [#:pages pages         
                       #:series series       
                       #:volume volume]) -> element?
  location : any/c
  pages : (or (list/c any/c any/c) #f) = #f
  series : any/c = #f
  volume : any/c = #f
procedure
(journal-location  title                 
                  [#:pages pages         
                   #:number number       
                   #:volume volume]) -> element?
  title : any/c
  pages : (or (list/c any/c any/c) #f) = #f
  number : any/c = #f
  volume : any/c = #f
procedure
(book-location [#:edition edition           
                #:publisher publisher]) -> element?
  edition : any/c = #f
  publisher : any/c = #f
procedure
(techrpt-location [#:institution institution]     
                   #:number number)           -> element?
  institution : edition = any/c
  number : any/c
procedure
(dissertation-location [#:institution institution     
                        #:degree degree])         -> element?
  institution : edition = any/c
  degree : any/c = "PhD"
procedure
(author-name first last [#:suffix suffix]) -> element?
  first : any/c
  last : any/c
  suffix : any/c = #f
procedure
(authors name names ...) -> element?
  name : content?
  names : content?
procedure
(org-author-name name) -> element?
  name : any/c
procedure
(other-authors) -> element?
procedure
(editor name) -> element?
  name : name/c
parameter
(abbreviate-given-names) -> any/c
(abbreviate-given-names abbreviate?) -> void?
  abbreviate? : any/c
syntax
(define-bibtex-cite bib-pth ~cite-id citet-id generate-bibliography-id .
options)
syntax
(define-bibtex-cite* bib-pth autobib-cite autobib-citet ~cite-id citet-id)
struct
(struct bibdb (raw bibs))
  raw : (hash/c string? (hash/c string? string?))
  bibs : (hash/c string? bib?)
procedure
(path->bibdb path) -> bibdb?
  path : path-string?
procedure
(bibtex-parse ip) -> bibdb?
  ip : input-port?
procedure
(note pre-content ...) -> element?
  pre-content : pre-content?
syntax
(define-footnote footnote-id footnote-part-id)
syntax
(cond-element [feature-requirement body ...+])
(cond-element [feature-requirement body ...+] [else body ...+])
 
feature-requirement = identifier
                    | (not feature-requirement)
                    | (and feature-requirement ...)
                    | (or feature-requirement ...)
syntax
(cond-block [feature-requirement body ...+])
(cond-block [feature-requirement body ...+] [else body ...+])
