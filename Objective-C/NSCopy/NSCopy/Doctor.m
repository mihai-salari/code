#import "Doctor.h"

@implementation Doctor

- initWithGender:(NSString *)gender {
    if (self = [super init]) {
        self.gender = gender;
        
        return self;
    }
    
    return nil;
}

- (id)copyWithZone:(NSZone *)zone {
    id obj = [super copyWithZone:zone];
    
    if (obj != nil && self.gender != nil) {
        [obj setGender:self.gender];
        
        return obj;
    }
    
    return nil;
}

@end
