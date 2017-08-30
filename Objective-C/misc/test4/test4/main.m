#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n = 0;
        int triangular_number = 0;
        
        for (n = 5; n <= 50; n+=5) {
            triangular_number = (n * (n + 1)) / 2; // using a formula to calculate triangular number
            printf("triangular number for %i = %i\n", n, triangular_number);
        }
    }
    
    return 0;
}
