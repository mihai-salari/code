#include <stdio.h>

int main(int argc, const char * argv[]) {
    char name[] = "Foo";
    
    // cannot assign
    //name = "Bar";
    
    printf("Name is %s\n", name);
    
    return 0;
}
