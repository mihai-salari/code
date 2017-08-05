#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // When Objective-C evaluates a Boolean expression, it assumes any nonzero
        // value indicates true and a value of zero indicates false. This choice
        // of storage formats can lead to some interesting quirks.
        
        BOOL result = 45; // can be both true and false at the same time...
        
        if (result) {
            NSLog(@"I am true, because I am not zero!");
        }
        
        if (result != YES) {
            NSLog(@"But I am also false, because I am not YES!");
        }
    }
    
    return 0;
}
