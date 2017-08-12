#import "Student.h"

@implementation Student

- (id)initWithName:(NSString *)name age:(NSNumber *)age gender:(Gender)gender classes:(NSArray *)classes numberOfCredits:(NSNumber *)numberOfCredits major:(NSString *)major {
    if ((self = [super init])) {
        _fullName = name;
        _age = age;
        _gender = gender;
        _classes = classes;
        _numberOfCredits = numberOfCredits;
        _major = major;
    }
    
    return self;
}

- (NSString *)description {
    return @"I am a student only!";
}

@end
