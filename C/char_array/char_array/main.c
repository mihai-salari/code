#include <stdio.h>

int main(int argc, const char * argv[]) {
    char name[] = "Foo";
    char cocoa[] = { 'C', 'o', 'c', 'o', 'a', '\0' };
    
    // cannot assign
    //name = "Bar";
    
    printf("Name is %s\n", name);
    printf("Cocoa is %s\n", cocoa);
    
    return 0;
}
