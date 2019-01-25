3987
((3) 0 () 12 ((q lib "file/gif.rkt") (q lib "file/unzip.rkt") (q 8170 . 4) (q lib "file/gunzip.rkt") (q lib "file/ico.rkt") (q lib "file/cache.rkt") (q lib "file/resource.rkt") (q lib "file/zip.rkt") (q lib "file/tar.rkt") (q lib "file/sha1.rkt") (q lib "file/convertible.rkt") (q lib "file/gzip.rkt")) () (h ! (equal) ((c def c (c (? . 0) q gif-stream?)) q (11575 . 3)) ((c def c (c (? . 6) q write-resource)) q (15477 . 13)) ((c def c (c (? . 1) q exn:fail:unzip:no-such-entry-entry)) c (? . 2)) ((c def c (c (? . 0) q gif-add-comment)) q (13379 . 4)) ((c def c (c (? . 7) q zip)) q (2903 . 20)) ((c def c (c (? . 1) q zip-directory-contains?)) q (6720 . 4)) ((c def c (c (? . 4) q write-icos)) q (14277 . 7)) ((c def c (c (? . 0) q gif-add-image)) q (12277 . 17)) ((c def c (c (? . 10) q prop:convertible)) q (0 . 2)) ((c def c (c (? . 0) q gif-state)) q (12011 . 3)) ((c def c (c (? . 1) q exn:fail:unzip:no-such-entry)) c (? . 2)) ((c def c (c (? . 3) q gunzip)) q (2492 . 5)) ((c def c (c (? . 3) q gunzip-through-ports)) q (2714 . 4)) ((c def c (c (? . 1) q zip-directory-entries)) q (6626 . 3)) ((q def ((lib "file/untar.rkt") untar)) q (9967 . 14)) ((c def c (c (? . 3) q inflate)) q (2815 . 4)) ((c def c (c (? . 0) q gif-add-loop-control)) q (13254 . 4)) ((c def c (c (? . 4) q ico-width)) q (13857 . 3)) ((c def c (c (? . 1) q call-with-unzip)) q (5769 . 4)) ((c def c (c (? . 1) q path->zip-path)) q (8099 . 3)) ((c def c (c (? . 0) q dimension?)) q (11955 . 3)) ((c def c (c (? . 1) q make-filesystem-entry-reader)) q (5898 . 11)) ((c def c (c (? . 5) q cache-file)) q (16066 . 28)) ((c def c (c (? . 0) q gif-colormap?)) q (11844 . 3)) ((c def c (c (? . 0) q quantize)) q (13591 . 5)) ((c def c (c (? . 1) q call-with-unzip-entry)) q (7934 . 5)) ((c def c (c (? . 0) q color?)) q (11903 . 3)) ((q def ((lib "file/untgz.rkt") untgz)) q (10578 . 14)) ((c def c (c (? . 4) q ico-depth)) q (13998 . 3)) ((c def c (c (? . 4) q ico-height)) q (13927 . 3)) ((c def c (c (? . 5) q cache-remove)) q (17462 . 11)) ((c def c (c (? . 4) q read-icos)) q (14082 . 3)) ((c def c (c (? . 1) q struct:exn:fail:unzip:no-such-entry)) c (? . 2)) ((q def ((lib "file/md5.rkt") md5)) q (11189 . 4)) ((c def c (c (? . 1) q zip-directory?)) q (6566 . 3)) ((c def c (c (? . 1) q unzip)) q (5086 . 13)) ((c def c (c (? . 0) q empty-gif-stream?)) q (11781 . 3)) ((c def c (c (? . 6) q get-resource)) q (14985 . 13)) ((c def c (c (? . 9) q hex-string->bytes)) q (11508 . 3)) ((c def c (c (? . 8) q tar->output)) q (8847 . 13)) ((c def c (c (? . 0) q gif-start)) q (12081 . 7)) ((c def c (c (? . 11) q gzip-through-ports)) q (1970 . 9)) ((c def c (c (? . 7) q zip->output)) q (3927 . 21)) ((c def c (c (? . 7) q zip-verbose)) q (5000 . 4)) ((c def c (c (? . 1) q zip-directory-includes-directory?)) q (6856 . 5)) ((c def c (c (? . 4) q ico?)) q (13807 . 3)) ((c def c (c (? . 0) q image-ready-gif-stream?)) q (11632 . 3)) ((c def c (c (? . 4) q replace-icos)) q (14591 . 4)) ((c def c (c (? . 0) q gif-end)) q (13502 . 3)) ((c def c (c (? . 8) q tar-gzip)) q (9426 . 12)) ((c def c (c (? . 9) q sha1)) q (11320 . 3)) ((c def c (c (? . 0) q image-or-control-ready-gif-stream?)) q (11701 . 3)) ((c def c (c (? . 10) q convert)) q (107 . 31)) ((c def c (c (? . 1) q unzip-entry)) q (7048 . 18)) ((c def c (c (? . 1) q make-exn:fail:unzip:no-such-entry)) c (? . 2)) ((c def c (c (? . 0) q gif-add-control)) q (12814 . 11)) ((c def c (c (? . 4) q read-icos-from-exe)) q (14175 . 3)) ((c def c (c (? . 1) q exn:fail:unzip:no-such-entry?)) c (? . 2)) ((c def c (c (? . 9) q sha1-bytes)) q (11377 . 3)) ((c def c (c (? . 8) q tar)) q (8324 . 13)) ((c def c (c (? . 1) q read-zip-directory)) q (6466 . 3)) ((c def c (c (? . 9) q bytes->hex-string)) q (11439 . 3)) ((c def c (c (? . 11) q gzip)) q (1826 . 4)) ((c def c (c (? . 11) q deflate)) q (2289 . 6)) ((c def c (c (? . 4) q ico->argb)) q (14715 . 3)) ((c def c (c (? . 4) q argb->ico)) q (14771 . 6)) ((c def c (c (? . 10) q convertible?)) q (49 . 3))))
value
prop:convertible : struct-type-property?
procedure
(convertible? v) -> boolean?
  v : any/c
