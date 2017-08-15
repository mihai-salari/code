#import <Foundation/Foundation.h>
#import "Person.h"

/*
 Original intention is to demonstrate the problem of strong reference cycle
 while reference self inside a block, but seems in this example, the strong
 reference cycle is not created.
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        p.name = @"Foo Bar";
        
        // Declare a block
        void (^myBlock)(id) = ^ (id person) {
            NSLog(@"My name is %@", [person name]);
        };
        
        // Call the block
        [p printNameWithBlock:myBlock];
        
        // Call another block
        [p testSelfBlock];
    }
    
    return 0;
}
