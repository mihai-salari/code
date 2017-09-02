#import <Foundation/Foundation.h>

typedef enum CTPropertyType {
    TownHouse,
    Unit,
    Mansion
} CTPropertyType;

@interface CTRentalProperty : NSObject {

}

@property (nonatomic) float rentalPrice;
@property (nonatomic, copy) NSString *address;
@property (nonatomic) CTPropertyType propertyType;

// Class method
+ (id)ctRentalPropertyOfType:(CTPropertyType)newCTPropertyType rentingFor:(float)newRentalPrice atAddress:(NSString *)newAddress;

// Custom initialization
- (id)initWithAddress:(NSString *)address rentalPrice:(float)price andType:(CTPropertyType)type;

- (void)increaseRentalByPercent:(float)percent withMaximum:(float)max;
- (void)decreaseRentalByPercent:(float)percent withMinimum:(float)min;

// Notification
- (void)handleLowMemoryWarning:(NSNotification *)notification;

@end
