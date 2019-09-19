#include <stdio.h>

int foo(int n);

int main() {
    int n = 10;
    int f = foo(n);
    printf("The sum from 1 to %d is %d\n", n, f);
}
