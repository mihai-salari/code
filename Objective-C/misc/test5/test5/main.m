#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a, b;
        
        printf("Enter two numbers, separate by space: ");
        scanf("%i%i", &a, &b);
        
        //printf("You entered: %i %i\n", a, b);
        
        if (a % b == 0) {
            printf("%i is evenly divisible by %i\n", a, b);
        } else {
            printf("%i is not evenly divisible by %i\n", a, b);
        }
        
    }
    
    return 0;
}
