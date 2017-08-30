#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, input, triangularNumber, count;
        
        for (count = 1; count <= 5; ++count) {
            printf("What triangular number do you want? ");
            scanf("%i", &input);
            
            triangularNumber = 0;
            
            for (n = 1; n <= input; ++n) {
                triangularNumber += n;
            }
            
            NSLog(@"Triangular number %i is %i", input, triangularNumber);
        }
    }
    
    return 0;
}
