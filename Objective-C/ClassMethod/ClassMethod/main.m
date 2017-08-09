#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *a = [[Person alloc] init];
        [a increaseSalaryByPercent:1.0 withMinimum:5000];
     }
    
    return 0;
}
