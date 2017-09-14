#include <stdio.h>

int main(int argc, char *argv[]) {
	int i = 0;
	
	argv[2] = "Hello";
	
	for (i = 1; i < argc; i++) {
		printf("arg %d: %s\n", i, argv[i]);
	}
	
	// array of strings, this is a two-dimensional array
	// each string being one element, and each character in the string being another
	char *states[] = {
		"California", "Oregon", "Washington", "Texas,", NULL
	};
	
	int num_states = 6;
	
	for (i = 0; i < num_states; i++) {
		printf("state %d: %s\n", i, states[i]);
	}
	
	return 0;
}