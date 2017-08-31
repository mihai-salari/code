#import <Foundation/Foundation.h>
#import "Human.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Human *h = [Human new];
        
        NSLog(@"Human is %@", h);
    }
    
    return 0;
}
