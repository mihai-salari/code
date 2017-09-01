#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name = @"Foo Bar";
        
        const char *c_name = [name UTF8String];
        
        printf("My name is %s\n", c_name);
        
        NSString *objcName = [NSString stringWithUTF8String:c_name];
        
        NSLog(@"My name is %@", objcName);
    }
    
    return 0;
}
