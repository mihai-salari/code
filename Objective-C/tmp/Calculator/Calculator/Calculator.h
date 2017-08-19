#import <Foundation/Foundation.h>

@interface Calculator : NSObject

- (double)accumulator;
- (void)setAccumulator:(double)value;
- (void)clear;

- (double)add:(double)value;
- (double)subtract:(double)value;
- (double)multiply:(double)value;
- (double)divide:(double)value;

- (double)changeSign;
- (double)reciprocal; // 1/accumulator
- (double)xSquared;

@end
