#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^simpleBlock)(void) = ^{
            NSLog(@"This is a simple block.");
        };
        
        simpleBlock();
        
        NSArray *blocks = @[simpleBlock]; // block is object, we can store in array etc
        NSLog(@"block is %@", blocks[0]);
        
        void (^arrayBlock)(void) = blocks[0];
        arrayBlock();
        
        double (^multiplyTwoValues)(double, double) = ^ double (double firstValue, double secondValue) {
            return firstValue * secondValue;
        };
        
        NSLog(@"9 x 9 = %g", multiplyTwoValues(9, 9));
    }
    
    return 0;
}
