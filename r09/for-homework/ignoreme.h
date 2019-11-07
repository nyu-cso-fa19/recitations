#ifndef I_SAID_IGNORE_ME
#define I_SAID_IGNORE_ME

struct list_node {
	struct list_node *next;
	int value;
};

struct list_node* list_add(struct list_node* next, int value);
#endif
