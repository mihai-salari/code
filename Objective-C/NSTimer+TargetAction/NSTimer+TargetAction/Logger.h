#import <Foundation/Foundation.h>

@interface Logger : NSObject

@property (nonatomic) NSDate *lastTime;

- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;

@end
