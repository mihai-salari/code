#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *cal = [[Calculator alloc] init];
        
        [cal setAccumulator:100.0];
        [cal add:200];
        [cal divide:15];
        [cal subtract:10];
        [cal multiply:5];
        
        NSLog(@"The final result is %g", [cal accumulator]);
        
        NSLog(@"The reciprocal is %g", [cal reciprocal]);
        
        NSLog(@"The squared is %g", [cal xSquared]);
        
        [cal clear];
        
        NSLog(@"The final result is %g", [cal accumulator]);
    }
    
    return 0;
}
