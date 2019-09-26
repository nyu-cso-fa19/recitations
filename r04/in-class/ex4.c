#include <stdio.h>
#include <assert.h>

void calc_fib(int *arr, int n) {
	assert(n >= 2);
	arr[0] = arr[1] = 1;
	for (int i = 2; i < n; i++) {
		arr[i] = arr[i-1] + arr[i-2];
	}
}

int main() {
	int n = 10;
	int fib[n];
	calc_fib(fib, n);
	printf("%d\n", fib[n-1]);
}
