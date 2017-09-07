#include <stdio.h>

int main(int argc, const char * argv[]) {
    int num = 9;
    int *numPtr = &num;
    
    printf("Address of num = %d\nValue = %d\n", &num, num);
    printf("Address of num (hex) = %p\n", &num);
    
    printf("Address of numPtr = %d\nValue = %d\n", &numPtr, numPtr);
    printf("Address of numPtr (hex) = %p\nValue (hex) = %p\n", &numPtr, numPtr);
    
    // Dereferencing the pointer variable
    
    printf("Dereferencing numPtr gives us %d\n", *numPtr);
    
    return 0;
}

/*

 Address of num = 1606415884
 Value = 9
 Address of num (hex) = 0x7fff5fbff60c
 Address of numPtr = 1606415872
 Value = 1606415884
 Address of numPtr (hex) = 0x7fff5fbff600
 Value (hex) = 0x7fff5fbff60c
 Program ended with exit code: 0

*/
