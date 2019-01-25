(QUOTE
 ((COMPILE-SHIM "gcc -std=gnu99 -DHAVE_CONFIG_H -DMIT_SCHEME "
                "-Wold-style-definition -Wextra -Wno-sign-compare -Wno-unused-parameter -Wstrict-prototypes -Wnested-externs -Wredundant-decls -Wall -Wundef -Wpointer-arith -Winline -O3  -fPIC ")
  (LINK-SHIM "gcc -std=gnu99  -L/usr/lib64" " -shared -fPIC")
  (INSTALL "/usr/bin/install -c --preserve-timestamps -m 644")
  (INFODIR "/afs/cats.ucsc.edu/courses/cmps112-wm/usr/mit-scheme-9.2-x86-64/share/info/")))
