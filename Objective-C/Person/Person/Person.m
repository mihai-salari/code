#import "Person.h"

@implementation Person

+ (id)person {
    return [[self alloc] init];
}

- (void)saySomething:(NSString *)message {
    NSLog(@"%@", message);
    
}

- (void)sayHello {
    [self saySomething:@"Hello!"];
}

- (void)sayGoodbye {
    [self saySomething:@"Goodbye!"];
}

@end
