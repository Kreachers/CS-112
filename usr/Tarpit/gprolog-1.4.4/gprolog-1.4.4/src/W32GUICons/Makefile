DLL_W32GUICONS       = w32guicons.dll
CC                   = gcc  -fno-strict-aliasing
CFLAGS               = -O3 -fomit-frame-pointer
CFLAGS_UNSIGNED_CHAR = -funsigned-char
RC                   = 
RCFLAGS              = -O coff
LD                   = gcc
LDFLAGS              = 
LDGUILIBS            = 


DLLNAME = $(DLL_W32GUICONS)
OBJDLL  = w32_console.o
RESDLL  = w32_console.res


.SUFFIXES:
.SUFFIXES: .o .cpp .c .res .rc $(SUFFIXES)

.cpp.o:
	$(CC) -c $(CFLAGS) $(CFLAGS_UNSIGNED_CHAR) $*.cpp

.c.o:
	$(CC) -c $(CFLAGS) $(CFLAGS_UNSIGNED_CHAR) $*.c

.rc.res:
	$(RC) $(RCFLAGS) -o $*.res $*.rc

all: $(DLLNAME) w32gc_interf.o win_exe_icon.res

$(DLLNAME): $(OBJDLL) $(RESDLL)
	$(LD) $(LDFLAGS) -o $(DLLNAME) $(OBJDLL) $(RESDLL) $(LDGUILIBS) -shared

w32gc_interf.o: w32gc_interf.h



clean:
	rm -f *.o *.res *.RES $(DLLNAME) *.lib *.exp *.EXP *.idb *.pdb *.ilk

distclean: clean
