// A simple program to work with fractions (class version)

#import <Foundation/Foundation.h>

@interface Fraction: NSObject

- (void)print;
- (void)setNumerator:(int)n;
- (void)setDenominator:(int)d;

@end

@implementation Fraction {
    int numerator;
    int denominator;
}

- (void)print {
    printf("%i/%i\n", numerator, denominator);
}

- (void)setNumerator:(int)n {
    
}

- (void)setDenominator:(int)d {
    
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    }
    
    return 0;
}
