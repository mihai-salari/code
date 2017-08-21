#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a, b;
        
        printf("Enter two numbers, separate by space: ");
        scanf("%i%i", &a, &b);
        
        printf("You entered: %i %i\n", a, b);        
        
    }
    
    return 0;
}
