#include <stdio.h>

#define number 20

int fib(int n) {
    int sum = 0;
    
    if (n == 0) {
        return 0;
    } else if (n == 1 || n == 2) {
        return 1;
    } else {
        sum = fib(n - 1) + fib(n - 2);
        return sum;
    }
}

int main(int argc, const char * argv[]) {
    
    printf("%d\n", fib(number));
    
    return 0;
}
