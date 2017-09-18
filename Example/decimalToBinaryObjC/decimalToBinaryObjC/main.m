#import <Foundation/Foundation.h>

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
