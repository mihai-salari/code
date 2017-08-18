#include <stdio.h>

int sum(int x, int y);

int main(int argc, const char * argv[]) {
    int total = sum(9, 9);
    
    printf("Total is %i.\n", total);
    
    return 0;
}

int sum(int x, int y) {
    return x + y;
}
