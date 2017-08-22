#import "Person.h"

@implementation Person {
    char *firstName;
    char *lastName;
}

- (char *)firstName {
    return firstName;
}

- (char *)lastName {
    return lastName;
}

- (const char *)fullName {
    NSString *fullName = [[NSString alloc] initWithUTF8String:firstName];
    NSString *nsLastName = [[NSString alloc] initWithUTF8String:lastName];
    
    fullName = [fullName stringByAppendingString:@" "];
    fullName = [fullName stringByAppendingString:nsLastName];
    
    const char *cFullName = [fullName UTF8String];
    
    return cFullName;
}

- (void)setFirstName:(char *)name {
    firstName = name;
}

- (void)setLastName:(char *)name {
    lastName = name;
}

@end
