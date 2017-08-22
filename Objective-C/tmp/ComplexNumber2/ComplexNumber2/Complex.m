#import "Complex.h"

@implementation Complex {
    double real;
    double imaginary;
}

- (double)real {
    return real;
}

- (double)imaginary {
    return imaginary;
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
