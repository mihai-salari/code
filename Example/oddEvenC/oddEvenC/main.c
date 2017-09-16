#include <stdio.h>

#define kMAX 100

// To tell a number is even or odd

int main(int argc, const char * argv[]) {
    int number;
    
    for (number = 1; number <= kMAX; number++) {
        if (number % 2 == 0) {
            printf("%d is even\n", number);
        } else {
            printf("%d is odd\n", number);
        }
    }
        
    return 0;
}
