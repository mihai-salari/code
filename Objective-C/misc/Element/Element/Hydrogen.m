#import "Hydrogen.h"

@implementation Hydrogen

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
    }
    
    return self;
}

- (instancetype)init {
    return [self initWithNeutrons:0];
}

@end
