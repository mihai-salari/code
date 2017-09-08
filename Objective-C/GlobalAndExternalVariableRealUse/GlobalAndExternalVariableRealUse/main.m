#import <Foundation/Foundation.h>

int gNumber = 0;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"global number is %i", gNumber);
    }
    
    return 0;
}
