#import "Employee.h"

@implementation Employee

- (double)yearsOfEmployment {
    if (self.hireDate) { // make sure not nil
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        
        return secs / (365.0 * 24.0 * 60.0 * 60.0); // seconds per year
    } else {
        return 0;
    }
}

// Override inherited method
- (float)bodyMassIndex {
    return [super bodyMassIndex] * 0.9;
}

// Override description from NSObject
- (NSString *)description {
    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}

@end
