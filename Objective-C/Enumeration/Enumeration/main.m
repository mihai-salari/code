#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        enum direction {
            North,
            South,
            East,
            West
        };
        
        enum direction currentHeading = East;
        
        NSLog(@"Current heading is %u", currentHeading);
    }
    
    return 0;
}
