#import "Asset.h"

@implementation Asset

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %u>", self.label, self.resaleValue];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
