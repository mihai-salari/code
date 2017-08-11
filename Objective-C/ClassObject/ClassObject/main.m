#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Class object
        NSLog(@"%@ at %p", [Person class], [Person class]);
    }
    
    return 0;
}
