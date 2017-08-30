// Find the GCD of two non-negative integers U and V
// Algorithm by Euclid
// Step 1 - If v equals 0, then we are done and the gcd is equal to U
// Step 2 - Calculate temp = u % v, u = v, v = temp and go back to step 1

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int u, v, temp;
        
        NSLog(@"Please type in two nonnegative integers.");
        scanf("%u%u", &u, &v);
        
        while (v != 0) {
            temp = u % v;
            u = v;
            v = temp;
        }
        
        NSLog(@"The greatest common divisor is %u", u);
    }
    
    return 0;
}
