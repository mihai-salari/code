#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *msg = [[NSMutableString alloc] init];
        
        [msg appendString:@"Hello, World!"];
        
        [msg writeToFile:@"/tmp/msg.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:NULL];
        
        NSLog(@"Done writing to /tmp/msg.txt");
    }
    
    return 0;
}
