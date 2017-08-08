#import "Klass.h"

@implementation Klass

- (NSArray *)tenNumbers {
    NSMutableArray *numbers = [[NSMutableArray alloc] init];
    int i = 1;
    
    while ([numbers count] < 10) {
        [numbers addObject:[NSNumber numberWithInt:i]];
        i+=1;
    }
    
    return numbers;
}

@end
