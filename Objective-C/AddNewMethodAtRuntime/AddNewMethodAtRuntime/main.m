#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // We need to use id for dynamic type, else it will be type statically
        id p = [Person new];
        
        // We cannot use following method call
        //[p aSimpleDynamicMethod];
        
        // We need to use below method call to add a new method dynamically to runtime
        // The method 'aSimpleDynamicMethod' is not declare anywhere in the interface
        [p performSelector:@selector(aSimpleDynamicMethod)];
        [p performSelector:@selector(aSimpleDynamicMethod)];
        [p performSelector:@selector(aSimpleDynamicMethod)];
    }
    
    return 0;
}
