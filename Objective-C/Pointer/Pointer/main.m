#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
    }
    
    return 0;
}
