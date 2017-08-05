#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Certain decimal valus can't be stored precisely.
        float f = 0.6;
        NSLog(@"0.6 = %0.50f", f);
    }
    
    return 0;
}
