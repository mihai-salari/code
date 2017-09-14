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
		
		// introduce a nano-bug here ;)
		letter += 10;
		
		switch (letter) {
			case 'a':
			case 'A':
				printf("%d (%c): 'A'\n", i, letter);
				break;
			case 'e':
			case 'E':
				printf("%d (%c): 'E'\n", i, letter);
				break;
			case 'i':
			case 'I':
				printf("%d (%c): 'I'\n", i, letter);
				break;
			case 'o':
			case 'O':
				printf("%d (%c): 'O'\n", i, letter);
				break;
			case 'u':
			case 'U':
				printf("%d (%c): 'U'\n", i, letter);
				break;
			case 'y':
			case 'Y':
			// why i > 2? is this a bug?
			// Y can be vowel or consonant in different words.
			if (i > 2) {
				// it's only sometimes Y
				printf("%d: 'Y'\n", i);
			}
			
			break;
			
			default:
				printf("%d: %c is not a vowel.\n", i, letter);
		}
	}
	
	return 0;
}