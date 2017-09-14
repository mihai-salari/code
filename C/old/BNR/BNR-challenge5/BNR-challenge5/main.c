#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d now\n", now.tm_hour, now.tm_min, now.tm_sec);
    
    long fourMillionSecondsAfterNow = secondsSince1970 + 4000000;
    
    struct tm future;
    localtime_r(&fourMillionSecondsAfterNow, &future);
    printf("After 4 million seconds, the date will be %d-%d-%d\n", (future.tm_mon + 1), future.tm_mday, (future.tm_year + 1900));
    
    return 0;
}
