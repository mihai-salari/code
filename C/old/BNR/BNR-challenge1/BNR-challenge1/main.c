#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    for (int n = 99; n >= 0; n--) {
        if (n % 3 == 0) {
            printf("%d\n", n);
            
            if (n % 5 == 0) {
                printf("Found one!\n");
            }
        }
    }
    
    return 0;
}
