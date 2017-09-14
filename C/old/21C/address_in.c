#include <stdlib.h>
#include <stdio.h>

void double_in(int *in) {
	*in *= 2;
}

int main() {
	int x = 88;
		
	double_in(&x);
	
	printf("x now points to %i\n", x);
}