all: c_p1 asm_p1
asm_p1: prob1.s
	gcc -o $@ $^
c_p1: prob1.c
	gcc -o $@ $^
clean:
	-rm c_p1 asm_p1
