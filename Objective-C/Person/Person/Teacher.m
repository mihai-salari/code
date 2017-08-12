#import "Teacher.h"

@implementation Teacher

- (id)initWithName:(NSString *)name age:(NSNumber *)age gender:(Gender)gender classes:(NSArray *)classes salary:(NSNumber *)salary areaOfExpertise:(NSString *)areaOfExpertise {
    if ((self = [super init])) {
        _fullName = name;
        _age = age;
        _gender = gender;
        _classes = classes;
        _salary = salary;
        _areaOfExpertise = areaOfExpertise;
    }
    
    return self;
}

- (NSString *)description {
    if (self.gender == Male) {
        return [NSString stringWithFormat:@"%@. I am teaching %@, and my salary is $%@ with expertise in %@", [super description], _classes, _salary, _areaOfExpertise]; // should implement setter and getter, not using instance variable directly
    } else {
        return @"Don't bother about me!";
    }
}

@end
