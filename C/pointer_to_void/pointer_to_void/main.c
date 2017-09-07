#include <stdio.h>

int main(int argc, const char * argv[]) {
    void *voidPtr; // pointer to void
    
    // Any pointer can be assigned to a pointer to void.
    // It can then be cast back to its original pointer type. When this happens
    // the value will be equal to the original pointer value.
    
    int num = 10;
    int *numPtr = &num;
    
    printf("Value of numPtr = %p\n", numPtr);
    
    voidPtr = numPtr;
    
    numPtr = (int *)voidPtr;
    
    printf("Value of numPtr = %p\n", numPtr);
    
    if (voidPtr == numPtr) {
        printf("Both pointers are equal");
    } else {
        printf("Both pointers are not equal");
    }
    
    printf("\n");
    
    return 0;
}
