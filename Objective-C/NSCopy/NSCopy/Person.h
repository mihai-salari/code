#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

@property NSString *name;

- (void)printName;

@end
