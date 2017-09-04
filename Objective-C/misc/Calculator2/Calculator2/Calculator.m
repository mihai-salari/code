#import "Calculator.h"
#import <objc/runtime.h>

@implementation Calculator

// Dynamic method resolution

id absoluteValue(id self, SEL _cmd, id value) {
    NSInteger intVal = [value integerValue];
    
    if (intVal < 0) {
        return [NSNumber numberWithInt:(intVal * -1)];
    }
    
    return value;
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    NSString *method = NSStringFromSelector(sel);
    
    if ([method hasPrefix:@"absoluteValue"]) {
        class_addMethod([self class], sel, (IMP)absoluteValue, "@@:@");
        
        NSLog(@"Dynamically added instance method %@ to class %@", method, [self class]);
        
        return YES;
    }
    
    return [super resolveInstanceMethod:sel];
}

- (NSNumber *)sumAdd:(NSNumber *)a and:(NSNumber *)b {
    NSLog(@"Invoking method on %@ object with selector %@", [self className], NSStringFromSelector(_cmd));
    
    return [NSNumber numberWithInteger:([a integerValue] + [b integerValue])];
}

- (NSNumber *)sumAdd:(NSNumber *)a :(NSNumber *)b {
    NSLog(@"Invoking method on %@ object with selector %@", [self className], NSStringFromSelector(_cmd));
    
    return [NSNumber numberWithInteger:([a integerValue] + [b integerValue])];
}

@end
