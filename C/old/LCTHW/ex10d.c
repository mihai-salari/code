#include <stdio.h>

int main(int argc, char *argv[]) {
	// if (argc != 2) {
	// 	printf("ERROR: You need one argument!\n");
	// 	// this is how you abort a program
	// 	return 1;
	// }
	
	for (int j = 0; j < argc; j++) {		
		printf("argument %d: %s\n", j, argv[j]);
		
		if (j == 1) {
			for (int i = 0; argv[j][i] != '\0'; i++) {
				
				char letter = argv[j][i];
		
				if ((letter <= 65) || (letter >= 90 && letter <= 97) || (letter >= 123)) {
					printf("argument %d-%d: %c is not a letter.\n", j, i, letter);
					continue;
				}
				
				letter = letter <= 90 ? letter + 32 : letter; // convert to lowercase
		
				switch (letter) {
					case 'a':
						printf("argument %d-%d: %c\n", j, i, letter);
						break;
					case 'e':
						printf("argument %d-%d: %c\n", j, i, letter);
						break;
					case 'i':
						printf("argument %d-%d: %c\n", j, i, letter);
						break;
					case 'o':
						printf("argument %d-%d: %c\n", j, i, letter);
						break;
					case 'u':
						printf("argument %d-%d: %c\n", j, i, letter);
						break;
					case 'y':
					// why i > 2? is this a bug?
					// Y can be vowel or consonant in different words.
					if (i > 2) {
						// it's only sometimes Y
						printf("argument %d-%d: %c\n", j, i, letter);
					}
			
					break;
			
					default:
						printf("argument %d-%d: %c is not a vowel.\n", j, i, letter);
				}
			}			
		}		
	}
	
	return 0;
}