#import "CTRentalProperty.h"

@implementation CTRentalProperty

+ (id)ctRentalPropertyOfType:(CTPropertyType)newCTPropertyType rentingFor:(float)newRentalPrice atAddress:(NSString *)newAddress {
    id newObject = [[CTRentalProperty alloc] initWithAddress:newAddress rentalPrice:newRentalPrice andType:newCTPropertyType];
    
    return newObject;
}

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

- (void)handleLowMemoryWarning:(NSNotification *)notification {
    NSLog(@"handleLowMemoryWarning was called");
}

@end
