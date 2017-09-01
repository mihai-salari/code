#import "Hydrogen.h"
#import "Hydrogen+Helper.h"

@implementation Hydrogen {
    // Instance variable
@private Hydrogen_Helper *helper;
}

+ (id)hydrogenWithNeutrons:(NSUInteger)neutrons {
    return [[[self class] alloc] initWithNeutrons:neutrons];
}

- (id)initWithNeutrons:(NSUInteger)neutrons {
    if ((self = [super init])) {
        // We will not able to access superclass instance variable here,
        // because the default ivar is @private with autosynthesis
        _chemicalElement = @"Hydrogen";
        _atomicSymbol = @"H";
        _protons = 1;
        _neutrons = neutrons;
        
        // Create helper for message forwarding
        helper = [[Hydrogen_Helper alloc] init]; // target object used for message forwarding
    }
    
    return self;
}

- (instancetype)init {
    return [self initWithNeutrons:0];
}

// Fast forwarding in use here
- (id)forwardingTargetForSelector:(SEL)aSelector {
    if ([helper respondsToSelector:aSelector]) {
        return helper;
    }
    
    return nil;
}

@end
