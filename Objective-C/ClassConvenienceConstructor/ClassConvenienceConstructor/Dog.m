#import "Dog.h"

@implementation Dog

+ (id)dog {
    return [self new]; // self refers to the class object that is used as the receiver
}

- (void)dealloc {
    NSLog(@"deallocating some dog...");
}

@end
