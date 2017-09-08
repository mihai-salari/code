// Initialization process

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *foo = [[Person alloc] initWithName:@"Foo"];
        
        NSLog(@"Person name is %@", [foo name]);
        
        Person *john = [Person new];
        
        NSLog(@"Person name is %@", [john name]);
    }
    
    return 0;
}
