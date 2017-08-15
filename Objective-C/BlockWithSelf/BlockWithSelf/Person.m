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

- (void)testSelfBlockWithoutStrong {
    __weak Person *weakSelf = self; // weak reference
    
    void (^myBlock2)(void) = ^{
        Person *innerself = weakSelf; // block local strong reference, so that the object that 'weakSelf' points to will not deallocated while the block is executing
        NSLog(@"My name is %@", innerself.name);
    };
    
    myBlock2();
}

- (void)dealloc {
    NSLog(@"%@ is deallocated", self);
}

@end
