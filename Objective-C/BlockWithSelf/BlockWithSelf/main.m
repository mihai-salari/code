#import <Foundation/Foundation.h>
#import "Person.h"

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
    }
    
    return 0;
}
