#include <stdio.h>

int main(int argc, char *argv[]) {
	int i = 0;
	
	while (i < 10) {
		printf("i is %d\n", i);
		i++;
	}
	
	while (i >= 0) {
		printf("i is %d\n", i);
		i--;
	}
	
	return 0;
}