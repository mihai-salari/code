#import <Foundation/Foundation.h>

@interface Calculator: NSObject

- (double)accumulator;
- (void)setAccumulator:(double)value;
- (void)clear;

- (double)add:(double)value;
- (double)subtract:(double)value;
- (double)multiply:(double)value;
- (double)divide:(double)value;

- (double)changeSign;
- (double)reciprocal; // 1/accumulator
- (double)xSquared;

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

- (double)add:(double)value {
    accumulator += value;
    
    return accumulator;
}

- (double)subtract:(double)value {
    accumulator -= value;
    
    return accumulator;
}

- (double)multiply:(double)value {
    accumulator *= value;
    
    return accumulator;
}

- (double)divide:(double)value {
    accumulator /= value;
    
    return accumulator;
}

- (double)changeSign {
    return -accumulator;
}

- (double)reciprocal {
    return 1/accumulator;
}

- (double)xSquared {
    return accumulator * accumulator;
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
        
        NSLog(@"The reciprocal is %g", [cal reciprocal]);
        
        NSLog(@"The squared is %g", [cal xSquared]);
        
        [cal clear];
        
        NSLog(@"The final result is %g", [cal accumulator]);
    }
    
    return 0;
}
