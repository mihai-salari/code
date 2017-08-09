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

// Custom initialization
- (id)initWithAddress:(NSString *)address rentalPrice:(float)price andType:(CTPropertyType)type;

- (void)increaseRentalByPercent:(float)percent withMaximum:(float)max;
- (void)decreaseRentalByPercent:(float)percent withMinimum:(float)min;

@end
