// Using ARC Bridged Class

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CFStringRef cstr = CFStringCreateWithCString(NULL, "Hello, C String!", kCFStringEncodingASCII);
        
        NSArray *data = [NSArray arrayWithObject:(__bridge_transfer NSString *)cstr];
        
        NSLog(@"data is %@", data);
        
        
    }
    
    return 0;
}
