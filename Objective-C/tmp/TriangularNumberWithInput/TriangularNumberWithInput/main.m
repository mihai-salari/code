#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, input, triangularNumber = 0;
        
        printf("What triangular number do you want? ");
        scanf("%i", &input);
        
        for (n = 1; n <= input; ++n) {
            triangularNumber += n;
        }
        
        NSLog(@"Triangular number %i is %i", input, triangularNumber);
    }
    
    return 0;
}
