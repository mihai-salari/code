#import <Foundation/Foundation.h>
#import "OrderItem.h"
#import "Address.h"

@interface OrderEntry : NSObject

@property (readonly) OrderItem *item;
@property (readonly) NSString *orderID;
@property Address *shippingAddress;

- (id)initWithOrderID:(NSString *)oid;
- (id)initWithOrderID:(NSString *)oid orderItem:(NSString *)item;

@end
