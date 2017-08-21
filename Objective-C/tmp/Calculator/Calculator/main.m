#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *cal = [[Calculator alloc] init];
        
        [cal setAccumulator:100.0];
        [cal add:200];
        [cal divide:15];
        [cal subtract:10];
        [cal multiply:5];
        
        NSLog(@"The final result is %g", [cal accumulator]);
        
        NSLog(@"The reciprocal is %g", [cal reciprocal]);
        
        NSLog(@"The squared is %g", [cal xSquared]);
        
        [cal clear];
        
        NSLog(@"The final result is %g", [cal accumulator]);
        
        // test memory operations
        [cal setAccumulator:100];
        [cal memStore];
        [cal memAdd:50];
        [cal memClear];
        [cal memStore];
        
        NSLog(@"%g", [cal accumulator]);
        
        // test expression
        double value1, value2;
        char operator;
        
        printf("Enter your expression: ");
        scanf("%lf %c %lf", &value1, &operator, &value2);
        
        Calculator *newCal = [Calculator new];
        [newCal setAccumulator:value1];
        
        printf("%.2f\n", [newCal accumulator]);
        
        if (operator == '+') {
            [newCal add:value2];
        } else if (operator == '-') {
            [newCal subtract:value2];
        } else if (operator == '*') {
            [newCal multiply:value2];
        } else if (operator == '/') {
            [newCal divide:value2];
        }
        
        printf("%.2f\n", [newCal accumulator]);
    }
    
    return 0;
}

/*

 2017-08-20 04:40:56.453095+0800 Calculator[14094:736730] The final result is 50
 2017-08-20 04:40:56.453244+0800 Calculator[14094:736730] The reciprocal is 0.02
 2017-08-20 04:40:56.453268+0800 Calculator[14094:736730] The squared is 2500
 2017-08-20 04:40:56.453285+0800 Calculator[14094:736730] The final result is 0
 2017-08-20 04:40:56.453301+0800 Calculator[14094:736730] 150
 Program ended with exit code: 0

*/
