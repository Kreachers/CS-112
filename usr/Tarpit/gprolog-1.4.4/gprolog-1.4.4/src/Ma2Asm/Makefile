GPLC   = gplc
CC     = gcc  -fno-strict-aliasing
CFLAGS = -O3 -fomit-frame-pointer
LDLIBS = -lm

all: ma2asm

ma_parser.o: ma_parser.c ma_parser.h ma_protos.h
	$(CC) $(CFLAGS) -c ma_parser.c

ma2asm.o: ma2asm.c ma_protos.h ma_parser.h ../Wam2Ma/bt_string.c \
          ../TopComp/copying.c
	$(CC) $(CFLAGS) -c ma2asm.c

ma2asm_inst.o: ma2asm_inst.c ma_parser.h ../EnginePl/wam_regs.h \
               ix86_any.c powerpc_any.c sparc_any.c \
               mips_irix.c alpha_any.c x86_64_any.c
	$(CC) $(CFLAGS) -c ma2asm_inst.c

ma2asm: ma2asm.o ma_parser.o \
                    ma2asm_inst.o ma2asm_inst.c
	$(CC) $(CFLAGS) -o ma2asm ma2asm.o ma2asm_inst.o ma_parser.o


clean:
	rm -f *.o *.ilk *.pdb *.pch *.idb *.exp ma2asm


distclean: clean clean-chkma clean-extract_asm



# for extract_asm

extract_asm: extract_asm.c
	$(CC) $(CFLAGS) -o extract_asm extract_asm.c

clean-extract_asm:
	rm -f extract_asm


check: chkma
	@./chkma

clean-check: clean-chkma



# for chkma
CHKMA_OBJS=chkma.o chkma_ma.o ../EnginePl/engine1.o

# use make FC=Y chkma to generate an fc check

chkma.o: chkma.c
	if [ "$$FC" = "Y" ]; then FCFLAGS='-DFAST'; fi; \
	$(GPLC) --c-compiler "$(CC)" -C "$(CFLAGS) $$FCFLAGS" -c chkma.c

chkma_ma.s: chkma_ma.ma ma2asm
	if [ "$$FC" != "Y" ]; then MAFLAGS='--ignore-fast'; fi; \
	./ma2asm --comment $$MAFLAGS chkma_ma.ma

chkma_ma.o: chkma_ma.s
	$(GPLC) -c chkma_ma.s

chkma: $(CHKMA_OBJS)
	$(GPLC) -o chkma $(CHKMA_OBJS) --no-pl-lib

clean-chkma:
	rm -f chkma.o chkma_ma.s chkma_ma.o chkma



# for test

t.wam: t.pl
	$(GPLC) -W t.pl

t.ma: t.wam
	$(GPLC) -M --comment t.wam

t.s: t.ma
	$(GPLC) -S --comment t.ma

t: t.s
	$(GPLC) -o t t.s  --no-fd-lib




