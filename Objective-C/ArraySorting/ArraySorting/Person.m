#import "Person.h"

@implementation Person

- (NSString *)description {
    NSString *message = [NSString stringWithFormat:@"<Name: %@ %@, Salary: %.2f>", self.firstName, self.lastName, self.basicSalary];
    
    return message;
}

@end
