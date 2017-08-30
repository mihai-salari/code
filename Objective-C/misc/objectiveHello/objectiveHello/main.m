#import <Foundation/Foundation.h>
#import "Greeter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Greeter *myGreet = [[Greeter alloc] init];
        
        [myGreet setGreetingText:@"Hello"];
        [myGreet issueGreeting];
    }
    
    return 0;
}
