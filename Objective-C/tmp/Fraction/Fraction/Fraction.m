#import "Fraction.h"

@implementation Fraction  {
    // Instance variables
    int numerator;
    int denominator;
}

- (void)print {
    printf("%i/%i\n", numerator, denominator);
}

// accessor methods = setter & getter

// getter
- (int)numerator {
    return numerator;
}

// setter
- (void)setNumerator:(int)n {
    numerator = n;
}

- (int)denominator {
    return denominator;
}

- (void)setDenominator:(int)d {
    denominator = d;
}

@end
