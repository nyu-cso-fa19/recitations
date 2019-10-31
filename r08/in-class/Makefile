CFLAGS=-Og -std=gnu99 -g -no-pie -fno-stack-protector -Wno-deprecated-declarations -Wno-unused-result
TARGET=prob1

all: $(TARGET)

$(TARGET): prob1.o util.o
	gcc $(CFLAGS) -o $@ $^

%.o: %.c
	gcc $(CFLAGS) -c -o $@ $^

clean:
	-rm $(TARGET) *.o
