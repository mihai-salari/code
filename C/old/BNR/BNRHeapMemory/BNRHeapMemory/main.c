#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    
    // Declare a pointer
    float *startOfBuffer;
    
    // Ask to use some bytes from the heap
    startOfBuffer = malloc(1000 * sizeof(float));
    
    // ... use buffer here ...
    
    // Relinquish your claim on the memory so it can be reused
    free(startOfBuffer);
    
    // Forget where that memory is
    startOfBuffer = NULL;
    
    return 0;
}
