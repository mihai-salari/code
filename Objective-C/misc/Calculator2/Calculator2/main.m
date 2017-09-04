#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *cal = [Calculator new];
        
        NSNumber *n1 = @25;
        NSNumber *n2 = @30;
        NSNumber *n3 = @88;
        
        NSLog(@"Sum of %@ + %@ = %@", n1, n2, [cal sumAdd:n1 and:n2]);
        NSLog(@"Sum of %@ + %@ = %@", n1, n3, [cal sumAdd:n1 :n3]);
        
        SEL selector1 = @selector(sumAdd:and:); // create at compile time
        id sum1 = [cal performSelector:selector1 withObject:n1 withObject:n2];
        NSLog(@"Sum of %@ + %@ = %@", n1, n2, sum1);
        
        SEL selector2 = NSSelectorFromString(@"sumAdd::"); // create at runtime
        id sum2 = [cal performSelector:selector2 withObject:n1 withObject:n3];
        NSLog(@"Sum of %@ + %@ = %@", n1, n2, sum2);
    }
    
    return 0;
}
