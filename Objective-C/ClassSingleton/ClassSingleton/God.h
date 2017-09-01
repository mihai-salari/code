#import <Foundation/Foundation.h>

@interface God : NSObject

@property (readonly) NSString *name;

+ (id)sharedGod;
- (id)initWithName:(NSString *)name;

@end
