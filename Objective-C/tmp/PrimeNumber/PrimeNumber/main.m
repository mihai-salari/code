
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int p, d, isPrime;
        
        for (p = 2; p <= 100; p++) {
            isPrime = 1;
            
            for (d = 2; d < p; d++) {
                if (p % d == 0) {
                    isPrime = 0;
                }
            }
            
            if (isPrime != 0) {
                printf("%i ", p);
            }
        }
        
        printf("\n");
    }
    
    return 0;
}
