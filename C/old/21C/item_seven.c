#include <stdio.h>

int intlist[10];

int main() {
	int len = 20;
	char string[len];
	
	intlist[7] = 7;
	
	snprintf(string, len, "Item seven is %i", intlist[7]);
	printf("string says: <<%s>>\n", string);
	
	// Below is error, we cannot assign literal string to array of chars directly
	// and note the use of snprintf above for this
	/*
	char name[10];
	name = "Foo Bar";
	*/
	
	char name[10];
	name[0] = 'F';
	name[1] = 'o';
	name[2] = 'o';
	
	printf("name is %s\n", name); // note without NUL character, we got some garbage!
	
	name[3] = '\0';
	
	printf("name is %s\n", name);
	
	// But we can assign a string literal while we are declaring the array
	char color[1000] = "White";
	
	printf("color is %s\n", color);
	printf("size of color is %zu bytes\n", sizeof(color));	
	
	// 'test' is a pointer to the first element of array test, 'test' stores a memory address
	// to assign a value, we have to use '*test'
	// and don't forget that this is an array of char, so we can only assign a char to it (which is the first element of the array)
	char test[100];
	*test = 't';
	*(test + 1) = 'e'; // pointer arithmetic
	*(test + 2) = 's';
	*(test + 3) = 't';
	*(test + 4) = '\0';
	
	printf("test is %s\n", test);
}