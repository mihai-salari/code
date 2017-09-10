#import "Foo.h"

// Static variable only accessible via this module (a module is a source file in this example)
static int fooCount = 0;

@implementation Foo

+ (instancetype)fooWithName:(NSString *)name {
    Foo *foo = [[Foo alloc] initWithName:name];
    fooCount += 1;
    
    return foo;
}

// It makes more sense to ask the class itself
+ (int)fooCount {
    return fooCount;
}

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
        return self;
    }
    
    return nil;
}

@end
