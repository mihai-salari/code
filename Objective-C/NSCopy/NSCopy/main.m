#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *foo = [Person new];
        foo.name = @"Foo";
        [foo printName];
    }
    
    return 0;
}
