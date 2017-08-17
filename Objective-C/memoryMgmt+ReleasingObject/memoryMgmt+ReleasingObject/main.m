#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *msg = [NSMutableString stringWithFormat:@"hello world"];
        NSLog(@"%@", msg);
        
        // No longer needed in ARC
        //[msg release];
        
        msg = nil;
        
        NSLog(@"%@ is %lu long", msg, [msg length]);
    }
    
    return 0;
}
