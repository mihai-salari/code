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
        int year;
        
        NSLog(@"Enter the year to be tested: ");
        scanf("%i", &year);
        
        if (year % 4 != 0) {
            printf("Log: %i %% 4 != 0\n", year);
            printf("%i is a common year", year);
        } else if (year % 100 != 0) {
            printf("Log: %i %% 100 != 0\n", year);
            printf("%i is a leap year", year);
        } else if (year % 400 != 0) {
            printf("Log: %i %% 400 != 0\n", year);
            printf("%i is a common year", year);
        } else {
            printf("%i is a leap year", year);
        }
        
        printf("\n");
        
    }
    
    return 0;
}
