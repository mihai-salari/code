#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator;
@property int denominator;

- (void)print;
- (void)setTo:(int)n over:(int)d;
- (double)convertToNumber;
- (void)reduce;
- (Fraction *)add:(Fraction *)f;
- (Fraction *)subtract:(Fraction *)f;
- (Fraction *)multiply:(Fraction *)f;
- (Fraction *)divide:(Fraction *)f;

@end
