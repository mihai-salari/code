#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number;
        
        printf("number = %i\n", number);
        
        char *name = "Foo Bar"; // C style string
        NSString *fullName = @"Foo Bar"; // Objective-C NSString

        NSLog(@"Hello, World!");
        
        printf("name is %s\n", name);
        NSLog(@"fullName is %@", fullName);
    }
    
    return 0;
}
