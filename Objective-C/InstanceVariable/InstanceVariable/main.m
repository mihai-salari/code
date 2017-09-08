#import <Foundation/Foundation.h>
#import "Person.h"
#import "Foo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Foo *foo = [Foo new];
        
        NSLog(@"Foo's name is %@, age is %d", [foo name], [foo age]);
    }
    
    return 0;
}
