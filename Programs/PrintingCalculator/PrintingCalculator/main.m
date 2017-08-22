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
                case '-':
                    [cal subtract:number];
                    break;
                case '*':
                    [cal multiply:number];
                    break;
                case '/':
                    [cal divide:number];
                    break;
                case 'S':
                    [cal setAccumulator:number];
                    break;
                case 'E':
                    break;
                default:
                    printf("= ERROR: invalid input\n");
                    break;
            }
            
            printf("= %lf\n", [cal accumulator]);
        } while (operator != 'E');
        
        printf("End of Calculations\n");
    }
    
    return 0;
}
