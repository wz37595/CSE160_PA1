# Sample Makefile for CS160
CC = cc

default: svtest 

svalidate.o : svalidate.c svalidate.h
	$(CC) -c svalidate.c
svtest: svtest.c svalidate.o
	$(CC) -o svtest svtest.c svalidate.o

clean:
	- /bin/rm svalidate.o
	- /bin/rm svtest 
