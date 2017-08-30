#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, sign;
        
        printf("Enter a number: ");
        scanf("%i", &number);
        
        if (number < 0) {
            sign = -1;
        } else if (number == 0) {
            sign = 0;
        } else {
            sign = 1;
        }
        
        printf("Sign = %i\n", sign);
    }
    
    return 0;
}
