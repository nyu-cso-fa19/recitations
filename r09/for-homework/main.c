#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "ignoreme.h"

int main(void) {
	int values[] = {3, 2, 1, 450, 3, 4};
	int len = sizeof(values) / sizeof(*values);
	struct list_node* head = 0;
	//Add nodes
	for (int i = 0; i < len; i++) {
		head = list_add(head, values[i]);
	}
	//Check nodes
	for (int i = 0; i < len; i++) {
		if (head->value != values[len-i-1]) {
			printf("Hey, I expected the %dth list element to contain %d.\n",
			       i, values[len-i-1]);
			printf("But it contained %d!\n", head->value);
			return EXIT_FAILURE;
		}
		head = head->next;
	}
	printf("Everything seems to work! [CORRECT]\n");
	return EXIT_SUCCESS;
}
