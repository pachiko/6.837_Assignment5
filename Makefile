CC = g++
SRCS = $(wildcard *.cpp)
OBJS = $(SRCS:.cpp=.o)
PROG = a5

CFLAGS = -O2 -Wall -Wextra

INCFLAGS = -I /usr/include/vecmath
LINKFLAGS = -L /usr/local/lib -lvecmath

all: $(PROG)

$(PROG): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@ $(LINKFLAGS)

.cpp.o:
	$(CC) $(CFLAGS) $< -c -o $@ $(INCFLAGS)

clean:
	rm -f *.bmp *.o $(PROG) 
