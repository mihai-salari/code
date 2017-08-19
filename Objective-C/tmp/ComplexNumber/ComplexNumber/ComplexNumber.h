#import <Foundation/Foundation.h>

@interface ComplexNumber : NSObject

- (void)setReal:(double)r;
- (void)setImaginary:(double)i;
- (void)print; // display as a + bi
- (double)real;
- (double)imaginary;

@end
