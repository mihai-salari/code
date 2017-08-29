#include <stdio.h>

int main(int argc, const char * argv[]) {
    int numbers[10];
    
    // Without brackers, numbers point to the beginning of the array
    // and we use the * notation to assign a value to the memory address pointed
    *numbers = 1;
    *(numbers + 1) = 2;
    
    printf("first number is %d\n", numbers[0]);
    printf("second number is %d\n", numbers[1]);
    
    return 0;
}
