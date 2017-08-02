#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *host = [NSHost currentHost];
        NSString *hostname = [host localizedName];
        
        NSLog(@"Host name is %@", hostname);
    }
    
    return 0;
}
