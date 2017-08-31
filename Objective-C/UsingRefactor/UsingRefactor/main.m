#import <Foundation/Foundation.h>
#import "Something.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Something *s = [Something new];
        
        NSLog(@"Something is %@", s);
    }
    
    return 0;
}
