#import "Person.h"

@implementation Person

- (void)greetWithName {
    NSLog(@"Hi %@, how are you?", self.name);
}

@end
