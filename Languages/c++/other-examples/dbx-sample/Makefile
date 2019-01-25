
all: foo

foo: foo.o
	CC -g  foo.o -o foo

foo.o: foo.cc
	CC -g -c -xO0 foo.cc

