#import "Person.h"

@implementation Person

// without synthesize, the instance variable for property 'firstName' will
// be '_firstName'

@synthesize lastName; // instance variable will be 'lastName'

- (void)fullName {
    NSLog(@"%@ %@", _firstName, self.lastName);
}

@end
