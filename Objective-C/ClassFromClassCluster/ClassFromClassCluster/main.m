#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *someNumber = @1.234;
        
        Class someClass = [someNumber class];
        
        NSLog(@"%@", someClass); // Class cluster in work
    }
    
    return 0;
}
