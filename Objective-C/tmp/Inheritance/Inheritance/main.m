#import <Foundation/Foundation.h>
#import "A.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        A *a = [A new];
        [a setAge];
        
        NSLog(@"%i", [a age]);
    }
    
    return 0;
}
