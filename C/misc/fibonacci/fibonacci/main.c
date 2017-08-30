// https://en.wikipedia.org/wiki/Fibonacci_number
// F(n) = F(n - 1) + F(n - 2)

#include <stdio.h>

#define number 20

int fib(int n) {
    int sum = 0;
    
    // First fib is 0, the value of n here is the number of fib!
    if (n == 1) {
        return 0;
    } else if (n == 2) { // Second fib is 1
        return 1;
    } else {
        sum = fib(n - 1) + fib(n - 2);
        return sum;
    }
}

int main(int argc, const char * argv[]) {
    
    printf("Fibonacci for %d is: %d\n", number, fib(number));
    
    return 0;
}
