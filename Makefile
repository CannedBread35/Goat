#############################################################################
# File name:	Makefile
# Author:		Taylor Isaac
# Date:			09/09/2021
# Class:		CS 300
# Assignment:	R. Quiz 1
# Purpose:		R. Quiz 1	    
#############################################################################


CC=gcc
CFLAGS=-g -Wall

# -g  include debug symbols in the executable so that the code can be
# 		run through the debugger effectively
#
# -Wall	show all warnings from gcc


.PHONY: clean all

TARGETS=bin/goat

all: bin ${TARGETS}

bin:
	mkdir -p bin
	
bin/goat: bin/goat.o
	gcc -g -o bin/goat bin/goat.o
	
bin/goat.o: src/goat.c
	gcc -g -c -o bin/goat.o src/goat.c
	
clean:
	rm -rf ${TARGETS} bin/*.o
	