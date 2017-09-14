#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    int i = 18;
    int *addressOfI = &i;
    
    printf("i stores its value at %p\n", &i);
    printf("i stores its value at %p\n", addressOfI);
    
    printf("the int stored at addressOfI is %d (decimal)\n", *addressOfI);
    printf("the int stored at addressOfI is %x (hexadecimal)\n", *addressOfI);
    printf("the int stored at addressOfI is %o (octal)\n", *addressOfI);
    
    *addressOfI = 89;
    
    printf("the int stored at addressOfI is %d (decimal)\n", *addressOfI);
    printf("the int stored at addressOfI is %x (hexadecimal)\n", *addressOfI);
    printf("the int stored at addressOfI is %o (octal)\n", *addressOfI);
    
    return 0;
}
