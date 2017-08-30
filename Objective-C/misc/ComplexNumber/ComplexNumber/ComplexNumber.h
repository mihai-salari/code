#import <Foundation/Foundation.h>

@interface ComplexNumber : NSObject

- (double)real;
- (void)setReal:(double)r;
- (double)imaginary;
- (void)setImaginary:(double)i;

- (void)print; // display as a + bi

@end
