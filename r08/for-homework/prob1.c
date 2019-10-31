#include <stdio.h>
#include <stdlib.h>

void my_bad_function(long long index, long long value);

int main(void) {
	long long index = 11;
	long long value = 0x4005dd;
	my_bad_function(index, value);
	return EXIT_FAILURE;
}

void my_bad_function(long long index, long long value) {
	long long buf[10];
	buf[index] = value;
	printf("%p\t%lld\n", buf, buf[index]);
}

void sadness(void) {
	printf("You found the secret!\n");
	exit(EXIT_SUCCESS);
}
