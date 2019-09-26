#include <stdio.h>

void add10(int x) {
	x = x + 10;
}

int main() {
	int x = 50;
	printf("x is %d\n", x);
	add10(x);
	printf("x is now %d\n", x);
}
