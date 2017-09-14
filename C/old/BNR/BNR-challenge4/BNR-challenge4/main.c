#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr) {
    // This function assume meter is non-negative
    
    double rawFeet = meters * 3.281;
    printf("Debug: rawFeet is %f\n", rawFeet);
    
    double feet;
    
    // Use modf() to get the integer and fractional parts
    double fractionalFoot = modf(rawFeet, &feet);
    
    printf("Debug: feet is %f\n", feet);
    printf("Debug: fractionalFoot is %f\n", fractionalFoot);
    
    // Convert fractional part to inch
    double inches = fractionalFoot * 12.0;
    
    printf("Debug: inches is %f\n", inches);
    
    // Avoid dereferencing NULL
    if (ftPtr) {
        printf("Storing %u to the address %p\n", (unsigned int)feet, ftPtr);
        *ftPtr = (unsigned int)feet;
    }
    
    if (inPtr) {
        printf("Storing %.2f to the address %p\n", inches, inPtr);
        *inPtr = inches;
    }
}

int main(int argc, const char * argv[]) {
    
    double meters = 1.63;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    
    printf("%.1f meters = %d feet and %.1f inches.\n", meters, feet, inches);
    
    return 0;
}
