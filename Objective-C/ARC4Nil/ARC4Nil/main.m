#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name; // ARC set this to nil
        
        NSLog(@"name = %@", name);
        
        if (nil == name) {
            NSLog(@"name is nil");
        }
    }
    
    return 0;
}
