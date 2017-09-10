#import "Foo.h"

// Static variable only accessible via this module (a module is a source file in this example)
static int fooCount = 0;

@implementation Foo

+ (Foo *)allocFoo {
    extern int fooCount; // extern is not needed, but for clarification purpose
    
    fooCount += 1;
    
    return [Foo alloc];
}

+ (instancetype)fooWithName:(NSString *)name {
    //extern int fooCount;
    
    //Foo *foo = [[Foo alloc] initWithName:name];
    
    //fooCount += 1;
    
    Foo *foo = [[Foo allocFoo] initWithName:name];
    
    return foo;
}

// It makes more sense to ask the class itself
+ (int)fooCount {
    extern int fooCount;
    
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
