#P=hello -- export this environment variable on the command-line instead

OBJECTS=
CFLAGS=`pkg-config --cflags gsl glib-2.0` -Wall -g -O3
LDLIBS=`pkg-config --libs gsl glib-2.0`
CC=clang

$(P): $(OBJECTS)