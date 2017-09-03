// Cast a Foundation framework object to CoreFoundation type

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *greeting = [[NSString alloc] initWithFormat:@"%@", @"I am Foundation String!"];
        
        NSLog(@"greeting's class is %@", [greeting class]);
    }
    
    return 0;
}
