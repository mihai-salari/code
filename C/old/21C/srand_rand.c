#include <time.h>
#include <stdlib.h>
#include <stdio.h>

int main() {
	srand(time(NULL)); // initialize random seed
	//printf("%i\n", rand()); // make one draw
	
	for(int i = 0; i < 20; i++) {
		printf("%i\n", rand());
	}
}