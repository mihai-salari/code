#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"now is %@", now);
        
        now = nil;
        NSLog(@"now is %@", now);
        
        NSLog(@"%f", [now timeIntervalSince1970]); // sending a message to nil is OK in Objective-C, but not in Swift!
    }

    return 0;
}
