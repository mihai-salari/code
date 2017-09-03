#import "OrderItem.h"

@implementation OrderItem

- (id)initWithName:(NSString *)itemName {
//    if (self = [super init]) {
//        NSLog(@"Initializing OrderItem object...");
//        self.name = itemName;
//        
//        return self;
//    }
//    
//    return nil;
    
    return [self initWithEntry:nil andName:itemName];
}

- (id)initWithEntry:(OrderEntry *)entry andName:(NSString *)itemName {
    if (self = [super init]) {
        NSLog(@"Initializing OrderItem object %@...", _name);
        self.entry = entry;
        _name = itemName; // We cannot use self.name because the property is read only, direct access to instance variable is needed
        
        return self;
    }
    
    return nil;
}

- (instancetype)init {
    return [self initWithName:@"Unknown"];
}

- (void)dealloc {
    NSLog(@"Deallocating OrderItem object %@...", _name);
}

@end
