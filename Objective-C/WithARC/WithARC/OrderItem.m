#import "OrderItem.h"

@implementation OrderItem

- (id)initWithName:(NSString *)itemName {
    if (self = [super init]) {
        NSLog(@"Initializing OrderItem object...");
        self.name = itemName;
        
        return self;
    }
    
    return nil;
}

- (instancetype)init {
    return [self initWithName:@"Unknown"];
}

- (void)dealloc {
    NSLog(@"Deallocating OrderItem object...");
}

@end
