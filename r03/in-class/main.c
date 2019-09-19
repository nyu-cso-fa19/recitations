#include <stdio.h>

int count_ones(int n);

int main() {
	int n = -1;
	int ones = count_ones(n);
	printf("The number %d has %d ones in its 32 bit binary representation.\n", n, ones);
}
