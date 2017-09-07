#include <stdio.h>

int main(int argc, const char * argv[]) {
    // null pointer
    int *intPtr = NULL; // does not point to anything yet...
    intPtr = 0;
    
    //intPtr = 100; // error
    
    if (intPtr) {
        printf("I am not NULL\n");
    } else {
        printf("I am NULL\n");
    }
    
    
    return 0;
}
