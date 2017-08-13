#import "Person.h"

@implementation Person

- (void)printName {
    NSLog(@"My name is %@", self.name);
    NSLog(@"Original message: %@", NSStringFromSelector(_cmd));
}

@end