procedure
(convert v request [default])
 -> (case request
      [(text) (or/c string? (λ (x) (eq? x default)))]
      [(gif-bytes png-bytes png@2x-bytes
                  ps-bytes eps-bytes pdf-bytes svg-bytes)
       (or/c bytes? (λ (x) (eq? x default)))]
      [(png-bytes+bounds png@2x-bytes+bounds
                         eps-bytes+bounds pdf-bytes+bounds)
       (or/c (list/c bytes?
                     (and/c real? (not/c negative?))
                     (and/c real? (not/c negative?))
                     (and/c real? (not/c negative?))
                     (and/c real? (not/c negative?)))
             (λ (x) (eq? x default)))]
      [(png-bytes+bounds8 png@2x-bytes+bounds8
                          eps-bytes+bounds8 pdf-bytes+bounds8)
       (or/c (list/c bytes?
                     (and/c real? (not/c negative?))
                     (and/c real? (not/c negative?))
                     (and/c real? (not/c negative?))
                     (and/c real? (not/c negative?))
                     (and/c real? (not/c negative?))
                     (and/c real? (not/c negative?))
                     (and/c real? (not/c negative?))
                     (and/c real? (not/c negative?)))
             (λ (x) (eq? x default)))]
      [else any/c])
  v : convertible?
  request : symbol?
  default : any/c = #f
procedure
(gzip in-file [out-file]) -> void?
  in-file : path-string?
  out-file : path-string? = (string-append in-file ".gz")
procedure
(gzip-through-ports in                
                    out               
                    orig-filename     
                    timestamp)    -> void?
  in : input-port?
  out : output-port?
  orig-filename : (or/c string? false/c)
  timestamp : exact-integer?
procedure
(deflate in out) -> exact-nonnegative-integer?
                    exact-nonnegative-integer?
                    exact-nonnegative-integer?
  in : input-port?
  out : output-port?
procedure
(gunzip file [output-name-filter]) -> void?
  file : path-string?
  output-name-filter : (string? boolean? . -> . path-string?)
                     = (lambda (file archive-supplied?) file)
procedure
(gunzip-through-ports in out) -> void?
  in : input-port?
  out : output-port?
procedure
(inflate in out) -> void?
  in : input-port?
  out : output-port?
