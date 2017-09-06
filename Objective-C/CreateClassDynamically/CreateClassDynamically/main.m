#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>

NSString *greeting(id self, SEL _cmd) {
    return [NSString stringWithFormat:@"Hello, World!"];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Dynamically create a class
        Class DynamicClass = objc_allocateClassPair([NSObject class], "DynamicClass", 0);
        
        // Dynamically add a method, using existing method (description) to retrieve signature
        Method description = class_getInstanceMethod([NSObject class], @selector(description));
        
    }
    
    return 0;
}
