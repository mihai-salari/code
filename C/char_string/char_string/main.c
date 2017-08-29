#include <stdio.h>

int main(int argc, const char * argv[]) {
    char *hello = "Hello";
    
    printf("%s\n", hello);
    
    hello = "World";
    
    printf("%s\n", hello);
    
    // Error - constant strings are stored in a region of protected
    // read-only memory.
    // hello[2] = 'q';
    //*(hello + 0) = 'q';
    
    return 0;
}
