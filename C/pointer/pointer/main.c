#include <stdio.h>

int main(int argc, const char * argv[]) {
    int number = 4;
    int *numberPtr = &number;
    
    printf("number = %i\n", number);
    printf("numberPtr = %i\n", *numberPtr);
    
    printf("memory address stored in numberPtr (hex format) = %x\n", numberPtr);
    printf("memory address stored in numberPtr (with %%p) = %p\n", numberPtr);
    
    return 0;
}
