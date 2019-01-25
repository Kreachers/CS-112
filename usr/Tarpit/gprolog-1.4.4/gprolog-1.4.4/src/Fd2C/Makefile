GPLC      = gplc
GPLCFLAGS = --fast-math
OBJS      = fd2c.o read_file.o parse.o \
            compile.o

.SUFFIXES:
.SUFFIXES: .o .pl $(SUFFIXES)

.pl.o:
	$(GPLC) -c $(GPLCFLAGS) $*.pl


fd2c: $(OBJS)
	$(GPLC) -o fd2c --no-fd-lib --min-bips $(OBJS)



clean:
	rm -f *.o *.ilk *.pdb *.pch *.idb *.exp fd2c

distclean: clean
