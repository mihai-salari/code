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

@end
