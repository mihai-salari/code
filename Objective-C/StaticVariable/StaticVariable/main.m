#import <Foundation/Foundation.h>
#import "Foo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Foo *foo = [Foo fooWithName:@"Foo"];
        
        NSLog(@"I am %@", foo.name);
        NSLog(@"There is %i foo", [Foo fooCount]);
        
        for (int i = 0; i < 10; i++) {
            Foo *f = [Foo fooWithName:[NSString stringWithFormat:@"Foo_%d", i]];
            
            NSLog(@"I am %@", f.name);
            NSLog(@"There is %i instance of f", [Foo fooCount]);
        }
    }
    
    return 0;
}
