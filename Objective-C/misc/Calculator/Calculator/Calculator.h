#import <Foundation/Foundation.h>

@interface Calculator : NSObject

- (double)accumulator;
- (void)setAccumulator:(double)value;
- (void)clear;

- (double)add:(double)value;
- (double)subtract:(double)value;
- (double)multiply:(double)value;
- (double)divide:(double)value;

- (double)memClear; // clear memory
- (double)memStore; // set memory to accumulator
- (double)memRecall; // set accumulator to memory
- (double)memAdd:(double)value; // add value into memory
- (double)memSubtract:(double)value; // subtract value from memory

- (double)changeSign;
- (double)reciprocal; // 1/accumulator
- (double)xSquared;

@end
