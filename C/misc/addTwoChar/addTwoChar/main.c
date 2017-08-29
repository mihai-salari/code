#include <stdio.h>

// Use char like normal integers, but beware of the size of char

int main(int argc, const char * argv[]) {
    char a = 'a';
    char b = 'b';
    
    printf("a is %d\n", a);
    printf("b is %d\n", b);
    printf("a + b is %d\n", a + b);
    printf("a + b is %c\n", a + b);
    
    return 0;
}
