#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Specify a range
        NSRange range;
        range.location = 0;
        range.length = 3;
        
        NSString *name = @"Foo Bar";
        
        NSString *firstName = [name substringWithRange:range];
        NSLog(@"firstName = %@", firstName);
        
        // Using C aggregate structure assignment mechanism
        NSRange cRange = {0, 3};
        NSString *anotherFirstName = [name substringWithRange:cRange];
        NSLog(@"anotherFirstName = %@", anotherFirstName);
        
        // Use convenience function NSMakeRange()
        NSRange anotherRange = NSMakeRange(0, 3);
        NSString *yetAnotherFirstName = [name substringWithRange:anotherRange];
        NSLog(@"yetAnotherFirstName = %@", yetAnotherFirstName);
    }
    return 0;
}
