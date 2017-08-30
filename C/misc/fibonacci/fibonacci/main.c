#include <stdio.h>

#define number 20

int fib(int n) {
    int f0 = 0;
    int f1 = 1;
    int sum = f0 + f1;
    
    if (n == 0) {
        return f0;
    } else if (n == 1) {
        return sum;
    }
    
    return sum + fib(n - 1);
}

int main(int argc, const char * argv[]) {
    
    printf("%d\n", fib(number));
    
    return 0;
}
