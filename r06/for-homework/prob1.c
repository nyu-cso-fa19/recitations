#include <stdio.h>

unsigned int mystery(unsigned int x, unsigned int y) {
	return x * y;
}

int main() {
	printf("%d\n", mystery(5, 6));
}
