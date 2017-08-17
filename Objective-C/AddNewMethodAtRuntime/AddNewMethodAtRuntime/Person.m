#import "Person.h"

@implementation Person

void aSimpleDynamicMethodIMP(id self, SEL _cmd) {
    NSLog(@"You called a method named %@", NSStringFromSelector(_cmd));
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if (sel == @selector(aSimpleDynamicMethod)) {
//        NSLog(@"Adding a method named %@ to class %@", NSStringFromSelector(sel), NSStringFromClass([self class]));
        class_addMethod([self class], sel, (IMP)aSimpleDynamicMethodIMP, "v@:");
        
        return YES;
    }
    
    return [super resolveInstanceMethod:sel];
}

@end
