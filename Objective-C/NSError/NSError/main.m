#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Declare a pointer to an NSError object, but do not instantiate it.
        // The NSError instance will only be created if there is an error.
        NSError *error;
        
        // Pass the NSError pointer by reference
        NSMutableString *msg = [[NSMutableString alloc] init];
        
        [msg appendString:@"Hello"];
        
        BOOL success = [msg writeToFile:@"/tmp/tmp/msg.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&error];
        
        if (success) {
            NSLog(@"Done writing to /tmp/msg.txt");
        } else {
            NSLog(@"Writing failed: %@", [error localizedDescription]);
        }
    }
    
    return 0;
}
