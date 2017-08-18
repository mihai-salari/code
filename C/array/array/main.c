#include <stdio.h>

int main(int argc, const char * argv[]) {
    int number1[3] = {1, 2, 3};
    int number2[3];
    int number3[3] = {4, 5, 6};
    
    // Error
    //number2 = number1;
    
    number2[0] = number1[0];
    number2[1] = number1[1];
    
    for (int i = 0; i < 3; i++) {
        printf("%i ", number1[i]);
    }
    
    printf("\n");

    for (int i = 0; i < 3; i++) {
        printf("%i ", number2[i]);
    }
    
    printf("\n");

    for (int i = 0; i < 3; i++) {
        printf("%i ", number3[i]);
    }
    
    printf("\n");
    
    return 0;
}
