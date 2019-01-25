CC     = gcc  -fno-strict-aliasing
CFLAGS = -O3 -fomit-frame-pointer


all: wam2ma


wam_parser.o: wam_parser.c wam_parser.h wam_protos.h
	$(CC) $(CFLAGS) -c wam_parser.c

wam2ma.o: wam2ma.c wam_parser.h bt_string.c ../TopComp/copying.c
	$(CC) $(CFLAGS) -c wam2ma.c

wam2ma: wam2ma.o wam_parser.o
	$(CC) $(CFLAGS) -o wam2ma wam2ma.o wam_parser.o


clean:
	rm -f *.o *.ilk *.pdb *.pch *.idb *.exp wam2ma

distclean: clean
