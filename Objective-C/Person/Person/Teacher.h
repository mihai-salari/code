#import "Person.h"

@interface Teacher : Person {
    NSArray *_classes;
    NSNumber *_salary;
    NSString *_areaOfExpertise;
}

- (id)initWithName:(NSString *)name age:(NSNumber *)age gender:(Gender)gender classes:(NSArray *)classes salary:(NSNumber *)salary areaOfExpertise:(NSString *)areaOfExpertise;

@end
