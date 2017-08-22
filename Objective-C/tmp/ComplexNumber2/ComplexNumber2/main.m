#import <Foundation/Foundation.h>
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Complex *c = [Complex new];
        [c setReal:9];
        [c setImaginary:10];
        [c print];
    }
    
    return 0;
}
