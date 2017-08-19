#import <Foundation/Foundation.h>

@interface Calculator: NSObject

- (double)accumulator;
- (void)setAccumulator:(double)value;
- (void)clear;

- (void)add:(double)value;
- (void)subtract:(double)value;
- (void)multiply:(double)value;
- (void)divide:(double)value;

@end

@implementation Calculator {
    double accumulator;
}

- (double)accumulator {
    return accumulator;
}

- (void)setAccumulator:(double)value {
    accumulator = value;
}

- (void)clear {
    accumulator = 0;
}

- (void)add:(double)value {
    accumulator += value;
}

- (void)subtract:(double)value {
    accumulator -= value;
}

- (void)multiply:(double)value {
    accumulator *= value;
}

- (void)divide:(double)value {
    accumulator /= value;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    }
    
    return 0;
}
