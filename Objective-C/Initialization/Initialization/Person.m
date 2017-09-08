#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
        
        return self;
    }
    
    return nil;
}

- (instancetype)init {
    return [self initWithName:@"unknown"];
}

@end
