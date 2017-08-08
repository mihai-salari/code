#import <Foundation/Foundation.h>

#define ONE_DAY (24.0 * 60.0 * 60.0)

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:ONE_DAY];
        NSDate *yesterday = [now dateByAddingTimeInterval:-ONE_DAY];
        
        NSMutableArray *dateList = [NSMutableArray array];
        
        [dateList addObject:now];
        [dateList insertObject:yesterday atIndex:0];
        [dateList addObject:tomorrow];
        [dateList removeObjectAtIndex:1];
        
        NSLog(@"The first date is %@", dateList[0]);
        NSLog(@"There are %lu dates in the array", [dateList count]);
        
        for (int i = 0; i < dateList.count; i++) {
            NSDate *d = dateList[i];
            NSLog(@"Here is a date: %@", d);
        }
        
        // When using fast enumeration with an NSMutableArray, you are not allowed
        // to add or remove items while iterating over the array. If you need
        // to add or remove items while iterating, you must use a standard for-loop.
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        // Working with C-style array
        int numbers[] = {1, 2, 3, 4, 5};
        
        NSMutableArray *numberArray = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 5; i++) {
            NSNumber *n = [NSNumber numberWithInteger:numbers[i]];
            [numberArray addObject:n];
        }
        
        NSLog(@"numberArray: %@", numberArray);

    }
    
    return 0;
}
