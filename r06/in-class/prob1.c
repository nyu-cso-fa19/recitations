#include <stdio.h>

int mystery(int* arr, int n) {
}

int main() {
	int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
	printf("%d\n", mystery(arr, sizeof(arr)/sizeof(*arr)));
}
