#import <Foundation/Foundation.h>

extern NSString * const LCSMissingValuesKey;
extern NSString * const LCSErrorDomain;
extern NSString * const LCSAccountExpirationDateKey;

enum {
    LCSValidationError = 1,
    LCSAccountExpiredError = 2,
    LCSWrongCredentialsError = 3
};

@interface Person : NSObject

@property NSString *name;
@property int age;

+ (BOOL)printPersonInfo:(Person *)person error:(NSError **)error;

- (id)initWithName:(NSString *)name age:(int)age;

@end
