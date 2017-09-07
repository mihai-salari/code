#include <stdio.h>
#include <stdlib.h>

int globalInt = 1234;

int *globalIntPtr = &globalInt;

void funcFoo(void) {
    static int staticInt = 1234;
    static int *staticIntPtr = &staticInt;
    printf("staticIntPtr lives at %d\n", &staticIntPtr);
    printf("staticIntPtr lives at %p\n", &staticIntPtr);
    printf("staticInt value lives at %d\n", &staticInt);
    printf("staticInt value lives at %p\n", &staticInt);
    
    int normalInt = 1234;
    
    printf("normalInt lives at %d\n", &normalInt);
    printf("normalInt lives at %p\n", &normalInt);
}

int main(int argc, const char * argv[]) {
    printf("globalIntPtr lives at %d\n", &globalIntPtr);
    
    funcFoo();
    
    printf("main lives at %d\n", &main);
    
    char *c = (char *)malloc(sizeof(char));
    c = 'a';
    
    printf("char c lives at %d\n", &c);
    
    printf("globalInt value lives at %d\n", &globalInt);
    
    return 0;
}

/*

 globalIntPtr lives at 4136
 staticIntPtr lives at 4152
 staticInt value lives at 4144
 normalInt lives at 1606415836
 main lives at 3632
 char c lives at 1606415880
 globalInt value lives at 4128
 Program ended with exit code: 0

*/
