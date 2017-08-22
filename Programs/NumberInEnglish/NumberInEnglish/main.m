#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number = 0;
        int digit;
        int reversedNumber = 0;
        
        printf("Enter a positive number: ");
        scanf("%i", &number);
        
        // We create a reversed version of the number
        while (number != 0) {
            digit = number % 10;
            //printf("Debug: digit = %i\n", digit);
            
            reversedNumber = (10 * reversedNumber) + digit;
            //printf("Debug: reversedNumber = %i\n", reversedNumber);
            
            number = number / 10;
        }
        
        // Then from the reversed version we can announce the english
        // name in the original order
        while (reversedNumber != 0) {
            digit = reversedNumber % 10;
            
            switch (digit) {
                case 0:
                    printf("Zero\n");
                    break;
                case 1:
                    printf("One\n");
                    break;
                case 2:
                    printf("Two\n");
                    break;
                case 3:
                    printf("Three\n");
                    break;
                case 4:
                    printf("Four\n");
                    break;
                case 5:
                    printf("Five\n");
                    break;
                case 6:
                    printf("Six\n");
                    break;
                case 7:
                    printf("Seven\n");
                    break;
                case 8:
                    printf("Eight\n");
                    break;
                case 9:
                    printf("Nine\n");
                    break;
                default:
                    break;
            }
            
            reversedNumber /= 10;
        }
    }
    
    return 0;
}

/*

 Enter a positive number: 1001
 One
 Zero
 Zero
 One
 Program ended with exit code: 0

*/
