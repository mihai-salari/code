#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int digit = 0;
        int remainder = 0;
        int number = 0;
        
        printf("Give me a digit: ");
        scanf("%i", &digit);
        
        if (digit < 10) {
            printf("answer = %i\n", digit);
            
            return 0;
        }
        
        do {
            remainder = digit % 10;
            digit = digit / 10;
            number += remainder;
        } while (remainder != 0);
        
        printf("answer = %i\n", number);
        
    }
    
    return 0;
}
