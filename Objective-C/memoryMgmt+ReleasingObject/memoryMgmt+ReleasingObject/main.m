#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *msg = [NSMutableString stringWithFormat:@"hello world"];
        NSLog(@"%@", msg);
        
        [msg release];
    }
    
    return 0;
}
