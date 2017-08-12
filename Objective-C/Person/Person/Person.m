#import "Person.h"

@implementation Person

+ (id)person {
    return [[self alloc] init];
}

// MARK: - initializers

// Override init to call Person's designated initializer
- (id)init {
    return [self initWithName:@"" age:[NSNumber numberWithInt:-1] gender:Male];
}

- (id)initWithName:(NSString *)name {
    return [self initWithName:name age:[NSNumber numberWithInt:-1] gender:Male];
}

- (id)initWithAge:(NSNumber *)age {
    return [self initWithName:@"" age:age gender:Male];
}

- (id)initWithGender:(Gender)gender {
    return [self initWithName:@"" age:[NSNumber numberWithInt:-1] gender:gender];
}

// Designated initializer
- (id)initWithName:(NSString *)name age:(NSNumber *)age gender:(Gender)gender {
    if ((self = [super init])) {
        _fullName = name;
        _age = age;
        _gender = gender;
    }
    
    return self;
}

// MARK: - methods

- (void)saySomething:(NSString *)message {
    NSLog(@"%@", message);
    
}

- (void)sayHello {
    if (self.firstName && self.lastName) {
        [self saySomething:[NSString stringWithFormat:@"Hello, %@ %@", self.firstName, self.lastName]];
    } else {
        [self saySomething:@"Hello!"];
    }    
}

- (void)sayGoodbye {
    [self saySomething:@"Goodbye!"];
}

// MARK: - setter and getter

- (NSString *)name {
    if (_fullName) {
        return _fullName;
    }
    
    return @"unknown";
}

- (NSNumber *)age {
    if (_age) {
        return _age;
    }
    
    return [NSNumber numberWithInt:-1];
}

- (Gender)gender {
    if (_gender) {
        return _gender;
    }
    
    return -1;
}

- (void)setName:(NSString *)name {
    _fullName = name;
}

- (void)setAge:(NSNumber *)age {
    _age = age;
}

- (void)setGender:(Gender)gender {
    _gender = gender;
}

// MARK: - overrides

- (NSString *)description {
    if (self.gender == Male) {
        return [NSString stringWithFormat:@"Hi! I am a man, named %@, %@ years old", self.name, self.age];
    } else {
        return [NSString stringWithFormat:@"Hi! I am a woman, named %@, and %@ years old", self.name, self.age];
    }
}

@end
