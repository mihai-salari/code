#include <stdio.h>

int main(int argc, const char * argv[]) {
    void *genericPointer;
    
    int a = 9;
    
    genericPointer = &a;
    
    printf("genericPointer store memory address %p\n", genericPointer);
    printf("dereferencing genericPointer gives us %d\n", *((int *) genericPointer));
    
    float b = 1.234567;
    
    genericPointer = &b;
    
    printf("genericPointer store memory address %p\n", genericPointer);
    printf("dereferencing genericPointer gives us %g\n", *((float *) genericPointer));
    
    return 0;
}
