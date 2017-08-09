#import "Person.h"

@implementation Person

- (NSString *)name {
    return _name;
}

- (void)increaseSalaryByPercent:(float)percentage withMinimum:(float)min {
    NSLog(@"I will increase your salary definitely!");
}

@end
