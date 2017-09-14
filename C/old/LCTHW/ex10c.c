#include <stdio.h>

int main(int argc, char *argv[]) {
	if (argc != 2) {
		printf("ERROR: You need one argument!\n");
		// this is how you abort a program
		return 1;
	}
	
	int i = 0;
	char letter;
	
	for (i = 0; letter = argv[1][i], argv[1][i] != '\0'; i++) {
		
		if ((letter <= 65) || (letter >= 90 && letter <= 97) || (letter >= 123)) {
			printf("%c is not a letter.\n", letter);
			continue;
		}
				
		letter = letter <= 90 ? letter + 32 : letter; // convert to lowercase
		
		switch (letter) {
			case 'a':
				printf("%d: %c\n", i, letter);
				break;
			case 'e':
				printf("%d: %c\n", i, letter);
				break;
			case 'i':
				printf("%d: %c\n", i, letter);
				break;
			case 'o':
				printf("%d: %c\n", i, letter);
				break;
			case 'u':
				printf("%d: %c\n", i, letter);
				break;
			case 'y':
			// why i > 2? is this a bug?
			// Y can be vowel or consonant in different words.
			if (i > 2) {
				// it's only sometimes Y
				printf("%d: %c\n", i, letter);
			}
			
			break;
			
			default:
				printf("%d: %c is not a vowel.\n", i, letter);
		}
	}
	
	return 0;
}