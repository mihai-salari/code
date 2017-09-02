#import <Foundation/Foundation.h>

@interface OrderItem : NSObject

@property NSString *name;
@property (weak) OrderEntry *entry;

- (id)initWithName:(NSString *)itemName;

@end
