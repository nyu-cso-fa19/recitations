all: ex1 ex2 ex3

ex1: main.o wrong1.o
	gcc -g $^ -o $@

ex2: main.o wrong2.o
	gcc -g $^ -o $@

ex3: wrong3.o
	gcc -g $^ -o $@

%.o: %.c
	gcc -c -g $^ -o $@

clean:
	rm -f *.o ex*
