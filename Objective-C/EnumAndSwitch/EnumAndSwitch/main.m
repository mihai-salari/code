#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        enum month {
            january = 1,
            february,
            march,
            april,
            may,
            june,
            july,
            august,
            september,
            october,
            november,
            december
        };
        
        enum month mon;
        int days;
        
        printf("Enter month number: ");
        scanf("%i", &mon);
        
        switch (mon) {
            case january:
            case march:
            case may:
            case july:
            case august:
            case october:
            case december:
                days = 31;
                break;
            case april:
            case june:
            case september:
            case november:
                days = 30;
                break;
            case february:
                days = 28;
                break;
            default:
                printf("Error: bad month number\n");
                days = 0;
                break;
        }
        
        if (days != 0) {
            printf("Number of days is %i%s\n", days, mon == february ? ", or 29 if it is a leap year." : ".");
        }
    }
    
    return 0;
}
