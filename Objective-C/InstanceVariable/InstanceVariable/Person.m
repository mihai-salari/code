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

// note that we are accessing the instance variable directly here, because
// age is not created via property
- (void)setAge:(int)age {
    _age = age;
}

- (int)age {
    return _age;
}

- (void)printPersonName {
    NSLog(@"My name is %@", self->_name); // we can access ivar directly here, but subclass cannot
}

@end
