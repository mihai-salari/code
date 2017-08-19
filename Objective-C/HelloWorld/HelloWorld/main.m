#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number;
        
        printf("number = %i\n", number); // number is default to 0
        
        char *name = "Foo Bar"; // C style string
        NSString *fullName = @"Foo Bar"; // Objective-C NSString
        
        printf("name is %s\n", name);
        NSLog(@"fullName is %@", fullName);
    }
    
    return 0;
}
