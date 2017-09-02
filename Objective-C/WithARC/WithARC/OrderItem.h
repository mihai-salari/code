#import <Foundation/Foundation.h>

@class OrderEntry; // there's a class called OrderEntry, and you don't fuck to need what is that class now ;)

@interface OrderItem : NSObject

@property NSString *name;
@property (weak) OrderEntry *entry;

- (id)initWithName:(NSString *)itemName;

@end
