#import "Logger.h"

@implementation Logger

- (NSString *)lastTimeString {
    static NSDateFormatter *dateFormatter = nil; // so that all instances of Logger will share a single instance of NSDateFormatter
    
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t {
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    
    NSLog(@"just set time to %@", self.lastTimeString);
}

- (void)zoneChange:(NSNotification *)nf {
    NSLog(@"The system time zone has changed!");
}

@end
