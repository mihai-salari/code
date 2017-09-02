#import "OrderEntry.h"

@implementation OrderEntry

- (id)initWithOrderID:(NSString *)oid {
    if (self = [super init]) {
        NSLog(@"Initializing OrderEntry object...");
        // Is it a good practice to use 'self' here,
        // or should we just refer to the instance variable directly?
        // e.g. _orderID
        self.orderID = oid;
        self.item = [[OrderItem alloc] initWithName:@"Something"];
        self.shippingAddress = [[Address alloc] init];
        
        return self;
    }
    
    return nil;
}

- (instancetype)init {
    return [self initWithOrderID:@"NaN"];
}

- (void)dealloc {
    NSLog(@"Deallocating OrderEntry object...");
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ %@ %@", self.orderID, self.item.name, self.shippingAddress];
}

@end
