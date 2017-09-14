#include <stdio.h>

int main() {
	int x = 0;
	
	printf("x is %d\n", x++); // assign then evaluate
	printf("x is %d\n", x);
	
	printf("x is %d\n", --x); // evaluate and assign
	printf("x is %d\n", x);
}