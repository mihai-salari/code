#import "Person.h"

@implementation Person

- (void)printNameWithBlock:(void (^)(id))aBlock {
    aBlock(self);
}

- (void)testSelfBlock {
    void (^myBlock2)(void) = ^{
        NSLog(@"My name is %@", self.name);
    };
    
    myBlock2();
}

- (void)dealloc {
    NSLog(@"%@ is deallocated", self);
}

@end
