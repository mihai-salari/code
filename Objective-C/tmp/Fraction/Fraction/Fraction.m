#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

- (void)print {
    printf("%i/%i\n", numerator, denominator);
}

- (void)setTo:(int)n over:(int)d {
    self.numerator = n;
    self.denominator = d;
}

- (double)convertToNumber {
    if (self.denominator != 0) {
        return (double)numerator/denominator;
    } else {
        return NAN;
    }
}

- (void)reduce {
    int u = self.numerator;
    int v = self.denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    self.numerator /= u;
    self.denominator /= u;
}

- (Fraction *)add:(Fraction *)f {
    Fraction *result = [Fraction new];
    result.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

@end
