#import <Foundation/Foundation.h>
#import "VowelDestroyer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name = @"Foo Bar";
        NSLog(@"%@", [name stringByDestroyingVowels]);        
    }
    
    return 0;
}
