// Instance variables declared either explicitly in the implementation section
// (or implicitly by using the @synthesize directive) are made private, meaning
// they're not accessible to subclasses directly by name. So, subclasses have no
// choice but to use the inherited accessor methods in order to access their values.

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Foo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Foo *foo = [Foo new];
        
        NSLog(@"Foo's name is %@, age is %d", [foo name], [foo age]);
        
        [foo printName];
    }
    
    return 0;
}

/*

 2017-09-09 03:03:28.583786+0800 InstanceVariable[38780:2165921] Foo's name is unknown, age is 0
 2017-09-09 03:03:28.583955+0800 InstanceVariable[38780:2165921] My name is unknown
 Program ended with exit code: 0

*/
