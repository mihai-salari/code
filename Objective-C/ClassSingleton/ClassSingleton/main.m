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

/*

 2017-09-02 03:41:43.814177+0800 ClassSingleton[31224:2293537] I am The God from planet 0x1004053e0.
 2017-09-02 03:41:43.814361+0800 ClassSingleton[31224:2293537] I am The God from planet 0x1002036b0.
 2017-09-02 03:41:43.814384+0800 ClassSingleton[31224:2293537] I am The God from planet 0x1002036b0.
 Program ended with exit code: 0

*/
