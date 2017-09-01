// A singleton is a class with only a single-shared instance.

#import <Foundation/Foundation.h>
#import "God.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        God *god = [God new];
        
        NSLog(@"%@", god);
        
        God *sg1 = [God sharedGod];
        God *sg2 = [God sharedGod];
        
        // Note both refer to same memory address
        NSLog(@"%@", sg1);
        NSLog(@"%@", sg2);
    }
    
    return 0;
}
