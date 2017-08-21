#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double number;
        char operator;
        bool firstTime = YES;
        
        Calculator *cal = [Calculator new];
        
        printf("Begin Calculations");
        
        while (operator != 'E') {
            scanf("%lf %c", &number, &operator);
            
            // Make sure user set accumulator before perform
            // additional calculations
            if (firstTime) {
                if (operator != 'S') {
                    printf("Set accumulator with command 'S'\n");
                    printf("e.g. 10 S");
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
        }
        
        printf("End of Calculations");
    }
    
    return 0;
}
