#include "helper.h"

int count;

void callPrintCountAndAge() {
    int number = 99;
    
    printf("number is %d\n", number);
    
    printCountAndAge();
}

void printCountAndAge() {
    count = 1;
    
    int age = 37;
    
    printf("count is %d, age is %d\n", count, age);
}
