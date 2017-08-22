#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a = [Fraction new];
        Fraction *b = [Fraction new];
        
        Fraction *result;
        
        [a setTo:1 over:4];
        [b setTo:1 over:2];
        
        [a print];
        printf("+\n");
        [b print];
        printf("=\n");
        
        result = [a add:b];
        //result = [a subtract:b];
        //result = [a multiply:b];
        //result = [a divide:b];
        
        [result print];
        
        Fraction *c = [Fraction new];
        [c setTo:2 over:4];
        [c print];
        [c printWithReduced:YES];
        [c print];
        
        Fraction *d = [Fraction new];
        [d setTo:5 over:3];
        [d print];
        [d printWithProper];
    }
    
    return 0;
}
