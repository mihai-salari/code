#include <stdio.h>

int main(int argc, const char * argv[]) {
    int number = 4;
    int *numberPtr = &number;
    
    printf("number = %i\n", number);
    printf("numberPtr = %i\n", *numberPtr);
    
    return 0;
}
