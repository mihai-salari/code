#include <stdio.h>

// Use saturation to reduce the size of an integer value.

int main(int argc, const char * argv[]) {
    long int longInt = 12898934;
    short int shortInt;
    
    if (longInt > 32767) {
        shortInt = 32767;
    } else if (longInt < -32768) {
        shortInt = -32768;
    } else {
        shortInt = longInt;
    }
    
    printf("longInt = %ld, shortInt = %hd\n", longInt, shortInt);
    
    return 0;
}
