#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    float weight = 14.2;
    
    float doubleWeight = weight * 2;
    
    printf("The value of weight is %.1f.\n", weight);
    printf("The value of doubleWeight is %.1f.\n", doubleWeight);
    printf("The value of tripleWeight is %.1f.\n", weight * 3);
    
    float a = 3.14;
    float b = 42.0;
    double c = a + b;
    
    printf("The value of c is %f.\n", c);
    
    return 0;
}
