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
        
        //result = [a add:b];
        //result = [a subtract:b];
        //result = [a multiply:b];
        //result = [a divide:b];
        [result print];
    }
    
    return 0;
}
