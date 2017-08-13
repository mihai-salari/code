#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name = @"Foo Bar"; // static type
        id fullName = @"Foo Bar"; // dynamic type with 'id'
        
        NSLog(@"name = %@", [name uppercaseString]);
        NSLog(@"fullName = %@", [fullName uppercaseString]);
    }
    
    return 0;
}
