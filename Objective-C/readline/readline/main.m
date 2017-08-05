#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"What is your name? ");
        const char *name = readline(NULL);
        
        NSLog(@"Hello, %@", [NSString stringWithUTF8String:name]);
    }
    
    return 0;
}
