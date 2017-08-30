#import <Foundation/Foundation.h>
#import "Accumulator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Accumulator *acm = [[Accumulator alloc] init];
        
        [acm zeroTotal];
        [acm addToTotalWith:1];
        
        NSLog(@"Total = %d\n", [acm total]);
    }
    
    return 0;
}
