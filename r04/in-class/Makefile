CFILES:=$(wildcard *.c)
TARGETS:=$(CFILES:.c=)
OBJECTS:=$(CFILES:.c=.o)

all: $(TARGETS)

ex%: ex%.o
	gcc -g $^ -o $@

%.o: %.c
	gcc -c -g $^ -o $@

clean:
	rm -f *.o $(OBJECTS) $(TARGETS)
