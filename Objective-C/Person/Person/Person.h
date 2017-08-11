#import <Foundation/Foundation.h>

typedef enum {
    Male,
    Female
} Gender;

@interface Person : NSObject

@property (nonatomic, readonly) NSString *firstName;
@property (nonatomic, readonly) NSString *lastName;
@property (nonatomic, readonly) NSDate *dateOfBirth;

+ (id)person;

- (id)initWithName:(NSString *)name;
- (id)initWithAge:(NSNumber *)age;
- (id)initWithGender:(Gender)gender;
- (id)initWithName:(NSString *)name age:(NSNumber *)age gender:(Gender)gender;

- (void)saySomething:(NSString *)message;
- (void)sayHello;
- (void)sayGoodbye;

@end
