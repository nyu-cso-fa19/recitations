CFLAGS=-Og -std=gnu99 -g -no-pie -fno-stack-protector
TARGET=prob1

all: $(TARGET)

prob1: prob1.c main.c
	gcc $(CFLAGS) -o $@ $^

test: all
	@./.hidden/test.sh

clean:
	-rm $(TARGET)
