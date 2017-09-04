#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *c = [Calculator new];
        SEL sel1 = NSSelectorFromString(@"absoluteValue:");
        
        NSLog(@"Invoking instance method %@ on object of class %@", NSStringFromSelector(sel1), [c className]);
        
        id sum1 = [c performSelector:sel1 withObject:@-123];
        NSLog(@"Absolute value of %@ = %@", @"-123", sum1);
    }
    
    return 0;
}
