#import "Person.h"

@implementation Person

- (void)printName {
    NSLog(@"Name is %@", self.name);
}

- (id)copyWithZone:(NSZone *)zone {
    // Note the use of `self class`, so that it will works with subclass
    id obj = [[[self class] allocWithZone:zone] init];
    
    [obj setName:self.name];
    
    return obj;
}

@end
