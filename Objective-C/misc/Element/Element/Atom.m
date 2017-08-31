#import "Atom.h"

@implementation Atom

- (instancetype)init {
    if ((self = [super init])) {
        _chemicalElement = @"None"; // We access the instance variable here, because 'self' is not with us ;)
    }
    
    return self;
}

- (NSUInteger)massNumber {
    return 0;
}

@end
