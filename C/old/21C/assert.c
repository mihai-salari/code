#include <assert.h>
#include <stdio.h>

int main() {
	int list[100];
	int *list2 = list; // declares list2 as a pointer to int, pointing to the same block of memory list points to
	
	*list2 = 7;
	printf("item 0 of list array is %i\n", list[0]);
	printf("item 0 of list array is %i (with pointer notation)\n", *list);
	
	assert(list[0] == 7);
	assert(*list == 7);
	assert(*list == list[0]);
	assert(*list == list2[0]);
}