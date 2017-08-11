#import "Person.h"

@implementation Person

+ (id)person {
    return [[self alloc] init];
}

- (id)init {
    if ((self = [super init])) {
        _fullName = @"Person";
        _age = [NSNumber numberWithInt:-1];
        _gender = Male;
    }
    
    return self;
}

- (id)initWithName:(NSString *)name {
    if ((self = [super init])) {
        _fullName = name;
        _age = [NSNumber numberWithInt:-1];
        _gender = Male;
    }
    
    return self;
}

- (id)initWithAge:(NSNumber *)age {
    if ((self = [super init])) {
        _fullName = @"Person";
        _age = age;
        _gender = Male;
    }
    
    return self;
}

- (id)initWithGender:(Gender)gender {
    if ((self = [super init])) {
        _fullName = @"Person";
        _age = [NSNumber numberWithInt:-1];
        _gender = gender;
    }
    
    return self;
}

- (id)initWithName:(NSString *)name age:(NSNumber *)age gender:(Gender)gender {
    if ((self = [super init])) {
        _fullName = name;
        _age = age;
        _gender = gender;
    }
    
    return self;
}

- (void)saySomething:(NSString *)message {
    NSLog(@"%@", message);
    
}

- (void)sayHello {
    [self saySomething:@"Hello!"];
}

- (void)sayGoodbye {
    [self saySomething:@"Goodbye!"];
}

@end
