#include <stdio.h>

int main(int argc, char *argv[]) {
	if (argc != 2) {
		printf("ERROR: You need one argument!\n");
		// this is how you abort a program
		return 1;
	}
	
	int i = 0;
	
	for (i = 0; argv[1][i] != '\0'; i++) {
		char letter = argv[1][i];
		
		if (letter == 'a' || letter == 'A') {
			printf("%d (%c): 'A'\n", i, letter);
		} else if (letter == 'e' || letter == 'E') {
			printf("%d (%c): 'E'\n", i, letter);
		} else if (letter == 'i' || letter == 'I') {
			printf("%d (%c): 'I'\n", i, letter);
		} else if (letter == 'o' || letter == 'O') {
			printf("%d (%c): 'O'\n", i, letter);
		} else if (letter == 'u' || letter == 'U') {
			printf("%d (%c): 'U'\n", i, letter);
		} else if (letter == 'y' || letter == 'Y') {
			if (i > 2) {
				printf("%d (%c): 'Y'\n", i, letter);
			}
		} else {
			printf("%d: %c IS NOT A FUCKING VOWEL.\n", i, letter);
		}		
	}
	
	return 0;
}