#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Employee *foo = [[Employee alloc] init];
            foo.weightInKilos = 90 + i;
            foo.heightInMeters = 1.8 - i/10.0;
            foo.employeeID = i;
            
            [employees addObject:foo];
        }
        
        for (int i = 0; i < 10; i++) {
            Asset *asset = [[Asset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            NSUInteger randomIndex = random() % [employees count];
            
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAsset:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee!");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"Giving up ownership of arrays!!!");
        
        employees = nil;
    }
    
    return 0;
}
