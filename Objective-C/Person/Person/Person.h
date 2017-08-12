#import <Foundation/Foundation.h>

typedef enum {
    Male,
    Female
} Gender;

@interface Person : NSObject

{
    NSString *_fullName;
    NSNumber *_age;
    Gender _gender;
}

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic) NSDate *dateOfBirth;

+ (id)person;

- (id)initWithName:(NSString *)name;
- (id)initWithAge:(NSNumber *)age;
- (id)initWithGender:(Gender)gender;
- (id)initWithName:(NSString *)name age:(NSNumber *)age gender:(Gender)gender;

- (void)saySomething:(NSString *)message;
- (void)sayHello;
- (void)sayGoodbye;

// Setter and getter

- (NSString *)name;
- (NSNumber *)age;
- (Gender)gender;

- (void)setName:(NSString *)name;
- (void)setAge:(NSNumber *)age;
- (void)setGender:(Gender)gender;


@end
