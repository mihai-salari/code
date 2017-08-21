// Program to generate a table of prime numbers

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int p, d;
        bool isPrime;
        
        for (p = 2; p <= 100; p++) {
            isPrime = YES; // true
            
            // a test to divide p by the integers 2 through p - 1
            for (d = 2; d < p; d++) {
                // if the remainder is 0, it is not a prime
                if (p % d == 0) {
                    isPrime = NO; // false
                }
            }
            
            if (isPrime) {
                printf("%i ", p);
            }
        }
        
        printf("\n");
    }
    
    return 0;
}
