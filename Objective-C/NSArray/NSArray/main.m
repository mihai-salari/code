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
    }
    
    return 0;
}
