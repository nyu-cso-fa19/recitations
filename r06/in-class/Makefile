PROGS=prob1_from_asm prob1_from_c prob2_from_asm prob2_from_c

all: $(PROGS)

prob2_from_asm: prob2.s
	gcc $^ -o $@

prob2_from_c: prob2.c
	gcc $^ -o $@

prob1_from_asm: prob1.s
	gcc $^ -o $@

prob1_from_c: prob1.c
	gcc $^ -o $@

test: all
	@./.hidden/test.sh
clean:
	rm -f $(PROGS)
