TOP_LEVEL       = gprolog
TOP_LEVEL_FLAGS = 
GPLC            = gplc
CFLAGS          = -O3 -fomit-frame-pointer
HEXGPLC         = hexgplc
CC              = gcc  -fno-strict-aliasing
CFLAGS          = -O3 -fomit-frame-pointer
LDLIBS          = -lm

EXECS     = $(GPLC) $(HEXGPLC)
ALL_EXECS = $(EXECS) $(TOP_LEVEL)


first: $(EXECS)

$(GPLC): top_comp.c copying.c ../EnginePl/wam_regs.h \
         ../EnginePl/gp_config.h ../EnginePl/machine1.c decode_hexa.c copying.c prolog_path.c
	$(CC) $(CFLAGS) -o $(GPLC) top_comp.c $(LDLIBS)

$(HEXGPLC): hexfilter.c decode_hexa.c
	$(CC) $(CFLAGS) -o $(HEXGPLC) hexfilter.c



all: $(ALL_EXECS)


top-level: $(TOP_LEVEL)

$(TOP_LEVEL): ../EnginePl/gp_config.h copying.c top_level.c
	$(GPLC) $(TOP_LEVEL_FLAGS) -o $(TOP_LEVEL) -C '$(CFLAGS)' top_level.c



clean:
	-mv $(TOP_LEVEL) $(TOP_LEVEL)0
	rm -f *.o *.ilk *.pdb *.pch *.idb *.exp $(ALL_EXECS)

distclean:
	rm -f *.o $(ALL_EXECS) $(TOP_LEVEL)0


