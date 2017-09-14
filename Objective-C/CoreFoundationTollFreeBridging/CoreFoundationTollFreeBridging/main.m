#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *nsString = @"Hello";
        
        CFStringRef cfString;
        cfString = (__bridge CFStringRef)nsString; // cast it to a CFString
        
        printf("The length of the string is %ld\n", CFStringGetLength(cfString));
        
        // Create a CFString
        CFStringRef cfString2 = CFStringCreateWithCString(NULL, "World", kCFStringEncodingASCII);
        
        NSString *nsString2;
        nsString2 = (__bridge NSString *)cfString2;
        NSLog(@"%s %@", cfString, nsString2);
    }
    
    return 0;
}
