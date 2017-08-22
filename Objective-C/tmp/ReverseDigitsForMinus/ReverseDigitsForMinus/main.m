// Reverse the digits of a number

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit;
        
        printf("Enter a number: ");
        scanf("%i", &number);
        
        // use a do while loop to get rid of this if statement
        if (number == 0) {
            printf("%i\n", number);
            
            return 0;
        }
        
        while (number != 0 && number > 0) {
            right_digit = number % 10;
            printf("%i", right_digit);
            number = number / 10;
        }
        
        if (number < 0) {
            number = -number;
        }
        
        while (number != 0) {
            right_digit = number % 10;
            printf("%i", right_digit);
            
            if (number / 10 == 0) { // to add the minus sign
                printf("-");
            }
            
            number = number / 10;
        }
        
        printf("\n");
    }
    
    return 0;
}
