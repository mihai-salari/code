#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n = 0;
        
        printf("n\t\tn2\n");
        printf("------------\n");
        for (n = 1; n <= 10; ++n) {
            printf("%2i\t\t%3i\n", n, 2 * n);
        }
    }
    
    return 0;
}
