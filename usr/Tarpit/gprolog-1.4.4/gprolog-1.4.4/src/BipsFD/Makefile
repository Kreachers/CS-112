LIB_BIPS_FD   = libbips_fd.a
LIB_ENGINE_FD = libengine_fd.a
GPLC          = gplc
CC            = gcc  -fno-strict-aliasing
CFLAGS        = -O3 -fomit-frame-pointer
AR_RC         = ar rc 
RANLIB        = ranlib


LIBNAME = $(LIB_BIPS_FD)
OBJLIB  = fd_infos.o fd_infos_c.o \
          fd_values.o fd_values_c.o fd_values_fd.o \
          fd_math.o fd_math_c.o fd_math_fd.o \
          fd_bool.o fd_bool_c.o fd_bool_fd.o \
          fd_prime.o fd_prime_c.o fd_prime_fd.o \
          fd_symbolic.o fd_symbolic_c.o fd_symbolic_fd.o \
          fd_optim.o \
          math_supp.o \
          oper_supp.o \
          all_fd_bips.o


.SUFFIXES:
.SUFFIXES: .o .c .fd .pl $(SUFFIXES)


.pl.o:
	$(GPLC) -c $(GPLCFLAGS) --no-redef-error $*.pl

.fd.o:
	$(GPLC) -c -C '$(CFLAGS) $(CLFAGS_UNSIGNED_CHAR)' $*.fd

.c.o:
	$(GPLC) -c -C '$(CFLAGS) $(CLFAGS_UNSIGNED_CHAR)' $*.c


$(LIBNAME): $(OBJLIB)
	rm -f $(LIBNAME)
	$(AR_RC) $(LIBNAME) $(OBJLIB)
	$(RANLIB) $(LIBNAME)



clean:
	rm -f *.o *.ilk *.pdb *.pch *.idb *.exp $(LIBNAME)


distclean: clean



# for test

t_fd.c: t_fd.fd ../Fd2C/fd2c
	$(GPLC) --fd-to-c t_fd.fd

t: t.o t_fd.o t_c.o ../EngineFD/$(LIB_ENGINE_FD) \
            ../EngineFD/fd_to_c.h $(LIBNAME)
	$(GPLC) -o t t.o t_fd.o t_c.o



# depending on math_supp.h

math_supp.o: math_supp.h
fd_math_c.o: math_supp.h
fd_bool_c.o: math_supp.h

