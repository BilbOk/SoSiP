CC=g++
CFLAGS=-g -Wall -O3 -I ~/include -L ~/lib -pedantic -std=c++11 -Wno-unused-function -D_GNU_SOURCE
HEADERS=kstring.h
OBJECTS=$(HEADERS:.h=.o)
LIBS=-lz

.PHONY: clean rebuild

all:ensemble

imageByPrefix: ensemble.c $(HEADERS) $(OBJECTS) Makefile
	$(CC) $(CFLAGS) $(OBJECTS) $< -o $@ $(LIBS)

clean:
	rm -f ensemble *.o

rebuild: clean all
