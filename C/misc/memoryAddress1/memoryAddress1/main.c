#include <stdio.h>
#include "helper.h"

// To check that latest called function has lower memory address than previous

int main(int argc, const char * argv[]) {
    extern int count;
    
    count = 90;
    
    printf("In main, count is %d\n", count);
    
    callPrintCountAndAge();
    
    return 0;
}
