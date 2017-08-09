#import "CTRentalProperty.h"

@implementation CTRentalProperty

- (void)increaseRentalByPercent:(float)percent withMaximum:(float)max {
    self.rentalPrice = self.rentalPrice * (100 + percent) / 100;
    self.rentalPrice = fmin(self.rentalPrice, max);
}

- (void)decreaseRentalByPercent:(float)percent withMinimum:(float)min {
    self.rentalPrice = self.rentalPrice * (100 - percent) / 100;
    self.rentalPrice = fmax(self.rentalPrice, min);
}

@end
