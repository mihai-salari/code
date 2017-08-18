#include <stdio.h>

int gNumber; // global variable - out of any functions

void printNumber();

int main(int argc, const char * argv[]) {
    printNumber();
    
    return 0;
}

void printNumber() {
    int lNumber = 2; // local variable - inside a function
    gNumber = 3;
    
    int number = lNumber + gNumber;
    
    printf("number is %i\n", number);
}
