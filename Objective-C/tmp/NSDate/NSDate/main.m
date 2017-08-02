#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"now is '%@'", now);
    }
    
    return 0;
}
