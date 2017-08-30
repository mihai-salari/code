#include <stdio.h>

#define number 20

int fib(int n) {
    int f0 = 0;
    int f1 = 1;
    int sum = f0 + f1;
    
    if (n == 0) {
        printf("%d ", f0);
        
        return f0;
    } else if (n == 1) {
        printf("%d ", sum);
        return sum;
    } else {
        f0 = f1;
        f1 = sum;
        sum = f0 + f1;
    }
    
    printf("%d ", sum);
    
    return sum
}

int main(int argc, const char * argv[]) {
    
    printf("%d\n", fib(number));
    
    return 0;
}
