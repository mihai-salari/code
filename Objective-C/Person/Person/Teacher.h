#import "Person.h"

@interface Teacher : Person {
    NSArray *classes;
    NSNumber *salary;
    NSString *areaOfExpertise;
}

- (id)initWithName:(NSString *)name age:(NSNumber *)age gender:(Gender)gender classes:(NSArray *)classes salary:(NSNumber *)salary areaOfExpertise:(NSString *)areaOfExpertise;

@end
