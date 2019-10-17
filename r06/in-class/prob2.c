#include <stdio.h>

int mystrlen(const char* s) {
	const char* p = s;
	while (*p) {
		p++;
	}
	return p - s;
}

int main() {
	char* s = "this is a test";
	printf("%d\n", mystrlen(s));
}
