#import <Foundation/Foundation.h>

void testBlockInFunction() {
    int number = 42;
    int anotherNumber = 88;
    __block int magicNumber = 1;
    
    void (^testBlock)(void) = ^{
        //printf("number is %d\n", number);
        NSLog(@"number is %d", number);
        NSLog(@"anotherNumber is %d", anotherNumber);
        NSLog(@"magicNumber is %d", magicNumber);
        NSLog(@"block is changing the magicNumber...");
        
        magicNumber = 9;
        
        NSLog(@"magicNumber is %d", magicNumber);        
    };
    
    anotherNumber = 8; // not affected
    magicNumber = 42; // affected due to shared storage
    
    testBlock();
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^simpleBlock)(void) = ^{
            NSLog(@"This is a simple block.");
        };
        
        simpleBlock();
        
        // Blocks is Objective-C object
        NSArray *blocks = @[simpleBlock]; // block is object, we can store in array etc
        NSLog(@"block is %@", blocks[0]);
        
        void (^arrayBlock)(void) = blocks[0];
        arrayBlock();
        
        // Blocks can take arguments and return values
        double (^multiplyTwoValues)(double, double) = ^ double (double firstValue, double secondValue) {
            return firstValue * secondValue;
        };
        
        NSLog(@"9 x 9 = %g", multiplyTwoValues(9, 9));
        
        // Blocks can capture values from the enclosing scope
        testBlockInFunction();
    }
    
    return 0;
}
