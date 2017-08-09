#import "CTRentalProperty.h"

@implementation CTRentalProperty

- (id)initWithAddress:(NSString *)address rentalPrice:(float)price andType:(CTPropertyType)type {
    if ((self = [super init])) {
        self.address = address;
        self.rentalPrice = price;
        self.propertyType = type;
    }
    
    return self;
}

- (void)increaseRentalByPercent:(float)percent withMaximum:(float)max {
    self.rentalPrice = self.rentalPrice * (100 + percent) / 100;
    self.rentalPrice = fmin(self.rentalPrice, max);
}

- (void)decreaseRentalByPercent:(float)percent withMinimum:(float)min {
    self.rentalPrice = self.rentalPrice * (100 - percent) / 100;
    self.rentalPrice = fmax(self.rentalPrice, min);
}

@end
