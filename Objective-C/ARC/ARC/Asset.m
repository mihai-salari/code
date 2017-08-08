#import "Asset.h"
#import "Employee.h"

@implementation Asset

- (NSString *)description {
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%u, assigned to %@>", self.label, self.resaleValue, self.holder];
    }
    
    return [NSString stringWithFormat:@"<%@: %u>", self.label, self.resaleValue];
}

- (void)dealloc {
    NSLog(@"deallocating %@", self);
}

@end
