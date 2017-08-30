#include <stdio.h>

#define number 20

int fib(int n) {
    return 2 + fib(n - 1)
}

int main(int argc, const char * argv[]) {
    if (number == 1) {
        printf("Fibonacci Number 1 is: 0\n");
    } else if (number == 2) {
        printf("Fibonacci Number 2 is: 1\n");
    } else {
        printf("Fibonacci Number %d is: %d\n", number, 2 + fib(number));
    }
    
    return 0;
}
