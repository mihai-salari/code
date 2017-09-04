#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *c = [Calculator new];
        SEL sel1 = NSSelectorFromString(@"absoluteValue:");
        
        NSLog(@"Invoking instance method %@ on object of class %@", NSStringFromSelector(sel1), [c className]);
        
        id sum1 = [c performSelector:sel1 withObject:@-123];
        NSLog(@"Absolute value of %@ = %@", @"-123", sum1);
    }
    
    return 0;
}

/*

 2017-09-04 22:39:25.670059+0800 DynamicMethodResolution[75897:4600100] Invoking instance method absoluteValue: on object of class Calculator
 2017-09-04 22:39:25.670268+0800 DynamicMethodResolution[75897:4600100] Dynamically added instance method absoluteValue: to class Calculator
 2017-09-04 22:39:25.670312+0800 DynamicMethodResolution[75897:4600100] Absolute value of -123 = 123
 Program ended with exit code: 0

*/
