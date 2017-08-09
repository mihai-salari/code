#import "CTRentalProperty.h"

@implementation CTRentalProperty

- (void)increaseRentalByPercent:(float)percent withMaximum:(float)max {
    NSLog(@"I will increase your rent!");
}

- (void)decreaseRentalByPercent:(float)percent withMinimum:(float)min {
    NSLog(@"I will decrease your rent!");
}

@end
