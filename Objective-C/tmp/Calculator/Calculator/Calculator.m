#import "Calculator.h"

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
