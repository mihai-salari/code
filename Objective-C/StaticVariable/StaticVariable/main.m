#import <Foundation/Foundation.h>
#import "Foo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Foo *foo = [Foo fooWithName:@"Foo"];
        
        NSLog(@"I am %@", foo.name);
        NSLog(@"There is %i foo", [foo fooCount]);
    }
    
    return 0;
}
