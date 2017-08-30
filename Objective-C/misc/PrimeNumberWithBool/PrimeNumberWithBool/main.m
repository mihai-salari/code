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

/*
 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97
 Program ended with exit code: 0
*/
