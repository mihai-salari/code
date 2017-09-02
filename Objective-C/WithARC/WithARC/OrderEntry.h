#import <Foundation/Foundation.h>
#import "OrderItem.h"
#import "Address.h"

@interface OrderEntry : NSObject

@property OrderItem *item;
@property NSString *orderID;
@property Address *shippingAddress;

- (id)initWithOrderID:(NSString *)oid;

@end
