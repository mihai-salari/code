#import <Foundation/Foundation.h>
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Complex *c = [Complex new];
        [c setReal:9];
        [c setImaginary:10];
        [c print];
        
        Complex *c1 = [Complex new];
        [c1 setReal:1];
        [c1 setImaginary:2];
        
        Complex *c2 = [Complex new];
        [c2 setReal:2];
        [c2 setImaginary:3];
        
        Complex *c3;
        c3 = [c1 add:c2];
        [c3 print];
    }
    
    return 0;
}
