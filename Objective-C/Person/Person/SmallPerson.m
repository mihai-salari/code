#import "SmallPerson.h"

@implementation SmallPerson

- (void)saySomething:(NSString *)message {
    NSString *uppercaseMessage = [message uppercaseString];
    [super saySomething:uppercaseMessage];
}

@end
