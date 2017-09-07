#include <stdio.h>
#include <stdlib.h>

int globalInt = 1234;

int *globalIntPtr = &globalInt;

void funcFoo(void) {
    static int staticInt = 1234;
    static int *staticIntPtr = &staticInt;
    printf("staticIntPtr lives at %d\n", &staticIntPtr);
    printf("staticInt value lives at %d\n", &staticInt);
    
    int normalInt = 1234;
    
    printf("normalInt lives at %d\n", &normalInt);
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
