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
    }
    
    return 0;
}
