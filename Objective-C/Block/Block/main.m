#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^simpleBlock)(void) = ^{
            NSLog(@"This is a block");
        };
    }
    
    return 0;
}
