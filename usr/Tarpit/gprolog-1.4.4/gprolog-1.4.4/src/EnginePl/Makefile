ROOT_DIR1     = /afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4
LIB_ENGINE_PL = libengine_pl.a
GPLC          = gplc
CC            = gcc  -fno-strict-aliasing
CFLAGS        = -O3 -fomit-frame-pointer
AR_RC         = ar rc 
RANLIB        = ranlib


LIBNAME = $(LIB_ENGINE_PL)
OBJLIB  = machine.o machine1.o stacks_sigsegv.o mem_alloc.o \
          misc.o hash_fct.o hash.o obj_chain.o \
          engine.o engine1.o wam_inst.o \
          atom.o pred.o oper.o \
          if_no_fd.o main.o

all: config wam_regs.h cpp_headers $(LIBNAME)


$(LIBNAME): $(OBJLIB)
	rm -f $(LIBNAME)
	$(AR_RC) $(LIBNAME) $(OBJLIB)
	$(RANLIB) $(LIBNAME)


.SUFFIXES:
.SUFFIXES: .o .c $(SUFFIXES)

.c.o:
	$(GPLC) -c -C '$(CFLAGS)' $*.c



# Configuration

config: pl_config wam_regs.h

pl_config: pl_config.c gp_config.h machine.h stacks_sigsegv.h wam_archi.def
	$(CC) $(CFLAGS) $(LFLAGS) -o pl_config pl_config.c


wam_regs.h: pl_config machine.h stacks_sigsegv.h wam_archi.def
	./pl_config
	(cd ../TopComp; $(MAKE) $(GPLC))


gp_config.h:
	echo '*** run ./configure before make please ***'
	exit 1


cpp_headers: cpp_headers.c
	$(CC) $(CFLAGS) $(LFLAGS) -o cpp_headers cpp_headers.c

try_sigaction: try_sigaction.c
	$(CC) $(CFLAGS) $(LFLAGS) -o try_sigaction try_sigaction.c



# General core


machine.o: machine.h machine.c gp_config.h wam_regs.h

stacks_sigsegv.o: stacks_sigsegv.h stacks_sigsegv.c gp_config.h wam_regs.h

mem_alloc.o: mem_alloc.c

misc.o: misc.h misc.c machine.h

hash.o: hash.h hash.c

main.o: main.c

obj_chain.o: obj_chain.h obj_chain.c



# Prolog engine

# engine1.c should be compiled without optimizations (or else it is a .s)

engine1.o: engine1.c
	$(GPLC) -c -o engine1.o engine1.c

engine.o: engine.h engine.c

wam_inst.o: wam_archi.h wam_inst.h wam_inst.c unify.c

hash_fct.o: hash_fct.h hash_fct1.c

atom.o: atom.h atom.c gp_config.h

pred.o: pred.h pred.c

oper.o: oper.h oper.c

if_no_fd.o: if_no_fd.h if_no_fd.c


clean:
	rm -f pl_config cpp_headers try_sigaction *.o *.ilk *.pdb *.pch *.idb *.exp $(LIBNAME)

distclean: clean clean-test_oc
	rm -f wam_archi.h wam_regs.h gp_config.h




check:	test_oc
	./test_oc

clean-check: clean-test_oc

# test obj chain utility

TEST_OC_SRC=obj_chain.c test_oc.c

test_oc: obj_chain.c obj_chain.h test_oc.c test_oc_defs.h
	for i in 1 2 3 4 5; do \
	  (echo "#define OBJ_NO $$i" && \
	   echo "#include \"test_oc_defs.h\"") >test_oc_m$$i.c || exit; \
	done
	$(CC) $(CFLAGS) -o test_oc test_oc.c obj_chain.c -I. test_oc_m[1-5].c
	rm -f test_oc_m* test_oc*.o

clean-test_oc:
	rm -f test_oc test_oc_m*

