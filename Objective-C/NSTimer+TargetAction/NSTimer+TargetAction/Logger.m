#import "Logger.h"

@implementation Logger

- (NSString *)lastTimeString {
    static NSDateFormatter *dateFormatter = nil;
    
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

@end
