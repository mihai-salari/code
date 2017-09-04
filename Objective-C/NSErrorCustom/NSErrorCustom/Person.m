#import "Person.h"

@implementation Person

+ (BOOL)printPersonInfo:(Person *)person error:(NSError *__autoreleasing *)error {
    if (person == nil) {
        @throw [NSException exceptionWithName:@"BadAPICall"
                                       reason:@"person is nil"
                                     userInfo:nil];
    }
    
    return YES;
}

- (id)initWithName:(NSString *)name age:(int)age {
    if (self = [super init]) {
        _name = name;
        _age = age;
        
        return self;
    }
    
    return nil;
}

- (id)init {
    return [self initWithName:nil age:0];
}

@end
