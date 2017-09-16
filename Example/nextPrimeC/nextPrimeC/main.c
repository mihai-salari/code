#include <stdio.h>
#include <stdbool.h>
#include <math.h>

// To find the next prime number greater than a specified number

int main(int argc, const char * argv[]) {
    bool isPrime;
    int startingPoint, candidate, last, i;
    
    startingPoint = 9;
    
    if (startingPoint < 2) {
        candidate = 2; // 2 is the smaller prime number
    } else if (startingPoint == 2) {
        candidate = 3; // 3 is the next prime after 2
    } else {
        candidate = startingPoint;
        
        if (candidate % 2 == 0) { // test only odd numbers
            candidate--;
        }
        
        do {
            // the value of candidate here will always be odd numbers after
            // we filter out even numbers above
            isPrime = true; // assume it is a prime
            candidate += 2; // bump up to next number, because we minus one above, and we don't need to check for that number
            printf("do: candidate = %d\n", candidate);
            
            last = sqrt(candidate);
            printf("do: last = %d\n", last);
            
            // check to see candidate has any factors, from 3 to last
            // loop through odd numbers only
            for (i = 3; (i <= last) && isPrime; i += 2) {
                if ((candidate % i) == 0) {
                    isPrime = false;
                }
            }
        } while (!isPrime);
    }
    
    printf("The next prime after %d is %d\n", startingPoint, candidate);
    
    return 0;
}
