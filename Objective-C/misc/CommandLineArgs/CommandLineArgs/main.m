#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int count = argc;
        
        for (int i = 0; i < count; i++) {
            NSLog(@"arg %i = %s", i, argv[i]);
        }
    }
    
    return 0;
}
