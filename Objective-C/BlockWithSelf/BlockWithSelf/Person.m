#import "Person.h"

@implementation Person

- (void)printNameWithBlock:(void (^)(id))aBlock {
    aBlock(self);
}

@end
