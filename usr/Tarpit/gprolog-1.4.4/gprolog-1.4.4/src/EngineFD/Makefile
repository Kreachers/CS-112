LIB_ENGINE_FD = libengine_fd.a
GPLC          = gplc
CC            = gcc  -fno-strict-aliasing
CFLAGS        = -O3 -fomit-frame-pointer
AR_RC         = ar rc 
RANLIB        = ranlib


LIBNAME = $(LIB_ENGINE_FD)
OBJLIB  = fd_inst.o fd_range.o  fd_unify.o


.SUFFIXES:
.SUFFIXES: .o .c .fd $(SUFFIXES)


$(LIBNAME): $(OBJLIB)
	rm -f $(LIBNAME)
	$(AR_RC) $(LIBNAME) $(OBJLIB)
	$(RANLIB) $(LIBNAME)


.fd.o:
	$(GPLC) -c -C '$(CFLAGS)' $*.fd

.c.o:
	$(GPLC) -c -C '$(CFLAGS)' $*.c




fd_inst.o: fd_inst.h fd_inst.c fd_range.h fd_hook_range.h

fd_range.o: fd_range.h fd_hook_range.h fd_range.c

fd_unify.o: fd_unify.fd



clean:
	rm -f *.o *.ilk *.pdb *.pch *.idb *.exp $(LIBNAME)


distclean: clean
