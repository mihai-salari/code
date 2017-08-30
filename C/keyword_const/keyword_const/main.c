#include <stdio.h>

int main(int argc, const char * argv[]) {
    const int age = 37; // we cannot reassign a new value to age
    
    int a = 10;
    int b = 20;
    
    // aPtr is a contant pointer to an int
    int * const aPtr = &a;
    a = 18;
    
    // Cannot point to different variable
    //aPtr = &b; // error
    
    // bPtr is a pointer to a constant int
    const int *bPtr = &a;
    
    // Cannot reassign a new value,
    //*bPtr = 20; // error
    
    a = 20; // OK because a is not a constant, but just we cannot change its value with bPtr
    
    bPtr = &b; // Now bPtr point to different int
    
    return 0;
}
