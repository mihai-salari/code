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
        Calculator *cal = [[Calculator alloc] init];
        
        [cal setAccumulator:100.0];
        [cal add:200];
        [cal divide:15];
        [cal subtract:10];
        [cal multiply:5];
        
        NSLog(@"The final result is %g", [cal accumulator]);
    }
    
    return 0;
}
