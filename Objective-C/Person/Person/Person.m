#import "Person.h"

@interface Person()

{
    NSString *_fullName;
    NSNumber *_age;
    Gender gender;
}


@end

@implementation Person

+ (id)person {
    return [[self alloc] init];
}

- (id)initWithName:(NSString *)name {
    _fullName = name;
    _age = 0;
    gender = Male;
    
    return [self initWithName:_fullName age:_age gender:gender];
}

- (id)initWithAge:(NSNumber *)age {
    _age = age;
    _fullName = @"unknown";
    gender = Male;
    
    return [self initWithName:_fullName age:_age gender:gender];
}

- (id)initWithName:(NSString *)name age:(NSNumber *)age gender:(Gender)gender {
    Person *p = nil;
    
    if (nil == self) {
        p = [[Person alloc] init];
    }
    
    return p;
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
