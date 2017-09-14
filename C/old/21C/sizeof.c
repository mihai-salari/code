#include <stdio.h>

typedef struct {
	int numerator, denominator;
	double value;
} ratio_s;

int main() {
	printf("size of two ints = %zu bytes\n", sizeof(int) * 2);
	printf("size of two ints = %zu bytes\n", sizeof(int[2]));
	printf("size of a double = %zu bytes\n", sizeof(double));
	printf("size of a ratio_s struct = %zu bytes\n", sizeof(ratio_s));
}