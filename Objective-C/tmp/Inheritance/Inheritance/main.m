#import <Foundation/Foundation.h>
#import "A.h"
#import "B.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        A *a = [A new];
        [a setAge];
        
        NSLog(@"%i", [a age]);
        
        B *b = [B new];
        [b printAge];
    }
    
    return 0;
}
