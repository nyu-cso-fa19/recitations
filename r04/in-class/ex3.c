#include <stdio.h>

int main() {
	int n = 10;
	int fib[n];
	fib[0] = fib[1] = 1;
	for (int i = 2; i < n; i++) {
		fib[i] = fib[i-1] + fib[i-2];
	}
	printf("%d\n", fib[n-1]);
}
