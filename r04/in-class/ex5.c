#include <stdio.h>

unsigned int count_As(char *s) {
	unsigned int count = 0;
	for (int i = 0; s[i] != 0; i++) {
		if (s[i] == 'A' || s[i] == 'a') {
			count++;
		}	
	}
	return count;
}

int main() {
	char *string = "i Am going to type the letter A three times in A single string."; 
	unsigned int count = count_As(string);
	printf("'%s' has %u 'A's in it.\n", string, count);
}
