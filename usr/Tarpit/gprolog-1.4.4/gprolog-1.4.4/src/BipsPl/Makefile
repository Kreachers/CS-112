MAKE_SOCKETS_OBJS    = $(SOCKETS_OBJS)
MAKE_LE_INTERF_OBJS  = $(LE_INTERF_OBJS)
LIB_BIPS_PL          = libbips_pl.a
LIB_ENGINE_PL        = libengine_pl.a
LIB_LINEDIT          = liblinedit.a
GPLC                 = gplc
CC                   = gcc  -fno-strict-aliasing
CFLAGS               = -O3 -fomit-frame-pointer
CFLAGS_UNSIGNED_CHAR = -funsigned-char
AR_RC                = ar rc 
RANLIB               = ranlib


SOCKETS_OBJS      = sockets.o sockets_c.o
NO_SOCKETS_OBJS   = no_sockets.o


LE_INTERF_OBJS    = le_interf.o le_interf_c.o
NO_LE_INTERF_OBJS = no_le_interf.o


LIBNAME = $(LIB_BIPS_PL)
OBJLIB  = error_supp.o \
          c_supp.o \
          foreign_supp.o \
          pred_supp.o \
          term_supp.o \
          stream_supp.o \
          scan_supp.o \
          parse_supp.o \
          write_supp.o \
          dynam_supp.o \
          callinf_supp.o \
          bc_supp.o \
          foreign.o \
          pl_error.o \
          utils.o \
          unify.o \
          assert.o assert_c.o \
          read.o read_c.o \
          write.o write_c.o print.o \
          const_io.o const_io_c.o \
          oper.o oper_c.o \
          pred.o pred_c.o \
          atom.o atom_c.o \
          control.o control_c.o \
          call.o \
          call_args.o call_args_c.o \
          catch.o throw.o throw_c.o \
          flag_supp.o flag.o flag_c.o \
          arith_inl.o arith_inl_c.o \
          type_inl.o type_inl_c.o \
          term_inl.o term_inl_c.o \
          g_var_inl.o g_var_inl_c.o \
          all_solut.o all_solut_c.o \
          sort.o sort_c.o \
          list.o list_c.o \
          stat.o stat_c.o \
          stream.o stream_c.o \
          file.o file_c.o \
          char_io.o char_io_c.o \
          dec10io.o \
          format.o format_c.o \
          os_interf.o os_interf_c.o \
          expand.o expand_c.o \
          consult.o consult_c.o \
          pretty.o pretty_c.o \
          random.o random_c.o \
          top_level.o top_level_c.o \
          debugger.o debugger_c.o \
          src_rdr.o src_rdr_c.o \
          all_pl_bips.o \
          $(MAKE_SOCKETS_OBJS) \
	  $(MAKE_LE_INTERF_OBJS)


.SUFFIXES:
.SUFFIXES: .o .c .wam .pl $(SUFFIXES)


.pl.wam:
	$(GPLC) -W $(GPLCFLAGS) --no-redef-error $*.pl

.wam.o:
	$(GPLC) -c $*.wam

.c.o:
	$(GPLC) -c -C '$(CFLAGS) $(CFLAGS_UNSIGNED_CHAR)' $*.c

$(LIBNAME): $(OBJLIB) no_sockets.wam sockets.wam no_le_interf.wam le_interf.wam
	rm -f $(LIBNAME)
	$(AR_RC) $(LIBNAME) $(OBJLIB)
	$(RANLIB) $(LIBNAME)



clean:
	rm -f *.o *.ilk *.pdb *.pch *.idb *.exp $(LIBNAME)


distclean: clean


# for test

t.wam: t.pl

t: t.o t_c.o ../EnginePl/$(LIB_ENGINE_PL) $(LIBNAME) \
            ../Linedit/$(LIB_LINEDIT)
	$(GPLC) -o t t.o t_c.o --no-fd-lib


# depending on ../EnginePl/gp_config.h

error_supp.o: ../EnginePl/gp_config.h
stream_supp.o: ../EnginePl/gp_config.h
flag_c.o: ../EnginePl/gp_config.h
flag_c.o: ../EnginePl/gp_config.h


# depending on dynam_supp.h

dynam_supp.o: dynam_supp.h
bc_supp.o:    dynam_supp.h
assert_c.o:   dynam_supp.h

# depending on flag_supp.h

flag_supp.o:   flag_supp.h
flag_c.o:      flag_supp.h
stream_supp.o: flag_supp.h
consult_c.o:   flag_supp.h

foreign.wam:     foreign.pl

all_pl_bips.wam: all_pl_bips.pl
all_solut.wam:   all_solut.pl
arith_inl.wam:   arith_inl.pl
assert.wam:      assert.pl
atom.wam:        atom.pl
call.wam:        call.pl
call_args.wam:   call_args.pl
catch.wam:       catch.pl
char_io.wam:     char_io.pl
const_io.wam:	 const_io.pl
consult.wam:     consult.pl
control.wam:     control.pl
expand.wam:      expand.pl
debugger.wam:    debugger.pl
	$(GPLC) -W $(GPLCFLAGS) --no-redef-error --fast-math debugger.pl
dec10io.wam:     dec10io.pl
file.wam:        file.pl
flag.wam:        flag.pl
format.wam:      format.pl
g_var_inl.wam:   g_var_inl.pl
le_interf.wam:   le_interf.pl
list.wam:        list.pl
stat.wam:        stat.pl
no_le_interf.wam:no_le_interf.pl
no_sockets.wam:	 no_sockets.pl
oper.wam:        oper.pl
os_interf.wam:   os_interf.pl
pl_error.wam:    pl_error.pl
pred.wam:        pred.pl
pretty.wam:      pretty.pl
random.wam:	 random.pl
print.wam:       print.pl
read.wam:        read.pl
reg_alloc.wam:   reg_alloc.pl
sockets.wam:	 sockets.pl
sort.wam:        sort.pl
stream.wam:      stream.pl
term_inl.wam:    term_inl.pl
throw.wam:       throw.pl
top_level.wam:   top_level.pl
type_inl.wam:    type_inl.pl
unify.wam:       unify.pl
utils.wam:       utils.pl
write.wam:       write.pl
src_rdr.wam:   	 src_rdr.pl

check:
	@../Pl2Wam/check_boot -a [a-z][a-z]*.wam && echo Bootstrap Prolog Bips OK



# test: read alone

RCFLAGS=$(CFLAGS) -I../EnginePl -DFOR_EXTERNAL_USE

ROBJS=scan_supp.o parse_supp.o /tmp/stream_supp.o /tmp/write_supp.o


/tmp/stream_supp.o: stream_supp.c
	$(GPLC) -C "$(RCFLAGS)" -c stream_supp.c -o /tmp/stream_supp.o

/tmp/write_supp.o: write_supp.c
	$(GPLC) -C "$(RCFLAGS)" -c write_supp.c -o /tmp/write_supp.o


r: r.o $(ROBJS) ../EnginePl/$(LIB_ENGINE_PL)
	$(GPLC) -o r r.o $(ROBJS) --no-pl-lib

