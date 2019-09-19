foo: main.o util.o
	gcc -g $^ -o $@

%.o: %.c
	gcc -c -g $^ -o $@

clean:
	rm -f *.o foo

