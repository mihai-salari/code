#include <stdio.h>
#define number 20

int main(int argc, const char * argv[]) {
    int f0 = 0;
    int f1 = 1;
    int sum = 0;
    
    for (int n = 1; n <= number; n++) {
        if (n == 1) {
            sum = 0;
            printf("%d ", sum);
            continue;
        } else if (n == 2) {
            sum = 1;
            printf("%d ", sum);
            continue;
        }
        
        sum = f0 + f1;
        f0 = f1;
        f1 = sum;
        
        printf("%d ", sum);
    }
    
    printf("\nFibonacci for %d is: %d\n", number, sum);
    
    return 0;
}
