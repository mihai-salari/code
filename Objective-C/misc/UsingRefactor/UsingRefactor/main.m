// Nothing much here, trying with the refactor option in the menu,
// but sometimes it didn't change the name of all the files also...

#import <Foundation/Foundation.h>
#import "Thing.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Thing *s = [Thing new];
        
        NSLog(@"Thing is %@", s);
    }
    
    return 0;
}
