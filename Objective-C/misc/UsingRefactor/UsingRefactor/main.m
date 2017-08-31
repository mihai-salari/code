#import <Foundation/Foundation.h>
#import "Thing.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Thing *s = [Thing new];
        
        NSLog(@"Thing is %@", s);
    }
    
    return 0;
}
