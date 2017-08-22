#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *fraction = [Fraction new];
        
        [fraction setNumerator:1];
        [fraction setDenominator:3];
        
        NSLog(@"The value of fraction is:");
        [fraction print];
        
        Fraction *anotherFraction = [Fraction new];
        
        [anotherFraction setNumerator:9];
        [anotherFraction setDenominator:99];
        
        NSLog(@"The value of anotherFraction is:");
        [anotherFraction print];
        
        NSLog(@"The value of fraction is %i/%i", [fraction numerator], [fraction denominator]);
    }
    
    return 0;
}
