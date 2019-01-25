2716
((3) 0 () 3 ((q lib "openssl/main.rkt") (q lib "openssl/sha1.rkt") (q lib "openssl/md5.rkt")) () (h ! (equal) ((c def c (c (? . 0) q ssl-server-context?)) q (2650 . 3)) ((c def c (c (? . 0) q ports->ssl-ports)) q (2715 . 25)) ((c def c (c (? . 0) q ssl-listener?)) q (1988 . 3)) ((c def c (c (? . 0) q ssl-make-server-context)) q (2503 . 3)) ((c def c (c (? . 0) q ssl-peer-certificate-hostnames)) q (7985 . 3)) ((c def c (c (? . 0) q ssl-load-verify-source!)) q (3920 . 10)) ((c def c (c (? . 0) q ssl-available?)) q (0 . 2)) ((c def c (c (? . 0) q ssl-connect)) q (85 . 13)) ((c def c (c (? . 0) q ssl-set-ciphers!)) q (5572 . 4)) ((c def c (c (? . 0) q ssl-port?)) q (2448 . 3)) ((c def c (c (? . 1) q sha1-bytes)) q (8400 . 3)) ((c def c (c (? . 1) q sha1)) q (8343 . 3)) ((c def c (c (? . 0) q ssl-dh4096-param-path)) q (7396 . 2)) ((c def c (c (? . 0) q ssl-load-suggested-certificate-authorities!)) q (6577 . 8)) ((c def c (c (? . 0) q ssl-load-fail-reason)) q (34 . 2)) ((c def c (c (? . 0) q ssl-load-default-verify-sources!)) q (5143 . 3)) ((c def c (c (? . 0) q ssl-connect/enable-break)) q (616 . 10)) ((c def c (c (? . 0) q ssl-peer-subject-name)) q (8182 . 3)) ((c def c (c (? . 2) q md5)) q (8598 . 3)) ((c def c (c (? . 0) q ssl-peer-verified?)) q (7780 . 3)) ((c def c (c (? . 0) q ssl-accept)) q (2047 . 3)) ((c def c (c (? . 0) q ssl-peer-issuer-name)) q (8263 . 3)) ((c def c (c (? . 0) q ssl-load-certificate-chain!)) q (5842 . 6)) ((c def c (c (? . 0) q ssl-close)) q (1914 . 3)) ((c def c (c (? . 0) q ssl-set-verify-hostname!)) q (7848 . 4)) ((c def c (c (? . 2) q md5-bytes)) q (8654 . 3)) ((c def c (c (? . 0) q ssl-peer-check-hostname)) q (8074 . 4)) ((c def c (c (? . 0) q ssl-set-verify!)) q (7434 . 5)) ((c def c (c (? . 0) q ssl-load-private-key!)) q (6130 . 10)) ((c def c (c (? . 1) q bytes->hex-string)) q (8462 . 3)) ((c def c (c (? . 0) q ssl-default-verify-sources)) q (4377 . 13)) ((c def c (c (? . 0) q ssl-load-verify-root-certificates!)) q (5273 . 7)) ((c def c (c (? . 0) q ssl-client-context?)) q (1282 . 3)) ((c def c (c (? . 0) q ssl-server-context-enable-ecdhe!)) q (7189 . 5)) ((c def c (c (? . 0) q ssl-make-client-context)) q (1103 . 4)) ((c def c (c (? . 0) q ssl-server-context-enable-dhe!)) q (6961 . 5)) ((c def c (c (? . 0) q ssl-try-verify!)) q (7607 . 5)) ((c def c (c (? . 0) q ssl-addresses)) q (2313 . 4)) ((c def c (c (? . 0) q ssl-accept/enable-break)) q (2142 . 3)) ((c def c (c (? . 0) q ssl-abandon-port)) q (2250 . 3)) ((c def c (c (? . 0) q ssl-seal-context!)) q (5727 . 3)) ((c def c (c (? . 0) q ssl-listen)) q (1347 . 13)) ((c def c (c (? . 0) q ssl-secure-client-context)) q (1040 . 2)) ((c def c (c (? . 1) q hex-string->bytes)) q (8531 . 3))))
value
ssl-available? : boolean?
value
ssl-load-fail-reason : (or/c #f string?)
procedure
(ssl-connect  hostname              
              port-no               
             [client-protocol]) -> input-port? output-port?
  hostname : string?
  port-no : (integer-in 1 65535)
  client-protocol : (or/c ssl-client-context? = 'sslv2-or-v3
                          'sslv2-or-v3
                          'sslv2
                          'sslv3
                          'tls
                          'tls11
                          'tls12)
procedure
(ssl-connect/enable-break  hostname          
                           port-no           
                          [client-protocol]) 
 -> input-port? output-port?
  hostname : string?
  port-no : (integer-in 1 65535)
  client-protocol : (or/c ssl-client-context?
                          'sslv2-or-v3 'sslv2 'sslv3 'tls 'tls11 'tls12)
                  = 'sslv2-or-v3
procedure
(ssl-secure-client-context) -> ssl-client-context?
procedure
(ssl-make-client-context [protocol]) -> ssl-client-context?
  protocol : (or/c 'sslv2-or-v3 'sslv2 'sslv3 'tls 'tls11 'tls12)
           = 'sslv2-or-v3
procedure
(ssl-client-context? v) -> boolean?
  v : any/c
procedure
(ssl-listen  port-no               
            [queue-k               
             reuse?                
             hostname-or-#f        
             server-protocol]) -> ssl-listener?
  port-no : (integer-in 1 65535)
  queue-k : exact-nonnegative-integer? = 5
  reuse? : any/c = #f
  hostname-or-#f : (or/c string? #f) = #f
  server-protocol : (or/c ssl-server-context?
                          'sslv2-or-v3 'sslv2 'sslv3 'tls 'tls11 'tls12)
                  = 'sslv2-or-v3
procedure
(ssl-close listener) -> void?
  listener : ssl-listener?
procedure
(ssl-listener? v) -> boolean?
  v : any/c
procedure
(ssl-accept listener) -> input-port? output-port?
  listener : ssl-listener?
procedure
(ssl-accept/enable-break listener) -> input-port? output-port?
  listener : ssl-listener?
procedure
(ssl-abandon-port p) -> void?
  p : ssl-port?
procedure
(ssl-addresses p [port-numbers?]) -> void?
  p : (or/c ssl-port? ssl-listener?)
  port-numbers? : any/c = #f
procedure
(ssl-port? v) -> boolean?
  v : any/c
procedure
(ssl-make-server-context protocol) -> ssl-server-context?
  protocol : (or/c 'sslv2-or-v3 'sslv2 'sslv3 'tls 'tls11 'tls12)
procedure
(ssl-server-context? v) -> boolean?
  v : any/c
procedure
(ports->ssl-ports  input-port                              
                   output-port                             
                  [#:mode mode                             
                   #:context context                       
                   #:encrypt protocol                      
                   #:close-original? close-original?       
                   #:shutdown-on-close? shutdown-on-close? 
                   #:error/ssl error                       
                   #:hostname hostname])                   
 -> input-port? output-port?
  input-port : input-port?
  output-port : output-port?
  mode : symbol? = 'accept
  context : (or/c ssl-client-context? ssl-server-context?)
          = ((if (eq? mode 'accept)
                 ssl-make-server-context
                 ssl-make-client-context)
             protocol)
  protocol : (or/c 'sslv2-or-v3 'sslv2 'sslv3 'tls 'tls11 'tls12)
           = 'sslv2-or-v3
  close-original? : boolean? = #f
  shutdown-on-close? : boolean? = #f
  error : procedure? = error
  hostname : (or/c string? #f) = #f
procedure
(ssl-load-verify-source!  context           
                          src               
                         [#:try? try?]) -> void?
  context : (or/c ssl-client-context? ssl-server-context?)
  src : (or/c path-string?
              (list/c 'directory path-string?)
              (list/c 'win32-store string?)
              (list/c 'macosx-keychain path-string?))
  try? : any/c = #f
parameter
(ssl-default-verify-sources)
 -> (let ([source/c (or/c path-string?
                          (list/c 'directory path-string?)
                          (list/c 'win32-store string?)
                          (list/c 'macosx-keychain path-string?))])
      (listof source/c))
(ssl-default-verify-sources srcs) -> void?
  srcs : (let ([source/c (or/c path-string?
                               (list/c 'directory path-string?)
                               (list/c 'win32-store string?)
                               (list/c 'macosx-keychain path-string?))])
           (listof source/c))
procedure
(ssl-load-default-verify-sources! context) -> void?
  context : (or/c ssl-client-context? ssl-server-context?)
procedure
(ssl-load-verify-root-certificates! context-or-listener 
                                    pathname)           
 -> void?
  context-or-listener : (or/c ssl-client-conntext? ssl-server-context?
                              ssl-listener?)
  pathname : path-string?
procedure
(ssl-set-ciphers! context cipher-spec) -> void?
  context : (or/c ssl-client-context? ssl-server-context?)
  cipher-spec : string?
procedure
(ssl-seal-context! context) -> void?
  context : (or/c ssl-client-context? ssl-server-context?)
procedure
(ssl-load-certificate-chain! context-or-listener     
                             pathname)           -> void?
  context-or-listener : (or/c ssl-client-context? ssl-server-context?
                              ssl-listener?)
  pathname : path-string?
procedure
(ssl-load-private-key!  context-or-listener     
                        pathname                
                       [rsa?                    
                        asn1?])             -> void?
  context-or-listener : (or/c ssl-client-context? ssl-server-context?
                              ssl-listener?)
  pathname : path-string?
  rsa? : boolean? = #t
  asn1? : boolean? = #f
procedure
(ssl-load-suggested-certificate-authorities!                     
                                             context-or-listener 
                                             pathname)           
 -> void?
  context-or-listener : (or/c ssl-client-context? ssl-server-context?
                              ssl-listener?)
  pathname : path-string?
procedure
(ssl-server-context-enable-dhe!  context             
                                [dh-param-path]) -> void?
  context : ssl-server-context?
  dh-param-path : path-string? = ssl-dh4096-param-path
procedure
(ssl-server-context-enable-ecdhe!  context          
                                  [curve-name]) -> void?
  context : ssl-server-context?
  curve-name : symbol? = 'secp521r1
value
ssl-dh4096-param-path : path?
procedure
(ssl-set-verify! clp on?) -> void?
  clp : (or/c ssl-client-context? ssl-server-context?
              ssl-listener? ssl-port?)
  on? : any/c
procedure
(ssl-try-verify! clp on?) -> void?
  clp : (or/c ssl-client-context? ssl-server-context?
              ssl-listener? ssl-port?)
  on? : any/c
procedure
(ssl-peer-verified? p) -> boolean?
  p : ssl-port?
procedure
(ssl-set-verify-hostname! ctx on?) -> void?
  ctx : (or/c ssl-client-context? ssl-server-context?)
  on? : any/c
procedure
(ssl-peer-certificate-hostnames p) -> (listof string?)
  p : ssl-port?
procedure
(ssl-peer-check-hostname p hostname) -> boolean?
  p : ssl-port?
  hostname : string?
procedure
(ssl-peer-subject-name p) -> (or/c bytes? #f)
  p : ssl-port?
procedure
(ssl-peer-issuer-name p) -> (or/c bytes? #f)
  p : ssl-port?
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
(md5 in) -> string?
  in : input-port?
procedure
(md5-bytes in) -> bytes?
  in : input-port?
