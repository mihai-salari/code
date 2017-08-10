#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSError *error;
        NSString *msg = [[NSString alloc] initWithContentsOfFile:@"/etc/hostsfile"
                                                        encoding:NSASCIIStringEncoding
                                                           error:&error];
        
        if (!msg) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"%@", msg);
        }
    }
    
    return 0;
}
