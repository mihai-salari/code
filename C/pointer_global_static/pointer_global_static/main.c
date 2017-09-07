#include <stdio.h>

// Global or static pointer is initialized to NULL when the program starts.

int *globalPtr;
static int* staticPtr;

int main(int argc, const char * argv[]) {
    
    if (globalPtr) {
        printf("global pointer is not null\n");
    } else {
        printf("global pointer is null\n");
    }
    
    if (staticPtr) {
        printf("static pointer is not null\n");
    } else {
        printf("static pointer is null\n");
    }
    
    return 0;
}
