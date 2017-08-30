#include <stdio.h>
#include "helper.h"

int main(int argc, const char * argv[]) {
    extern int count;
    
    count = 90;
    
    printf("In main, count is %d\n", count);
    
    //printCountAndAge();
    callPrintCountAndAge();
    
    return 0;
}
