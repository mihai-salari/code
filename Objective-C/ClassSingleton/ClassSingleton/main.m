// A singleton is a class with only a single-shared instance.

#import <Foundation/Foundation.h>
#import "God.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        God *god = [God new];
        
        NSLog(@"%@", god);
    }
    
    return 0;
}
