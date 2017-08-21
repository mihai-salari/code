#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double number;
        char operator;
        bool firstTime = YES;
        
        Calculator *cal = [Calculator new];
        
        printf("Begin Calculations\n");
        
        do {
            scanf("%lf %c", &number, &operator);
            
            // Make sure user set accumulator before perform
            // additional calculations
            if (firstTime) {
                if (operator != 'S') {
                    printf("Set accumulator with command 'S', e.g 10 S\n");
                    
                    continue;
                } else {
                    firstTime = NO;
                }
            }
            
            switch (operator) {
                case '+':
                    [cal add:number];
                    break;
                case 'S':
                    [cal setAccumulator:number];
                    break;
                default:
                    break;
            }
            
            printf("= %lf\n", [cal accumulator]);
        } while (operator != 'E');
        
        printf("End of Calculations\n");
    }
    
    return 0;
}
