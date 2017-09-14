#include <stdio.h>

// Print out the ASCII for a to z, A to Z

int main(int argc, char *argv[]) {
	
	char a = 'a';
	char z = 'z';
	char A = 'A';
	char Z = 'Z';
	
	for (int i = a; i <= z; i++) {
		printf("%d: %c\n", i, i);
	}
	
	for (int j = A; j <= Z; j++) {
		printf("%d: %c\n", j, j);
	}
	
	return 0;
}
	