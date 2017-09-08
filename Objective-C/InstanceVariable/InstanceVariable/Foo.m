#import "Foo.h"

@implementation Foo

- (void)printName {
    NSLog(@"My name is %@", self.name); // subclass cannot access ivar directly, can only access via accessor methods
}

@end
