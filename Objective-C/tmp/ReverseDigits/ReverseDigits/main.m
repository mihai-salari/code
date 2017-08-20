// Reverse the digits of a number

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit;
        
        printf("Enter a number: ");
        scanf("%i", &number);
        
        while (number != 0) {
            right_digit = number % 10;
            printf("%i", right_digit);
            number = number / 10;
        }
        
        printf("\n");
    }
    
    return 0;
}
