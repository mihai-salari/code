#import <Foundation/Foundation.h>

@interface Foo : NSObject

@property NSString *name;

+ (Foo *)allocFoo;
+ (instancetype)fooWithName:(NSString *)name;
+ (int)fooCount; // getter to access static variable fooCount

- (instancetype)initWithName:(NSString *)name;



@end
