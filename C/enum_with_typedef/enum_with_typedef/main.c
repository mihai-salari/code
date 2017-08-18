#include <stdio.h>

int main(int argc, const char * argv[]) {
    typedef enum {
        monday,
        tuesday,
        wednesday,
        thursday,
        friday,
        saturday,
        sunday
    } DayOfWeek;
    
    DayOfWeek day = friday;
    
    printf("Today is %d.\n", day);
    
    switch (day) {
        case 0:
            printf("Today is Monday.\n");
            break;
        case 1:
            printf("Today is Tuesday.\n");
            break;
        case 2:
            printf("Today is Wednesday.\n");
            break;
        case 3:
            printf("Today is Thursday.\n");
            break;
        case 4:
            printf("Today is Friday.\n");
            break;
        default:
            printf("Today is weekend.\n");
            break;
    }
    
    return 0;
}
