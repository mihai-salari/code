// Cast a Foundation framework object to CoreFoundation type

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *greeting = [[NSString alloc] initWithFormat:@"%@", @"I am Foundation String!"];
        
        NSLog(@"greeting's class is %@", [greeting class]);
        
        CFStringRef cstr = (__bridge_retained CFStringRef)(greeting);
        
        printf("String is %s\n", cstr);
        NSLog(@"string is %@", cstr);
        
        CFRelease(cstr);
    }
    
    return 0;
}
