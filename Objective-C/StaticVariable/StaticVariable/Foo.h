#import <Foundation/Foundation.h>

@interface Foo : NSObject

@property NSString *name;

+ (instancetype)fooWithName:(NSString *)name;
- (instancetype)initWithName:(NSString *)name;

@end
