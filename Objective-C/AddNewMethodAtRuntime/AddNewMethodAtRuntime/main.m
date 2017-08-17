#import <Cocoa/Cocoa.h>
#import <objc/runtime.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id p = [Person new];
        
        [p aSimpleDynamicMethod];
        [p aSimpleDynamicMethod];
        [p aSimpleDynamicMethod];
        [p aSimpleDynamicMethod];
        [p aSimpleDynamicMethod];
    }
    
    return 0;
}
