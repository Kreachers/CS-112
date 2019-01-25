GPLC      = gplc
GPLCFLAGS = --fast-math
CFLAGS = -O3 -fomit-frame-pointer
PLS       = pl2wam.pl read_file.pl syn_sugar.pl internal.pl \
            code_gen.pl reg_alloc.pl inst_codif.pl first_arg.pl \
            indexing.pl wam_emit.pl
OBJS      = $(PLS:.pl=.o)
WAMS      = $(PLS:.pl=.wam)


.SUFFIXES:
.SUFFIXES: .o .wam .pl $(SUFFIXES)


.pl.wam:
	$(GPLC) -W $(GPLCFLAGS) $*.pl
.wam.o:
	$(GPLC) -c $*.wam


pl2wam: $(OBJS)
	[ ! -f  pl2wam ] || cp pl2wam pl2wam0
	$(GPLC) -o pl2wam --no-fd-lib-warn --no-top-level $(OBJS)

# in stage 2 we simply re-link pl2wam since now the FD lib should be present
# (needed to test FD built-in redefinitions via predicate_property)
stage2:
	[ ! -f  pl2wam ] || cp pl2wam pl2wam0
	rm -rf  pl2wam
	$(MAKE)


clean:
	[ ! -f  pl2wam ] || mv pl2wam pl2wam0
	rm -f *.o *.ilk *.pdb *.pch *.idb *.exp


clean-wam:
	rm -f *.wam


clean-full: clean-wam clean


distclean: clean
	rm -f pl2wam pl2wam0




pl2wam.wam:     pl2wam.pl
read_file.wam:  read_file.pl
syn_sugar.wam:  syn_sugar.pl
internal.wam:   internal.pl
code_gen.wam:   code_gen.pl
reg_alloc.wam:  reg_alloc.pl
inst_codif.wam: inst_codif.pl
first_arg.wam:  first_arg.pl
indexing.wam:   indexing.pl
wam_emit.wam:   wam_emit.pl


check:
	@./check_boot -a [a-z][a-z]*.wam  && echo Bootstrap Prolog Compiler OK


swi_pl2wam: swilib.pl $(PLS)
	pl -o swi_pl2wam_main -c swilib.pl $(PLS)
	echo "#!/bin/sh" >swi_pl2wam
	echo 'swi_pl2wam_main -g go -t halt -- $$*' >>swi_pl2wam
	chmod a+x swi_pl2wam
