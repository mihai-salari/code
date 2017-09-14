#include <stdio.h>

int main() {
	for(int i = 0; i < 10; i++) {
		printf("Hello %i\n", i);
	}
	
	for(int i = 0; i < 10; i++) printf("World %i\n", i);
	
	int len = 10;
	double array[len];
	
	for(int i = 0; i < len; i++) array[i] = 1./(i+1);
	for(int i = 0; i < len; i++) printf("array[%i] is %g\n", i, array[i]);
}