#include <stdio.h>

int main(int argc, const char * argv[]) {
    void *voidPtr; // pointer to void
    
    int num = 10;
    int *numPtr = &num;
    
    printf("Value of numPtr = %p\n", numPtr);
    
    voidPtr = numPtr;
    
    return 0;
}
