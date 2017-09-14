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

/*

 The length of the string is 5
 2017-09-14 21:27:42.187895+0800 CoreFoundationTollFreeBridging[3489:174728] \M-8\M-!Đ\M^?\^? World
 Program ended with exit code: 0

*/
