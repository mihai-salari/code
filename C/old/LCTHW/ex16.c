#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>

struct Person {
	char *name;
	int age;
	int weight;
	int height;
};

// Function pointer
struct Person *Person_create(char *name, int age, int weight, int height) {
	struct Person *who = malloc(sizeof(struct Person));
	assert(who != NULL);
	
	who->name = strdup(name);
	who->age = age;
	who->weight = weight;
	who->height = height;
	
	return who;
}

void Person_destroy(struct Person *who) {
	assert(who != NULL);
	free(who->name);
	free(who);
}

void Person_print(struct Person *who) {
	printf("Name: %s\n", who->name);
	printf("\tAge: %d\n", who->age);
	printf("\tWeight: %d\n", who->weight);
	printf("\tHeight: %d\n", who->height);
}

int main(int argc, char *argv[]) {
	// Make two people structures
	struct Person *joe = Person_create("Joe Wu", 32, 64, 140);
	struct Person *frank = Person_create("Frank Ma", 20, 72, 180);
	
	// Print them out and where they are in memory
	printf("Joe is at memory location %p:\n", joe);
	Person_print(joe);
	
	printf("Frank is at memory location %p:\n", frank);
	Person_print(frank);
	
	// Make everyone age 20 years and print them again
	joe->age += 20;
	joe->height -= 2;
	joe->weight += 40;
	Person_print(joe);
	
	frank->age += 20;
	frank->weight += 20;
	Person_print(frank);
	
	// Destroy them both so we clean up
	Person_destroy(joe);
	Person_destroy(frank);
	
	return 0;
}