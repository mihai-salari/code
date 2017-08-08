#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *a1 = [NSArray arrayWithObject:@"A"];
        NSArray *a2 = [NSArray arrayWithObjects:@"B", @"C", @"D", nil];
        
        int numbers[] = {1, 2, 3, 4, 5}; // C style array
        
        NSMutableArray *numberArray;
        
        for (int i = 1; i < 5; i++) {
            NSNumber *n = [NSNumber numberWithInteger:numbers[i]];
            [numberArray addObject:n];
        }
        
        NSLog(@"numberArray: %@", numberArray);
    }
    
    return 0;
}
