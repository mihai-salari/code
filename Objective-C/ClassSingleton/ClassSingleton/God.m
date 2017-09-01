#import "God.h"

@implementation God

- (id)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
        
        return self;
    }
    
    return nil;
}

@end
