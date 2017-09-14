#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    
    int x = 255;
    
    printf("In decimal, x is %d\n", x);
    printf("In octal, x is %o\n", x);
    printf("In hexadecimal, x is %x\n", x);
    
    long y = 1024;
    
    printf("y is %ld\n", y);
    printf("In octal, y is %lo\n", y);
    printf("In hexadecimal, y is %lx\n", y);
    
    unsigned int z = 99;
    
    printf("z is %u\n", z);
    
    unsigned long zz = 9999;
    
    printf("zz is %lu\n", zz);
    
    double a = 12345.6789;
    
    printf("a is %.2f\n", a);
    printf("a is %.2e\n", a);
    
    printf("The sine of 1 radian is %.3f\n", sin(1.0));
    
    return 0;
}
