#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Employee *foo = [[Employee alloc] init];
        foo.weightInKilos = 96;
        foo.heightInMeters = 1.8;
        foo.employeeID = 12;
        foo.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        
        NSLog(@"Foo (employee id: %u) hired on %@", foo.employeeID, foo.hireDate);
        NSLog(@"Foo has worked with us for %.0f years", [foo yearsOfEmployment]);
        NSLog(@"Foo's bmi is %.2f", [foo bodyMassIndex]);
        
        NSLog(@"%@ hired on %@", foo, foo.hireDate);
        
        [foo alarmCode];
    }
    
    return 0;
}
