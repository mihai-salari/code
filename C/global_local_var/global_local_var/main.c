#include <stdio.h>

int gNumber;

void printNumber();

int main(int argc, const char * argv[]) {
    printNumber();
    
    return 0;
}

void printNumber() {
    int lNumber = 2;
    gNumber = 3;
    
    int number = lNumber + gNumber;
    
    printf("number is %i\n", number);
}
