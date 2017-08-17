#import <Foundation/Foundation.h>

#define MB (1024 * 1024) // Megabytes

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSZone *myZone = NSCreateZone(2 * MB, 1 * MB, false);
        
        NSString *text = [[NSString allocWithZone:myZone] init];
        text = @"hello";
        
        // or use default zone
        NSZone *defaultZone = NSDefaultMallocZone();
        
        NSString *defaultText = [[NSString allocWithZone:defaultZone] init];
        
        defaultText = @"hello";
    }
    
    return 0;
}
