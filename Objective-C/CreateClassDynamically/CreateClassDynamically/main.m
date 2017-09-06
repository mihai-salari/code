#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <objc/message.h>

NSString *greeting(id self, SEL _cmd) {
    return [NSString stringWithFormat:@"Hello, World!"];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Dynamically create a class
        
    }
    
    return 0;
}
