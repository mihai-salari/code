#import <Foundation/Foundation.h>

/* Algorithm:
 To convert decimal representation to corresponding binary representation.
 
 1. If the number is even, emit a zero. If the number is odd, emit a one.
 2. Divide the number by two and throw away any fractional component or remainder.
 3. If the quotient is zero, the algorithm complete.
 4. If the quotient is not zero and the number is odd, insert a one before the current string.
    If the quotient is not zero and the number is even, prefix your binary string with zero.
 5. Go back to step 2 and repeat.
 */

NSString *getBinaryRepresentation(int decimalNumber) {
    BOOL isComplete = NO;
    int d = decimalNumber;
    NSMutableArray *decimalNumbers = [NSMutableArray array];
    
    if (d % 2 == 0) {
        [decimalNumbers addObject:@"0"];
    } else {
        [decimalNumbers addObject:@"1"];
    }
    
    while (!isComplete) {
        int a = d / 2;
        d = a;
        
        if (a == 0) {
            isComplete = YES;
        } else if (a % 2 == 0) {
            [decimalNumbers insertObject:@"0" atIndex:0];
        } else {
            [decimalNumbers insertObject:@"1" atIndex:0];
        }
    }
    
    int count = 0;
    NSString *binary = [NSString string];
    
    while (count < [decimalNumbers count]) {
        NSString *digit = [decimalNumbers objectAtIndex:count];
        binary = [binary stringByAppendingString:digit];
        count++;
    }
    
    return binary;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Decimal 10 = %@", getBinaryRepresentation(10));
    }
    
    return 0;
}
