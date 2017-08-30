// A year is a leap year if it is evenly divisible by 4.
// A year that is divisible by 100 is not a leap year unless it is also
// divisible by 400.

/* Algorithm:
 
 if (year is not divisible by 4) then (it is a common year)
 else if (year is not divisible by 100) then (it is a leap year)
 else if (year is not divisible by 400) then (it is a common year)
 else (it is a leap year)
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int year, rem4, rem100, rem400;
        
        NSLog(@"Enter the year to be tested: ");
        scanf("%i", &year);
        
        rem4 = year % 4;
        rem100 = year % 100;
        rem400 = year % 400;
        
        if ((rem4 == 0 && rem100 != 0) || rem400 == 0) {
            NSLog(@"Year %i is a leap year!", year);
        } else {
            NSLog(@"Year %i is not a leap year!", year);
        }
    }
    
    return 0;
}
