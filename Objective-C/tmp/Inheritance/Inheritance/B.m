#import "B.h"

@implementation B

- (void)printAge {
    [self setAge];
    
    NSLog(@"%i", [self age]); // subclass can access public instance variable
}

@end
