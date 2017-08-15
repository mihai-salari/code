#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic) NSString *name;

- (void)printNameWithBlock:(void (^)(id))aBlock;
- (void)testSelfBlock;

@end
