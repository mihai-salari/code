// A simple program to work with fractions (class version)

#import <Foundation/Foundation.h>

@interface Fraction: NSObject

- (void)print;
- (int)numerator;
- (void)setNumerator:(int)n;
- (int)denominator;
- (void)setDenominator:(int)d;

@end

@implementation Fraction {
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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *fraction = [Fraction new];
        
        [fraction setNumerator:1];
        [fraction setDenominator:3];
        
        NSLog(@"The value of fraction is:");
        [fraction print];
        
        Fraction *anotherFraction = [Fraction new];
        
        [anotherFraction setNumerator:9];
        [anotherFraction setDenominator:99];
        
        NSLog(@"The value of anotherFraction is:");
        [anotherFraction print];
        
        NSLog(@"The value of fraction is %i/%i", [fraction numerator], [fraction denominator]);
    }
    
    return 0;
}
