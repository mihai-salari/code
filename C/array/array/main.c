#include <stdio.h>

int main(int argc, const char * argv[]) {
    int number1[3] = {1, 2, 3};
    int number2[3];
    
    // Error
    //number2 = number1;
    
    number2[0] = number1[0];
    number2[1] = number1[1];
    number2[2] = number1[2];
    
    return 0;
}
