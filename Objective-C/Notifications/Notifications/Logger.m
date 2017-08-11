#import "Logger.h"

@implementation Logger

- (void)zoneChange:(NSNotification *)nf {
    NSLog(@"The system time zone has changed!");
}

@end
