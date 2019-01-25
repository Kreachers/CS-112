
CCCOPTS = -c -G -MMD -fexternal-templates
CCC = g++

all: teststack

teststack: teststack.o stack.o implementation.o

stack.o: stack.cc stack.h
	${CCC} ${CCCOPTS} stack.cc

teststack.o: teststack.cc stack.h
	${CCC} ${CCCOPTS} teststack.cc

implementation.o: implementation.cc stack.h
	${CCC} ${CCCOPTS} implementation.cc

