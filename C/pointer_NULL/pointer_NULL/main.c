#include <stdio.h>

int main(int argc, const char * argv[]) {
    // null pointer
    int *intPtr = NULL; // does not point to anything yet...
    intPtr = 0;
    
    intPtr = 100; // error
    
    
    return 0;
}
