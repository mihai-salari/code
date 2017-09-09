#import "Foo.h"

// Static variable only accessible via this module (a module is a source file in this example)
static int fooCount = 0;

@implementation Foo

+ (instancetype)fooWithName:(NSString *)name {
    Foo *foo = [[Foo alloc] initWithName:name];
    fooCount += 1;
    
    return foo;
}

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
        return self;
    }
    
    return nil;
}

@end
