#import "Calculator.h"
#import <objc/runtime.h>

@implementation Calculator

- (NSNumber *)sumAdd:(NSNumber *)a and:(NSNumber *)b {
    NSLog(@"Invoking method on %@ object with selector %@", [self className], NSStringFromSelector(_cmd));
    
    return [NSNumber numberWithInteger:([a integerValue] + [b integerValue])];
}

- (NSNumber *)sumAdd:(NSNumber *)a :(NSNumber *)b {
    NSLog(@"Invoking method on %@ object with selector %@", [self className], NSStringFromSelector(_cmd));
    
    return [NSNumber numberWithInteger:([a integerValue] + [b integerValue])];
}

@end
