#import "Foo.h"

@implementation Foo

- (void)setGlobalNumber:(int)val {
    extern int gNumber;
    gNumber = val;
}

@end
