#include <stdio.h>

int main() {
	double pi = 3.14159265;
	int count = 10;

	printf("%f times %i = %f (with %%f)\n", pi, count, pi*count);	
	printf("%g times %i = %g (with %%g)\n", pi, count, pi*count); // %g = real number in general format
}