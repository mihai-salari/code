#import "ComplexNumber.h"

@implementation ComplexNumber {
    double real;
    double imaginary;
}

- (void)setReal:(double)r {
    real = r;
}

- (void)setImaginary:(double)i {
    imaginary = i;
}

- (void)print {
    NSLog(@"%g + %gi", real, imaginary);
}

@end
