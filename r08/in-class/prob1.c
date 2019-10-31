#include <stdio.h>
#include <stdlib.h>

void my_bad_function(void);
void get2(char *buf);
void dummy2(char *buf, char*buf2);

int main(void) {
	my_bad_function();
	return EXIT_FAILURE;
}

void my_bad_function(void) {
	char buf[16];
	get2(buf);
	dummy2(buf,0);
}
