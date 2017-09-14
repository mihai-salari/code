#include <stdio.h>

int main(int argc, char *argv[]) {
	int areas[] = { 10, 12, 13, 14, 20 };
	char name[] = "Zed";
	char full_name[] = { 'Z', 'e', 'd', ' ', 'S', '.', 'H' , 'O', 'I' };
	char *names[] = { "Alan", "Frank", "Mary", "John", "Lisa" };
	
	printf("The size of an int: %zu bytes\n", sizeof(int));
	printf("The size of areas: %zu bytes\n", sizeof(areas)); // 5 x 4
	printf("The number of ints in areas: %ld\n", sizeof(areas) / sizeof(int));
	printf("The first area is %d, the 2nd is %d\n", areas[0], areas[1]);
	
	printf("The size of a char: %zu bytes\n", sizeof(char));
	printf("The size of name array: %zu bytes\n", sizeof(name));
	printf("Number of characters in name: %ld\n", sizeof(name) / sizeof(char));
	
	printf("The size of full_name array: %zu bytes\n", sizeof(full_name));
	printf("Number of characters in full_name: %ld\n", sizeof(full_name) / sizeof(char));
	
	full_name[20] = 'F';
	
	printf("Name = %s, Full Name = %s\n", name, full_name);
	
	printf("The size of array to a char *: %zu bytes\n", sizeof(names)); // size of pointers
	
	return 0;
}