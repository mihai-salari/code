#import <Foundation/Foundation.h>

#define ONE_DAY (24.0 * 60.0 * 60.0)

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:ONE_DAY];
        NSDate *yesterday = [now dateByAddingTimeInterval:-ONE_DAY];
        
        NSArray *dateList = @[now, tomorrow, yesterday];
        
        NSLog(@"The first date is %@", dateList[0]);
        NSLog(@"There are %lu dates in the array", [dateList count]);
        
        for (int i = 0; i < dateList.count; i++) {
            NSDate *d = dateList[i];
            NSLog(@"Here is a date: %@", d);
        }
        
        // Fast enumeration
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@", d);
        }
        
        // Old-style methods working with array
        NSArray *nameList = [NSArray arrayWithObjects:@"Foo", @"Ben", @"Ken", nil];
        NSLog(@"The first name is %@", [nameList objectAtIndex:0]);
        NSLog(@"The second name is %@", [nameList objectAtIndex:1]);
    }
    
    return 0;
}
