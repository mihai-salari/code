#import "God.h"

@implementation God

+ (id)sharedGod {
    static God *sharedGod = nil;
    
    if (!sharedGod) {
        sharedGod = [[God alloc] init];
    }
    
    return sharedGod;
}

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
    return [NSString stringWithFormat:@"I am %@ from planet %p.", self.name, self];
}

@end
