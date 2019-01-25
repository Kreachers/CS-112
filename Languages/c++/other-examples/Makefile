# $Id: Makefile,v 1.1 2008-01-28 17:48:56-08 - - $

ALL:= ${basename ${wildcard *.cc}}

CCC = /opt/SUNWspro/bin/CC
CCCOPTS = -g -features=%all


all: ${ALL}


%: %.cc
	cid $<
	${CCC} ${CCCOPTS} $< -o $@

spotless: clean
	- rm ${ALL}

clean: 
	- rm *.errors

