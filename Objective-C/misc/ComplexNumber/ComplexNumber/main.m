#import <Foundation/Foundation.h>
#import "ComplexNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ComplexNumber *c = [ComplexNumber new];
        [c setReal:9];
        [c setImaginary:10];
        [c print];
    }
    
    return 0;
}
