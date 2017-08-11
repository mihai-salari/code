#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name; // ARC set this to nil
        
        NSLog(@"name = %@", name);
    }
    
    return 0;
}
