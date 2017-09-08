#import "Person.h"

@implementation Person {
    int _age;
}

- (instancetype)initWithName:(NSString *)name andAge:(int)age {
    if (self = [super init]) {
        self.name = name;
        self.age = age;
        
        return self;
    }
    
    return nil;
}

- (instancetype)init {
    return [self initWithName:@"unknown" andAge:0];
}

// setter and getter for age
// note that we are not accessing the instance variable directly,
// we set or get via accessors
- (void)setAge:(int)age {
    self.age = age;
}

- (int)age {
    return self.age;
}

@end
