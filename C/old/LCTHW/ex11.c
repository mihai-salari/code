#include <stdio.h>

int main(int argc, char *argv[]) {
	int numbers[4] = { 0 };
	char name[4] = { 'a' };
	
	printf("numbers: %d %d %d %d\n", numbers[0], numbers[1], numbers[2], numbers[3]);
	printf("name each: %c(%d) %c(%d) %c(%d) %c(%d)\n", name[0], name[0], name[1], name[1], name[2], name[2], name[3], name[3]);
	printf("name is %s\n", name);
	
	numbers[0] = 1;
	numbers[1] = 2;
	numbers[2] = 3;
	numbers[3] = 4;
	
	name[0] = 'F';
	name[1] = 'o';
	name[2] = 'o';
	name[3] = '\0';
	
	printf("numbers: %d %d %d %d\n", numbers[0], numbers[1], numbers[2], numbers[3]);
	printf("name each: %c(%d) %c(%d) %c(%d) %c(%d)\n", name[0], name[0], name[1], name[1], name[2], name[2], name[3], name[3]);
	printf("name is %s\n", name);
	
	char *anotherName = "Bar";
	
	printf("another name each: %c(%d) %c(%d) %c(%d) %c(%d)\n", anotherName[0], anotherName[0], anotherName[1], anotherName[1], anotherName[2], anotherName[2], anotherName[3], anotherName[3]);
	printf("another name is %s\n", anotherName);
	
	return 0;
}