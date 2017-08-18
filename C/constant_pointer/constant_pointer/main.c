#include <stdio.h>

int main(int argc, const char * argv[]) {
    int num1 = 30;
    int num2 = 40;
    
    const int *numPtr = &num1;
    
    printf("numPtr is %i\n", *numPtr);
    
    // cannot do this
    // *numPtr = num2;
    
    // but we can change what the pointer point to
    numPtr = &num2;
    
    printf("numPtr is %i\n", *numPtr);
    
    return 0;
}
