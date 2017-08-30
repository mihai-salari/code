// A program that calculates the sum of the digits of an integer.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int digit = 0;
        int remainder = 0;
        int number = 0;
        
        printf("Give me a digit: ");
        scanf("%i", &digit);
        
        // return the number if less than 10
        if (digit < 10) {
            printf("answer = %i\n", digit);
            
            return 0;
        }
        
        // get each digit and add it
        do {
            remainder = digit % 10;
            digit = digit / 10; // move to next digit
            
            number += remainder;
        } while (remainder != 0);
        
        printf("answer = %i\n", number);
        
    }
    
    return 0;
}
