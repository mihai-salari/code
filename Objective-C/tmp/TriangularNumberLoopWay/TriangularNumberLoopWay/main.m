#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        
        triangularNumber = 0;
        
        for (n = 1; n <= 200; n++) {
            triangularNumber += n;
        }
        
        NSLog(@"The 200th triangular number is %i", triangularNumber);
    }
    
    return 0;
}
