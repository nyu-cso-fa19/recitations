CFLAGS=-Og -std=gnu99 -g -no-pie -fno-stack-protector
TARGET=prob1

all: $(TARGET)

%: %.c
	gcc $(CFLAGS) -o $@ $^

clean:
	-rm $(TARGET)
