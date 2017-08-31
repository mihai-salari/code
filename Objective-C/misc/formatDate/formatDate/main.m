#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *date = [NSDate date];
        NSDateFormatter *df = [NSDateFormatter new];
        
        [df setDateFormat:@"MMM d, yyyy, EEE"];
        
        NSString *dateString = [df stringFromDate:date];
        
        NSLog(@"Today is %@.", dateString);
    }
    
    return 0;
}

/*
 
2017-08-31 21:54:23.527328+0800 formatDate[8213:613094] Today is Aug 31, 2017, Thu.
Program ended with exit code: 0

*/
