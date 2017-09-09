#import "Foo.h"

@implementation Foo

+ (instancetype)fooWithName:(NSString *)name {
    Foo *foo = [[Foo alloc] initWithName:name];
    
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
