#import "Human.h"

@implementation Human

- (instancetype)init {
    if (self = [super init]) {
        self.hand = [Hand new];
        self.foot = [Foot new];
    }
    
    return self;
}

- (void)print {
    
}

@end
