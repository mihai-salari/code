#include <stdlib.h>
#include <stdio.h>

void double_in(int *in) {
	*in *= 2;
}

int main() {
	int x[1]; // declare a one-item array
	*x = 1888;
	
	double_in(x);
	
	printf("x now points to %i\n", *x);
}