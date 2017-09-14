#include <stdio.h>
#include <string.h>

int main() {
	char str[] = "Hello";	
	printf("%s\n", str);
	
	str[4] = '\0';
	printf("%s\n", str);
	
	char *str1 = "Hello", str2[100];
	
	printf("%lu\n", strlen(str1)); // get the length up to but excluding '\0'
	strncpy(str2, str1, 100); // copy at most 100 bytes
	
	printf("str1 = %s\n", str1);
	printf("str2 = %s\n", str2);
	
	strncat(str2, str1, 100); // append at most 100 bytes

	printf("str1 = %s\n", str1);
	printf("str2 = %s\n", str2);

	int result = strcmp(str1, str2); // compare strings
	printf("result = %i\n", result);
	
	if (result == 0) {
		printf("str1 and str2 are same\n");
	} else {
		printf("str1 and str2 are different\n");
	}
	
	snprintf(str2, 100, "str1 says: %s", str1); // write to a string
	
	printf("str1 = %s\n", str1);
	printf("str2 = %s\n", str2);	
}