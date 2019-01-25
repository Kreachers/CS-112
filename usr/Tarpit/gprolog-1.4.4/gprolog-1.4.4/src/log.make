cd EnginePl; make config
make[1]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/EnginePl'
gcc  -fno-strict-aliasing -O3 -fomit-frame-pointer  -o pl_config pl_config.c
./pl_config

	-------------------------------
	--- GNU PROLOG INSTALLATION ---
	-------------------------------

GNU Prolog version: 1.4.4 (Nov  6 2014)
Operating system  : linux-gnu
Processor         : x86_64
Size of a WAM word: 64 bits
C compiler        : gcc
C flags           : -O3 -fomit-frame-pointer
C flags machine   :  -fno-strict-aliasing
Assembler         : as
Assembler flags   : --64
Loader flags      : 
Loader libraries  : -lm
Use line editor   : Yes
Use piped consult : Yes
Use sockets       : Yes
Use FD solver     : Yes
Use machine regs. : Yes
Used register(s)  : r12 (pl_reg_bank)  r13 (TR)  r14 (B)  r15 (H)  

	------------------------------

(cd ../TopComp; make gplc)
make[2]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/TopComp'
gcc  -fno-strict-aliasing -O3 -fomit-frame-pointer -o gplc top_comp.c -lm
make[2]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/TopComp'
make[1]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/EnginePl'
. ./SETVARS;for i in EnginePl TopComp Wam2Ma Ma2Asm Linedit BipsPl Pl2Wam Fd2C EngineFD BipsFD;do (cd $i; make) || exit 1; done;\
	(cd TopComp; make top-level) || exit 1;\
	(cd Pl2Wam; make stage2)
