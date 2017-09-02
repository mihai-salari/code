#import <UIKit/UIKit.h>
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
        
        // Register self with notification center that we are interested with
        // low memory warning notification.
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(handleLowMemoryWarning:)
                                                     name:UIApplicationDidReceiveMemoryWarningNotification
                                                   object:nil];
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

- (void)dealloc {
    // Clean up
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIApplicationDidReceiveMemoryWarningNotification
                                                  object:nil];
}

@end
