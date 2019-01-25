NAME         = gprolog
VERSION      = 1.4.4
PKG_NAME     = gprolog-1.4.4
CC           = gcc  -fno-strict-aliasing
CFLAGS       = -O3 -fomit-frame-pointer
WITH_MSVC    = no
WIN_TMP_DIR  = 
WIN_CONF_OPT = 
ISCC         = iscc.exe
AS           = as


# the name gprolog_win32 is also used inside gp-setup.iss.in
TMPDIR=/tmp/gprolog_win32

create_bat: create_bat.c
	$(CC) $(CFLAGS) -o create_bat create_bat.c

compile:
	(cd ..; make copy_dist_tree distdir=/tmp/)
	compile_install "$(WIN_CONF_OPT)" /tmp/$(PKG_NAME)/src $(TMPDIR)

compile-link:
	compile_install "$(WIN_CONF_OPT)" .. $(TMPDIR)


setup: compile create-setup


setup-link: compile-link create-setup


create-setup: create_bat.exe
	if test $(WITH_MSVC) != no; then cp `which $(AS)` $(TMPDIR)/bin; fi
	cp create_bat.exe $(TMPDIR)/bin
	$(ISCC) gp-setup.iss

../$(PKG_NAME).tar.gz:
	(cd ..; make dist)

clean:
	rm -rf create_bat.o create_bat /tmp/$(PKG_NAME).tar.gz /tmp/$(PKG_NAME) $(TMPDIR)


distclean: clean
