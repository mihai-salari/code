#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    float *floatPtr = NULL;
    
    if (floatPtr) {
        printf("floatPtr has %f\n", *floatPtr);
    } else {
        printf("floatPtr is NULL\n");
    }
    
    float foo = 1.234;
    floatPtr = &foo;
    
    if (floatPtr) {
        printf("floatPtr has %f\n", *floatPtr);
    } else {
        printf("floatPtr is NULL\n");
    }
    
    return 0;
}
