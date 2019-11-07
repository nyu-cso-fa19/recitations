#include <stdlib.h>
#include "ignoreme.h"

/*
 * This function allocates a new node and then sets its fields
 * equal to the provided arguments. Finally, it returns a pointer
 * to the new node.
 */
struct list_node* list_add(struct list_node* next, int value) {
	struct list_node node;
	struct list_node *new_node = &node;
	new_node->value = value;
	new_node->next = next;
	return new_node;	
}
