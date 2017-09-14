#include <stdio.h>

int main(int argc, char *argv[]) {
	// create two arrays
	int ages[] = { 23, 43, 12, 89, 2 };
	char *names[] = { "Alan", "Frank", "Mary", "John", "Lisa" }; // store an array of strings (and remember string is array of characters)
	
	int count = sizeof(ages) / sizeof(int);
	printf("count of ages: %d\n", count);
	
	int i = 0;
	for (i = 0; i < count; i++) {
		printf("%s has %d years alive.\n", names[i], ages[i]);
	}
	
	printf("---\n");
	
	// point to the start of the arrays
	int *cur_age = ages;
	
	// a pointer to a pointer of char type, remember char * is already a pointer to char (a string)
	char **cur_name = names; // this ** is a two-level indirection, to get to the string stored in names (because names is a pointer to char * array)
	
	printf("cur_ages: %p\n", cur_age);
	printf("cur_name: %p\n", cur_name);
	
	// using pointer arithmetic
	for (i = 0; i < count; i++) {
		printf("%d: %s is %d years old. (%p %p)\n", i, *(cur_name + i), *(cur_age + i), (cur_name + i), (cur_age + i));
	}
	
	printf("---\n");
	
	// pointers are just arrays
	for (i = 0; i < count; i++) {
		printf("%s is %d years old again.\n", cur_name[i], cur_age[i]);
	}
	
	printf("---\n");
	
	// stupid complex way
	// note that we are working on memory address here, not the value (string or int)
	for (cur_name = names, cur_age = ages; (cur_age - ages) < count; cur_name++, cur_age++) { // set cur_name and cur_age to the beginning of the names and ages arrays
		printf("cur_name is %p\n", cur_name);
		printf("cur_age is %p\n", cur_age);
		printf("ages is %p\n", ages);
		printf("cur_age - ages is %ld\n", cur_age -ages);
		
		printf("%s lived %d years so far.\n", *cur_name, *cur_age);
	}
	
	return 0;
}