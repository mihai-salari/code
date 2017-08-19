// A simple program to work with fractions

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Without using OOP, we might need to create many different
        // numerator and denominator variables to represent
        // the values that are needed
        int numerator = 1;
        int denominator = 3;
        
        NSLog(@"The fraction is %i/%i", numerator, denominator);
    }
    
    return 0;
}
