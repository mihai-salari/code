#import <Foundation/Foundation.h>

@interface Person : NSObject

+ (BOOL)resolveInstanceMethod:(SEL)sel;

@end
