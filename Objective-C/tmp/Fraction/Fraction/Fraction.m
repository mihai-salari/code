#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

- (void)print {
    printf("%i/%i\n", numerator, denominator);
}

@end
