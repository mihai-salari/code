#import "Accumulator.h"

@implementation Accumulator

- (void)addToTotalWith:(int)amount {
    self.total = self.total + amount;
}

- (void)zeroTotal {
    self.total = 0;
}

@end
