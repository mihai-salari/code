#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    int i = 8;
    
    printf("i stores its value at %p\n", &i);
    
    printf("The main() starts at %p\n", main);
    
    return 0;
}
