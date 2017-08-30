#import <Foundation/Foundation.h>

@interface Complex : NSObject

- (double)real;
- (void)setReal:(double)r;
- (double)imaginary;
- (void)setImaginary:(double)i;

- (void)print; // display as a + bi

- (Complex *)add:(Complex *)complexNumber;

@end
