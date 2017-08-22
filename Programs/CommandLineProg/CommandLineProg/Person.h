#import <Foundation/Foundation.h>

@interface Person : NSObject

- (char *)firstName;
- (char *)lastName;
- (const char *)fullName;

- (void)setFirstName:(char *)name;
- (void)setLastName:(char *)name;

@end
