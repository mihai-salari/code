#include <stdio.h>

void (*foo)();

int main(int argc, const char * argv[]) {
    foo(); // crash
    
    return 0;
}
