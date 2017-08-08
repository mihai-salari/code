#import <Foundation/Foundation.h>
#import "Klass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Klass *k = [[Klass alloc] init];
        NSLog(@"%@", [k tenNumbers]);
    }
    
    return 0;
}
