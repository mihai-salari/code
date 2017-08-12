#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *d = [Dog new];
        
        NSLog(@"I am %@ #%d", d, [d number]);
    }
    
    return 0;
}
