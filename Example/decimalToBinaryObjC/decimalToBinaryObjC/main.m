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
    int number = decimalNumber;
    
    NSMutableArray *decimalNumbers = [NSMutableArray array];
    
    if (number % 2 == 0) {
        [decimalNumbers addObject:@"0"];
    } else {
        [decimalNumbers addObject:@"1"];
    }
    
    while (!isComplete) {
        int quotient = number / 2;
        number = quotient;
        
        if (quotient == 0) {
            isComplete = YES;
        } else if (quotient % 2 == 0) {
            [decimalNumbers insertObject:@"0" atIndex:0];
        } else {
            [decimalNumbers insertObject:@"1" atIndex:0];
        }
    }
    
    int count = 0;
    NSString *binaryNumber = [NSString string];
    
    while (count < [decimalNumbers count]) {
        NSString *digit = [decimalNumbers objectAtIndex:count];
        binaryNumber = [binaryNumber stringByAppendingString:digit];
        count++;
    }
    
    return binaryNumber;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        for (int i = 0; i <= 99; i++) {
            NSLog(@"%d = 0b%@", i, getBinaryRepresentation(i));
        }
    }
    
    return 0;
}
