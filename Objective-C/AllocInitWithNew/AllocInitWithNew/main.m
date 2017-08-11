#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *msg = [NSMutableString new];
        [msg appendString:@"hi"];
        
        NSLog(@"%@", msg);
    }
    
    return 0;
}
