#include <stdio.h>
#include <stdlib.h>

void dummy2(char* buf, char** buf2) { }

void dummy(char* buf) { }

void get2(char* buf) {
	while (*buf=getchar(),*buf!='\n') {
		buf++;
	}
	*buf = '\0';
	dummy(buf);
}

