#import <Foundation/Foundation.h>

@interface Accumulator : NSObject

@property int total;

- (void)addToTotalWith:(int)amount;
- (void)zeroTotal;

@end
