#import "Person.h"

@interface Employee : Person

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;

- (double)yearsOfEmployment;

@end
