#import <Foundation/Foundation.h>
#define INPUT_ARGS 0

#if INPUT_ARGS <= 0
#warning "No input arguments defined"
#error "No input arguments defined"
#endif

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
    }
    return 0;
}
