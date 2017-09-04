#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property int age;

+ (BOOL)printPersonInfo:(Person *)person error:(NSError **)error;

- (id)initWithName:(NSString *)name age:(int)age;

@end