make[1]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/EnginePl'
gcc  -fno-strict-aliasing -O3 -fomit-frame-pointer  -o cpp_headers cpp_headers.c
gplc -c -C '-O3 -fomit-frame-pointer' machine.c
gplc -c -C '-O3 -fomit-frame-pointer' machine1.c
gplc -c -C '-O3 -fomit-frame-pointer' stacks_sigsegv.c
gplc -c -C '-O3 -fomit-frame-pointer' mem_alloc.c
gplc -c -C '-O3 -fomit-frame-pointer' misc.c
gplc -c -C '-O3 -fomit-frame-pointer' hash_fct.c
gplc -c -C '-O3 -fomit-frame-pointer' hash.c
gplc -c -C '-O3 -fomit-frame-pointer' obj_chain.c
gplc -c -C '-O3 -fomit-frame-pointer' engine.c
gplc -c -o engine1.o engine1.c
gplc -c -C '-O3 -fomit-frame-pointer' wam_inst.c
gplc -c -C '-O3 -fomit-frame-pointer' atom.c
gplc -c -C '-O3 -fomit-frame-pointer' pred.c
gplc -c -C '-O3 -fomit-frame-pointer' oper.c
gplc -c -C '-O3 -fomit-frame-pointer' if_no_fd.c
gplc -c -C '-O3 -fomit-frame-pointer' main.c
rm -f libengine_pl.a
ar rc  libengine_pl.a machine.o machine1.o stacks_sigsegv.o mem_alloc.o misc.o hash_fct.o hash.o obj_chain.o engine.o engine1.o wam_inst.o atom.o pred.o oper.o if_no_fd.o main.o
ranlib libengine_pl.a
make[1]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/EnginePl'
make[1]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/TopComp'
gcc  -fno-strict-aliasing -O3 -fomit-frame-pointer -o hexgplc hexfilter.c
make[1]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/TopComp'
make[1]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Wam2Ma'
gcc  -fno-strict-aliasing -O3 -fomit-frame-pointer -c wam2ma.c
gcc  -fno-strict-aliasing -O3 -fomit-frame-pointer -c wam_parser.c
gcc  -fno-strict-aliasing -O3 -fomit-frame-pointer -o wam2ma wam2ma.o wam_parser.o
make[1]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Wam2Ma'
make[1]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Ma2Asm'
gcc  -fno-strict-aliasing -O3 -fomit-frame-pointer -c ma2asm.c
gcc  -fno-strict-aliasing -O3 -fomit-frame-pointer -c ma_parser.c
gcc  -fno-strict-aliasing -O3 -fomit-frame-pointer -c ma2asm_inst.c
gcc  -fno-strict-aliasing -O3 -fomit-frame-pointer -o ma2asm ma2asm.o ma2asm_inst.o ma_parser.o
make[1]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Ma2Asm'
make[1]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Linedit'
gcc  -fno-strict-aliasing -c -O3 -fomit-frame-pointer -funsigned-char linedit.c
gcc  -fno-strict-aliasing -c -O3 -fomit-frame-pointer -funsigned-char terminal.c
gcc  -fno-strict-aliasing -c -O3 -fomit-frame-pointer -funsigned-char ctrl_c.c
rm -f liblinedit.a
ar rc  liblinedit.a linedit.o terminal.o ctrl_c.o
ranlib liblinedit.a
make[1]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Linedit'
make[1]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/BipsPl'
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' error_supp.c
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' c_supp.c
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' foreign_supp.c
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' pred_supp.c
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' term_supp.c
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' stream_supp.c
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' scan_supp.c
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' parse_supp.c
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' write_supp.c
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' dynam_supp.c
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' callinf_supp.c
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' bc_supp.c
gplc -c foreign.wam
gplc -c pl_error.wam
gplc -c utils.wam
gplc -c unify.wam
gplc -c assert.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' assert_c.c
gplc -c read.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' read_c.c
gplc -c write.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' write_c.c
gplc -c print.wam
gplc -c const_io.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' const_io_c.c
gplc -c oper.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' oper_c.c
gplc -c pred.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' pred_c.c
gplc -c atom.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' atom_c.c
gplc -c control.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' control_c.c
gplc -c call.wam
gplc -c call_args.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' call_args_c.c
gplc -c catch.wam
gplc -c throw.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' throw_c.c
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' flag_supp.c
gplc -c flag.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' flag_c.c
gplc -c arith_inl.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' arith_inl_c.c
gplc -c type_inl.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' type_inl_c.c
gplc -c term_inl.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' term_inl_c.c
gplc -c g_var_inl.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' g_var_inl_c.c
gplc -c all_solut.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' all_solut_c.c
gplc -c sort.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' sort_c.c
gplc -c list.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' list_c.c
gplc -c stat.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' stat_c.c
gplc -c stream.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' stream_c.c
gplc -c file.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' file_c.c
gplc -c char_io.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' char_io_c.c
gplc -c dec10io.wam
gplc -c format.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' format_c.c
gplc -c os_interf.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' os_interf_c.c
gplc -c expand.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' expand_c.c
gplc -c consult.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' consult_c.c
gplc -c pretty.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' pretty_c.c
gplc -c random.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' random_c.c
gplc -c top_level.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' top_level_c.c
gplc -c debugger.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' debugger_c.c
gplc -c src_rdr.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' src_rdr_c.c
gplc -c all_pl_bips.wam
gplc -c sockets.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' sockets_c.c
gplc -c le_interf.wam
gplc -c -C '-O3 -fomit-frame-pointer -funsigned-char' le_interf_c.c
rm -f libbips_pl.a
ar rc  libbips_pl.a error_supp.o c_supp.o foreign_supp.o pred_supp.o term_supp.o stream_supp.o scan_supp.o parse_supp.o write_supp.o dynam_supp.o callinf_supp.o bc_supp.o foreign.o pl_error.o utils.o unify.o assert.o assert_c.o read.o read_c.o write.o write_c.o print.o const_io.o const_io_c.o oper.o oper_c.o pred.o pred_c.o atom.o atom_c.o control.o control_c.o call.o call_args.o call_args_c.o catch.o throw.o throw_c.o flag_supp.o flag.o flag_c.o arith_inl.o arith_inl_c.o type_inl.o type_inl_c.o term_inl.o term_inl_c.o g_var_inl.o g_var_inl_c.o all_solut.o all_solut_c.o sort.o sort_c.o list.o list_c.o stat.o stat_c.o stream.o stream_c.o file.o file_c.o char_io.o char_io_c.o dec10io.o format.o format_c.o os_interf.o os_interf_c.o expand.o expand_c.o consult.o consult_c.o pretty.o pretty_c.o random.o random_c.o top_level.o top_level_c.o debugger.o debugger_c.o src_rdr.o src_rdr_c.o all_pl_bips.o sockets.o sockets_c.o le_interf.o le_interf_c.o
ranlib libbips_pl.a
make[1]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/BipsPl'
make[1]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Pl2Wam'
gplc -c pl2wam.wam
gplc -c read_file.wam
gplc -c syn_sugar.wam
gplc -c internal.wam
gplc -c code_gen.wam
gplc -c reg_alloc.wam
gplc -c inst_codif.wam
gplc -c first_arg.wam
gplc -c indexing.wam
gplc -c wam_emit.wam
[ ! -f  pl2wam ] || cp pl2wam pl2wam0
gplc -o pl2wam --no-fd-lib-warn --no-top-level pl2wam.o read_file.o syn_sugar.o internal.o code_gen.o reg_alloc.o inst_codif.o first_arg.o indexing.o wam_emit.o
make[1]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Pl2Wam'
make[1]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Fd2C'
gplc -c --fast-math fd2c.pl
gplc -c --fast-math read_file.pl
gplc -c --fast-math parse.pl
gplc -c --fast-math compile.pl
gplc -o fd2c --no-fd-lib --min-bips fd2c.o read_file.o parse.o compile.o
make[1]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Fd2C'
make[1]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/EngineFD'
gplc -c -C '-O3 -fomit-frame-pointer' fd_inst.c
gplc -c -C '-O3 -fomit-frame-pointer' fd_range.c
gplc -c -C '-O3 -fomit-frame-pointer' fd_unify.fd
rm -f libengine_fd.a
ar rc  libengine_fd.a fd_inst.o fd_range.o  fd_unify.o
ranlib libengine_fd.a
make[1]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/EngineFD'
make[1]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/BipsFD'
gplc -c  --no-redef-error fd_infos.pl
gplc -c -C '-O3 -fomit-frame-pointer ' fd_infos_c.c
gplc -c  --no-redef-error fd_values.pl
gplc -c -C '-O3 -fomit-frame-pointer ' fd_values_c.c
gplc -c -C '-O3 -fomit-frame-pointer ' fd_values_fd.fd
gplc -c  --no-redef-error fd_math.pl
gplc -c -C '-O3 -fomit-frame-pointer ' fd_math_c.c
gplc -c -C '-O3 -fomit-frame-pointer ' fd_math_fd.fd
gplc -c  --no-redef-error fd_bool.pl
gplc -c -C '-O3 -fomit-frame-pointer ' fd_bool_c.c
gplc -c -C '-O3 -fomit-frame-pointer ' fd_bool_fd.fd
gplc -c  --no-redef-error fd_prime.pl
gplc -c -C '-O3 -fomit-frame-pointer ' fd_prime_c.c
gplc -c -C '-O3 -fomit-frame-pointer ' fd_prime_fd.fd
gplc -c  --no-redef-error fd_symbolic.pl
gplc -c -C '-O3 -fomit-frame-pointer ' fd_symbolic_c.c
gplc -c -C '-O3 -fomit-frame-pointer ' fd_symbolic_fd.fd
gplc -c  --no-redef-error fd_optim.pl
gplc -c -C '-O3 -fomit-frame-pointer ' math_supp.c
gplc -c -C '-O3 -fomit-frame-pointer ' oper_supp.c
gplc -c  --no-redef-error all_fd_bips.pl
rm -f libbips_fd.a
ar rc  libbips_fd.a fd_infos.o fd_infos_c.o fd_values.o fd_values_c.o fd_values_fd.o fd_math.o fd_math_c.o fd_math_fd.o fd_bool.o fd_bool_c.o fd_bool_fd.o fd_prime.o fd_prime_c.o fd_prime_fd.o fd_symbolic.o fd_symbolic_c.o fd_symbolic_fd.o fd_optim.o math_supp.o oper_supp.o all_fd_bips.o
ranlib libbips_fd.a
make[1]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/BipsFD'
make[1]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/TopComp'
gplc  -o gprolog -C '-O3 -fomit-frame-pointer' top_level.c
make[1]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/TopComp'
make[1]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Pl2Wam'
[ ! -f  pl2wam ] || cp pl2wam pl2wam0
rm -rf  pl2wam
make
make[2]: Entering directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Pl2Wam'
[ ! -f  pl2wam ] || cp pl2wam pl2wam0
gplc -o pl2wam --no-fd-lib-warn --no-top-level pl2wam.o read_file.o syn_sugar.o internal.o code_gen.o reg_alloc.o inst_codif.o first_arg.o indexing.o wam_emit.o
make[2]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Pl2Wam'
make[1]: Leaving directory `/afs/cats.ucsc.edu/courses/cmps112-wm/usr/Tarpit/gprolog-1.4.4/gprolog-1.4.4/src/Pl2Wam'
