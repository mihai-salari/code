#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
        
        int x = 8;
        int *y = &x;
        
        NSLog(@"x = %d", x);
        NSLog(@"y = %p", y);
        
        *y = 88;
        
        NSLog(@"x = %d", x);
        NSLog(@"dereferencing the pointer y and access the value it currently points to: %d", *y);
    }
    
    return 0;
}
