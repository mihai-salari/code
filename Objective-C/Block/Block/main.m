#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^simpleBlock)(void) = ^{
            NSLog(@"This is a simple block.");
        };
        
        simpleBlock();
        
        NSArray *blocks = @[simpleBlock];
        NSLog(@"block is %@", blocks[0]);
    }
    
    return 0;
}
