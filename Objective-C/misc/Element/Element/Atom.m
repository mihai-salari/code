#import "Atom.h"

@implementation Atom

- (instancetype)init {
    if ((self = [super init])) {
        _chemicalElement = @"None";
    }
    
    return self;
}

- (NSUInteger)massNumber {
    return 0;
}

@end
