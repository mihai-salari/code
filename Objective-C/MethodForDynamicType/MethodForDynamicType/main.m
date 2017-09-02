#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id someone = [Person new];
        
        if ([someone isMemberOfClass:[Person class]]) {
            [someone setName:@"Foo Bar"];
        }
        
        SEL action = @selector(greetWithName);
        
        if ([someone respondsToSelector:action]) {
            [someone performSelector:action];
        } else {
            NSLog(@"I don't know what you meant!");
        }
    }
    
    return 0;
}
