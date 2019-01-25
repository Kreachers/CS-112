LIB_LINEDIT          = liblinedit.a
CC                   = gcc  -fno-strict-aliasing
CFLAGS               = -O3 -fomit-frame-pointer
CFLAGS_UNSIGNED_CHAR = -funsigned-char
LDLIBS               = -lm
AR_RC                = ar rc 
RANLIB               = ranlib

LIBNAME = $(LIB_LINEDIT)
OBJLIB  = linedit.o terminal.o ctrl_c.o

.SUFFIXES:
.SUFFIXES: .o .c $(SUFFIXES)

all: $(LIBNAME)

.c.o:
	$(CC) -c $(CFLAGS) $(CFLAGS_UNSIGNED_CHAR) $*.c


$(LIBNAME): $(OBJLIB)
	rm -f $(LIBNAME)
	$(AR_RC) $(LIBNAME) $(OBJLIB)
	$(RANLIB) $(LIBNAME)


clean:
	rm -f *.o *.ilk *.pdb *.pch *.idb *.exp $(LIBNAME)


distclean: clean
	rm -f test_linedit test_noecho

# test files
# under win32: use make W=Y test_linedit.exe (or test_noecho.exe) to
# link the GUI console
# You can also use gplc test_linedit.c and gplc --gui-console test_linedit.c
# even linking the GUI console you can set the env var NO_LE_HOOK to avoid it

W32LNK=..\W32GUICons\w32gc_interf.o
# /link /subsystem:windows  (remove the console, obsolete now)

test_linedit: test_linedit.o $(LIBNAME)
	if [ "$$W" != "Y" ]; then W=''; else W="$(W32LNK)"; fi; \
	$(CC) -o test_linedit test_linedit.o $(LIBNAME) $(LDLIBS) $$W

test_noecho: test_noecho.o $(LIBNAME)
	if [ "$$W" != "Y" ]; then W=''; else W="$(W32LNK)"; fi; \
	$(CC) -o test_noecho test_noecho.o $(LIBNAME) $(LDLIBS) $$W


clean-test:
	rm -f test*.o test_linedit test_noecho


