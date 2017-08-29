#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 0;
    
    while (i < 10) {
        printf("i is %d\n", i);
        
        for (int i = 0; i < 10; i++) {
            if (i % 2 == 0 && i != 0) {
                goto next;
            } else {
                printf("for: i is %d\n", i);
            }
        }
        
    next: i += 1;
    }
    
    return 0;
}
