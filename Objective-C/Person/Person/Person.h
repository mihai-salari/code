#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, readonly) NSString *firstName;
@property (nonatomic, readonly) NSString *lastName;
@property (nonatomic, readonly) NSDate *dateOfBirth;

+ (id)person;
- (void)sayHello;

@end
