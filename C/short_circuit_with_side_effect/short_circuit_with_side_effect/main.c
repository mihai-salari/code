#include <stdio.h>

int printAge() {
    printf("I am 37 years old.\n");
    
    return 1; // we need the 1 for TRUE below
}

int main(int argc, const char * argv[]) {
    int age = 37;
    
    if (age >= 30 && printAge()) {
        printf("Done!\n");
    } else {
        printf("Failed!\n");
    }
    
    return 0;
}
