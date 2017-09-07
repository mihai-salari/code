#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    size_t size = sizeof(void*);
    
    printf("size is %zu bytes\n", size);
    
    float d = M_PI;
    
    printf("size of d is %zu bytes\n", sizeof(d));
    
    float *dPtr = &d;
    
    printf("size of dPtr is %zu bytes\n", sizeof(dPtr));
    printf("size of value at dPtr is %zu bytes\n", sizeof(*dPtr));
    
    return 0;
}
