#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>

// A function
NSString *greeting(id self, SEL _cmd) {
    return [NSString stringWithFormat:@"Hello, World!"];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Dynamically create a class
        Class DynamicClass = objc_allocateClassPair([NSObject class], "DynamicClass", 0);
        
        // Dynamically add a method, using existing method (description) to retrieve signature
        Method description = class_getInstanceMethod([NSObject class], @selector(description));
        
        const char *types = method_getTypeEncoding(description);
        
        class_addMethod(DynamicClass, @selector(greeting), (IMP)greeting, types);
        
        // Register the class
        objc_registerClassPair(DynamicClass);
        
        // Now use the class - create an instance and send it a message
        id dynamicObject = [DynamicClass new];
        
        // Below objc_msgSend is not working...
        //NSLog(@"%@", objc_msgSend(dynamicObject, NSSelectorFromString(@"greeting")));
        
        NSLog(@"%@", [dynamicObject performSelector:@selector(greeting) withObject:dynamicObject]);
    }
    
    return 0;
}
