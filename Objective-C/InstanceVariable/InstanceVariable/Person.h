#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name; // instance variable will be _name

- (void)setAge:(int)age;
- (int)age;

- (instancetype)initWithName:(NSString *)name andAge:(int)age;

@end
