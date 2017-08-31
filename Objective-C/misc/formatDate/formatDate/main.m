#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        
        NSDate *date = [NSDate date];
        NSDateFormatter *df = [NSDateFormatter new];
        
        [df setDateFormat:@"EEE MMM d, yyyy"];
        
        NSString *dateString = [df stringFromDate:date];
        
        NSLog(@"Today is %@", dateString);
    }
    
    return 0;
}
