#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        if (CGFLOAT_IS_DOUBLE) {
            NSLog(@"CGFLOAT is DOUBLE!\n");
        } else {
            NSLog(@"CGFLOAT is not DOUBLE!\n");
        }
    }
    
    return 0;
}
