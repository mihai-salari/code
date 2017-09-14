#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    
    double pi = 3.142;
    double integerPart;
    double fractionPart;
    
    fractionPart = modf(pi, &integerPart);
    
    printf("integerPart = %.0f, fractionPart = %.3f\n", integerPart, fractionPart);
    
    return 0;
}
