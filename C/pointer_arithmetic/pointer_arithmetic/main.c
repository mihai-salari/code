#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    int *numbers;
    numbers = malloc(sizeof(int) * 10); // to hold 10 int
    
    int *startOfNumbers;
    startOfNumbers = numbers;
    
    printf("Start memory address of numbers: %p\n", numbers);
    printf("Start memory address of startOfNumbers: %p\n", startOfNumbers);
    
    for (int i = 0; i < 10; i++) {
        *numbers = i;
        numbers++;
    }
    
    // Note that after last iteration number point to the memory address where we
    // didn't assign any value
    
    for (int j = 10; j >= 0; j--) {
        printf("memory address is %p, number is %i\n", numbers, *numbers);
        numbers--;
    }
    
    printf("memory address is %p, number is %i\n", numbers, *numbers);
    
    free(startOfNumbers);
    
    return 0;
}
