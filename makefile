ROOT := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
DIR_INC = -I $(ROOT)/zlib -I $(ROOT)/zlib/contrib/minizip
LIBS = $(ROOT)/zlib/contrib/minizip/libminizip.a $(ROOT)/zlib/libz.a 
CFLAG_DEBUG = -D_DEBUG -ggdb -O0 -static -static-libgcc -static-libstdc++ -g3 -std=gnu99 -Wall 
CFLAGS = $(CFLAG_DEBUG) $(DIR_INC) $(DIR_LIB)

objects_cc = main.o
objects_c = teleunzip.o

.PHONY : clean

all: test

test: $(objects_cc) $(objects_c) $(USERLIB)
	g++ $(CFLAGS) -o test $(objects_cc) $(objects_c) $(LIBS)

$(objects_cc): %.o: %.cc
	g++ -c $(CFLAGS) $< -o $@

$(objects_c): %.o: %.c
	g++ -c $(CFLAGS) $< -o $@

clean: 
	rm test $(objects_cc) $(objects_c)