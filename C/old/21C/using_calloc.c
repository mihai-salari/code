#include <stdlib.h>
#include <stdio.h>

int main() {
	int *with_rubbish = malloc(10*sizeof(int)); // malloc can contains unknown junk
	
	for(int i = 0; i < 10; i++) {
		printf("%i = %i\n", i, with_rubbish[i]);
	}
	
	int *with_zero = calloc(10, sizeof(int)); // calloc allocate and clear to all zeros
	
	for(int i = 0; i < 10; i++) {
		printf("%i = %i\n", i, with_zero[i]);
	}	
}