procedure
(zip  zip-file                                            
      path ...                                            
     [#:timestamp timestamp                               
      #:get-timestamp get-timestamp                       
      #:utc-timestamps? utc-timestamps?                   
      #:round-timestamps-down? round-timestamps-down?     
      #:path-prefix path-prefix                           
      #:system-type sys-type])                        -> void?
  zip-file : path-string?
  path : path-string?
  timestamp : (or/c #f exact-integer?) = #f
  get-timestamp : (path? . -> . exact-integer?)
                = (if timestamp
                      (lambda (p) timestamp)
                      file-or-directory-modify-seconds)
  utc-timestamps? : any/c = #f
  round-timestamps-down? : any/c = #f
  path-prefix : (or/c #f path-string?) = #f
  sys-type : symbol? = (system-type)
procedure
(zip->output  paths                                           
             [out                                             
              #:timestamp timestamp                           
              #:get-timestamp get-timestamp                   
              #:utc-timestamps? utc-timestamps?               
              #:round-timestamps-down? round-timestamps-down? 
              #:path-prefix path-prefix                       
              #:system-type sys-type])                        
 -> void?
  paths : (listof path-string?)
  out : output-port? = (current-output-port)
  timestamp : (or/c #f exact-integer?) = #f
  get-timestamp : (path? . -> . exact-integer?)
                = (if timestamp
                      (lambda (p) timestamp)
                      file-or-directory-modify-seconds)
  utc-timestamps? : any/c = #f
  round-timestamps-down? : any/c = #f
  path-prefix : (or/c #f path-string?) = #f
  sys-type : symbol? = (system-type)
parameter
(zip-verbose) -> boolean?
(zip-verbose on?) -> void?
  on? : any/c
procedure
(unzip  in                                              
       [entry-reader                                    
        #:preserve-timestamps? preserve-timestamps?     
        #:utc-timestamps? utc-timestamps?])         -> void?
  in : (or/c path-string? input-port?)
  entry-reader : (if preserve-timestamps?
                     (bytes? boolean? input-port? (or/c #f exact-integer?)
                      . -> . any)
                     (bytes? boolean? input-port? . -> . any))
               = (make-filesystem-entry-reader)
  preserve-timestamps? : any/c = #f
  utc-timestamps? : any/c = #f
procedure
(call-with-unzip in proc) -> any
  in : (or/c path-string? input-port?)
  proc : (-> path-string? any)
procedure
(make-filesystem-entry-reader [#:dest dest-path          
                               #:strip-count strip-count 
                               #:exists exists])         
 -> ((bytes? boolean? input-port?) ((or/c #f exact-integer?))
     . ->* . any)
  dest-path : (or/c path-string? #f) = #f
  strip-count : exact-nonnegative-integer? = 0
  exists : (or/c 'skip 'error 'replace 'truncate   = 'error
                 'truncate/replace 'append 'update
                 'can-update 'must-truncate)
procedure
(read-zip-directory in) -> zip-directory?
  in : (or/c path-string? input-port?)
procedure
(zip-directory? v) -> boolean?
  v : any/c
procedure
(zip-directory-entries zipdir) -> (listof bytes?)
  zipdir : zip-directory?
procedure
(zip-directory-contains? zipdir name) -> boolean?
  zipdir : zip-directory?
  name : (or/c bytes? path-string?)
procedure
(zip-directory-includes-directory? zipdir     
                                   name)  -> boolean?
  zipdir : zip-directory?
  name : (or/c bytes? path-string?)
procedure
(unzip-entry  in                                          
              zipdir                                      
              entry                                       
             [entry-reader                                
              #:preserve-timestamps? preserve-timestamps? 
              #:utc-timestamps? utc-timestamps?])         
 -> void?
  in : (or/c path-string? input-port?)
  zipdir : zip-directory?
  entry : (or/c bytes? path-string?)
  entry-reader : (if preserve-timestamps?
                     (bytes? boolean? input-port? (or/c #f exact-integer?)
                      . -> . any)
                     (bytes? boolean? input-port? . -> . any))
               = (make-filesystem-entry-reader)
  preserve-timestamps? : any/c = #f
  utc-timestamps? : any/c = #f
procedure
(call-with-unzip-entry [in] entry proc) -> any
  in : path-string? = input-port
  entry : path-string?
  proc : (-> path-string? any)
procedure
(path->zip-path path) -> bytes?
  path : path-string?
struct
(struct exn:fail:unzip:no-such-entry exn:fail (entry)
    #:extra-constructor-name make-exn:fail:unzip:no-such-entry)
  entry : bytes?
procedure
(tar  tar-file                        
      path ...                        
     [#:path-prefix path-prefix       
      #:get-timestamp get-timestamp]) 
 -> exact-nonnegative-integer?
  tar-file : path-string?
  path : path-string?
  path-prefix : (or/c #f path-string?) = #f
  get-timestamp : (path? . -> . exact-integer?)
                = (if timestamp
                      (lambda (p) timestamp)
                      file-or-directory-modify-seconds)
procedure
(tar->output  paths                           
             [out                             
              #:path-prefix path-prefix       
              #:get-timestamp get-timestamp]) 
 -> exact-nonnegative-integer?
  paths : (listof path?)
  out : output-port? = (current-output-port)
  path-prefix : (or/c #f path-string?) = #f
  get-timestamp : (path? . -> . exact-integer?)
                = (if timestamp
                      (lambda (p) timestamp)
                      file-or-directory-modify-seconds)
procedure
(tar-gzip  tar-file                            
           paths ...                           
          [#:path-prefix path-prefix           
           #:get-timestamp get-timestamp]) -> void?
  tar-file : path-string?
  paths : path-string?
  path-prefix : (or/c #f path-string?) = #f
  get-timestamp : (path? . -> . exact-integer?)
                = (if timestamp
                      (lambda (p) timestamp)
                      file-or-directory-modify-seconds)
procedure
(untar  in                            
       [#:dest dest-path              
        #:strip-count strip-count     
        #:filter filter-proc])    -> void?
  in : (or/c path-string? input-port?)
  dest-path : (or/c path-string? #f) = #f
  strip-count : exact-nonnegative-integer? = 0
  filter-proc : (path? (or/c path? #f)
                 symbol? exact-integer? (or/c path? #f)
                 exact-nonnegative-integer?
                 exact-nonnegative-integer?
                 . -> . any/c)
              = (lambda args #t)
procedure
(untgz  in                            
       [#:dest dest-path              
        #:strip-count strip-count     
        #:filter filter-proc])    -> void?
  in : (or/c path-string? input-port?)
  dest-path : (or/c path-string? #f) = #f
  strip-count : exact-nonnegative-integer? = 0
  filter-proc : (path? (or/c path? #f)
                 symbol? exact-integer? (or/c path? #f)
                 exact-nonnegative-integer?
                 exact-nonnegative-integer?
                 . -> . any/c)
              = (lambda args #t)
procedure
(md5 in [hex-encode?]) -> bytes?
  in : (or/c input-port? bytes? string?)
  hex-encode? : boolean? = #t
procedure
(sha1 in) -> string?
  in : input-port?
procedure
(sha1-bytes in) -> bytes?
  in : input-port?
procedure
(bytes->hex-string bstr) -> string?
  bstr : bytes?
procedure
(hex-string->bytes str) -> bytes?
  str : string?
procedure
(gif-stream? v) -> boolean?
  v : any/c
procedure
(image-ready-gif-stream? v) -> boolean?
  v : any/c
procedure
(image-or-control-ready-gif-stream? v) -> boolean?
  v : any/c
procedure
(empty-gif-stream? v) -> boolean?
  v : any/c
procedure
(gif-colormap? v) -> boolean?
  v : any/c
procedure
(color? v) -> boolean?
  v : any/c
procedure
(dimension? v) -> boolean?
  v : any/c
procedure
(gif-state stream) -> symbol?
  stream : gif-stream?
procedure
(gif-start out w h bg-color cmap) -> gif-stream?
  out : output-port?
  w : dimension?
  h : dimension?
  bg-color : color?
  cmap : (or/c gif-colormap? #f)
procedure
(gif-add-image stream          
               left            
               top             
               width           
               height          
               interlaced?     
               cmap            
               bstr)       -> void?
  stream : image-ready-gif-stream?
  left : dimension?
  top : dimension?
  width : dimension?
  height : dimension?
  interlaced? : any/c
  cmap : (or/c gif-colormap? #f)
  bstr : bytes?
procedure
(gif-add-control stream              
                 disposal            
                 wait-for-input?     
                 delay               
                 transparent)    -> void?
  stream : image-or-control-ready-gif-stream?
  disposal : (or/c 'any 'keep 'restore-bg 'restore-prev)
  wait-for-input? : any/c
  delay : dimension?
  transparent : (or/c color? #f)
procedure
(gif-add-loop-control stream iteration) -> void?
  stream : empty-gif-stream?
  iteration : dimension?
procedure
(gif-add-comment stream bstr) -> void?
  stream : image-or-control-ready-gif-stream?
  bstr : bytes?
procedure
(gif-end stream) -> void?
  stream : image-or-control-ready-gif-stream?
procedure
(quantize bstr) -> bytes? gif-colormap? (or/c color? #f)
  bstr : (and/c bytes?
                (lambda (bstr)
                  (zero? (remainder (bytes-length bstr) 4))))
procedure
(ico? v) -> boolean?
  v : any/c
procedure
(ico-width ico) -> (integer-in 1 256)
  ico : ico?
procedure
(ico-height ico) -> (integer-in 1 256)
  ico : ico?
procedure
(ico-depth ico) -> (one-of/c 1 2 4 8 16 24 32)
  ico : ico?
procedure
(read-icos src) -> (listof ico?)
  src : (or/c path-string? input-port?)
procedure
(read-icos-from-exe src) -> (listof ico?)
  src : (or/c path-string? input-port?)
procedure
(write-icos icos dest [#:exists exists]) -> void?
  icos : (listof ico?)
  dest : (or/c path-string? output-port?)
  exists : (or/c 'error 'append 'update 'can-update = 'error
                 'replace 'truncate
                 'must-truncate 'truncate/replace)
procedure
(replace-icos icos dest) -> void?
  icos : (listof ico?)
  dest : (or/c path-string? output-port?)
procedure
(ico->argb ico) -> bytes?
  ico : ico?
procedure
(argb->ico width height bstr [#:depth depth]) -> ico?
  width : (integer-in 1 256)
  height : (integer-in 1 256)
  bstr : bytes?
  depth : (one-of/c 1 2 4 8 24 32) = 32
procedure
(get-resource  section       
               entry         
              [value-box     
               file          
               #:type type]) 
 -> (or/c #f string? bytes? exact-integer? #t)
  section : string?
  entry : string?
  value-box : (or/f #f (box/c (or/c string? bytes? exact-integer?)))
            = #f
  file : (or/c #f fail-path?) = #f
  type : (or/c 'string 'bytes 'integer) = derived-from-value-box
procedure
(write-resource  section                         
                 entry                           
                 value                           
                [file                            
                 #:type type                     
                 #:create-key? create-key?]) -> boolean?
  section : string?
  entry : string?
  value : (or/c string? bytes? exact-integer?)
  file : (or/c path-string? #f) = #f
  type : (or/c 'string 'bytes 'integer) = 'string
  create-key? : any/c = #f
procedure
(cache-file  dest-file                                 
            [#:exists-ok? exists-ok?]                  
             key                                       
             cache-dir                                 
             fetch                                     
            [#:notify-cache-use notify-cache-use       
             #:max-cache-files max-files               
             #:max-cache-size max-size                 
             #:evict-before? evict-before?             
             #:log-error-string log-error-string       
             #:log-debug-string log-debug-string]) -> void?
  dest-file : path-string?
  exists-ok? : any/c = #f
  key : (not/c #f)
  cache-dir : path-string?
  fetch : (-> any)
  notify-cache-use : (string? . -> . any) = void
  max-files : real? = 1024
  max-size : real? = (* 64 1024 1024)
  evict-before? : (hash? hash? . -> . boolean?)
                = (lambda (a b)
                    (< (hash-ref a 'modify-seconds)
                       (hash-ref b 'modify-seconds)))
  log-error-string : (string? . -> . any)
                   = (lambda (s) (log-error s))
  log-debug-string : (string? . -> . any)
                   = (lambda (s) (log-debug s))
procedure
(cache-remove  key                                       
               cache-dir                                 
              [#:log-error-string log-error-string       
               #:log-debug-string log-debug-string]) -> void?
  key : any/c
  cache-dir : path-string?
  log-error-string : (string? . -> . any)
                   = (lambda (s) (log-error s))
  log-debug-string : (string? . -> . any)
                   = (lambda (s) (log-debug s))
