#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a, b;
        char c = 'y';
        
        while (c == 'y' || c == 'Y') {
            printf("Enter two numbers, separate by space: ");
            scanf("%i%i", &a, &b);
            
            if (a % b == 0) {
                printf("%i is evenly divisible by %i\n", a, b);
            } else {
                printf("%i is not evenly divisible by %i\n", a, b);
            }
            
            printf("Continue (y/n)? ");
            scanf(" %c", &c);
        }
        
        printf("Bye!\n");
    }
    
    return 0;
}
