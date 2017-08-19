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
    numerator = n;
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
    }
    
    return 0;
}
