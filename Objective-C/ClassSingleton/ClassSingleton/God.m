#import "God.h"

@implementation God

- (id)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
        
        return self;
    }
    
    return nil;
}

- (instancetype)init {
    return [self initWithName:@"The God"];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"I am %@", self.name];
}

@end
