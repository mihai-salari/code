#import <Foundation/Foundation.h>
#import "Person.h"
#import "Doctor.h"

// Implementing copying in custom class

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *foo = [Person new];
        foo.name = @"Foo";
        [foo printName];
        
        Person *anotherFoo = [foo copy];
        [anotherFoo printName];
    }
    
    return 0;
}
