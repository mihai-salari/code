#import "Employee.h"

// Class extension
@interface Employee()

@property (nonatomic) unsigned int officeAlarmCode;

@end

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

- (void)alarmCode {
    if (self.officeAlarmCode){
        NSLog(@"Alarm Code is: %u", self.officeAlarmCode);
    } else {
        NSLog(@"Alarm Code is not set");
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
