#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

struct list {
	//DO NOT TOUCH THIS CODE
	struct list* next;
	int value;
};

void delete(struct list** head, int value) {
	//FIX THE BUG IN THIS FUNCTION
	//delete takes a pointer to the head pointer
	//It searches the list for an element in the list
	//whose value is the same as the one passed to delete
	//It then checks if the head node was deleted
	//If the head node was deleted, the head pointer must be changed
	//so it changes the head pointer
	//It then changes the list so the previous node points past it
	//It then frees the deleted node
	struct list* curr = *head;
	struct list* last = *head;
	//Search the list for what we are deleting
	while (curr && curr->value != value) {
		last = curr;
		curr = curr->next;
	}
	if (last == curr) {
		//Update the head pointer
		head = &curr->next;
	}
	if (curr) {
		//"remove" the list element
		last->next = curr->next;
		//Free the deleted node
		free(curr);
	}
}

struct list* lalloc(int value) {
	//DO NOT TOUCH THIS CODE
	struct list* n = (struct list*)malloc(sizeof(struct list));
	n->next = 0;
	n->value = value;
	return n;
}

int main() {
	//DO NOT TOUCH THE CODE BELOW
	struct list* head = lalloc(0);
	struct list** curr = &head->next;
	*curr = lalloc(1);
	curr = &((*curr)->next);
	*curr = lalloc(2);
	curr = &((*curr)->next);
	*curr = lalloc(3);
	curr = &((*curr)->next);
	*curr = lalloc(4);
	curr = &((*curr)->next);
	*curr = lalloc(5);
	curr = &((*curr)->next);
	assert(head->value == 0);
	assert(head->next->value == 1);
	assert(head->next->next->value == 2);
	assert(head->next->next->next->value == 3);
	assert(head->next->next->next->next->value == 4);
	assert(head->next->next->next->next->next->value == 5);
	assert(head->next->next->next->next->next->next == 0);
	printf("Basic list OK!\n");
	delete(&head, 5);
	assert(head->value == 0);
	assert(head->next->value == 1);
	assert(head->next->next->value == 2);
	assert(head->next->next->next->value == 3);
	assert(head->next->next->next->next->value == 4);
	assert(head->next->next->next->next->next == 0);
	printf("Delete at end OK!\n");
	delete(&head, 2);
	assert(head->value == 0);
	assert(head->next->value == 1);
	assert(head->next->next->value == 3);
	assert(head->next->next->next->value == 4);
	assert(head->next->next->next->next == 0);
	printf("Delete at middle OK!\n");
	delete(&head, 0);
	assert(head->value == 1);
	assert(head->next->value == 3);
	assert(head->next->next->value == 4);
	assert(head->next->next->next == 0);
	printf("Delete at end OK!\n");
}
