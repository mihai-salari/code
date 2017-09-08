#import <Foundation/Foundation.h>

// Note that we didn't import Person.h else below line won't compile, and since
// we didn't import Person.h, we won't be able to use this class in normal way...
// Therefore, I think in real life, we don't use global variable in such way

extern int gNumber; // external global variable

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        gNumber = 42;
        
        NSLog(@"gNumber is %d", gNumber);
    }
    
    return 0;
}
