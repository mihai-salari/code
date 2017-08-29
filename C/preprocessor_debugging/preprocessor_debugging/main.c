#include <stdio.h>

// Using conditional to turn on and off debug message
// First with #define
// Second with the use of different values for debugging level, and hence
// display different level of debugging message

//#define kDebug
#define kDebugLevel 0

int main(int argc, const char * argv[]) {
#ifdef kDebug
    printf("Debug: something to debug...\n");
#endif
    
#if kDebugLevel == 10
    printf("Debug: level 10...\n");
#endif
    
#if kDebugLevel == 20
    printf("Debug: level 20...\n");
#endif
    
    printf("Normal output...\n");
    
    return 0;
}
