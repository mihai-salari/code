#import "Foo.h"

@implementation Foo

- (void)printName {
    NSLog(@"My name is %@", self.name); // subclass cannot access ivar directly, can only access via accessor methods
}

@end

/*

 2017-09-09 03:03:28.583786+0800 InstanceVariable[38780:2165921] Foo's name is unknown, age is 0
 2017-09-09 03:03:28.583955+0800 InstanceVariable[38780:2165921] My name is unknown
 Program ended with exit code: 0

*/
