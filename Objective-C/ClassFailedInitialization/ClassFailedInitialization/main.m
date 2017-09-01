#import <Foundation/Foundation.h>
#import "Person.h"

// To demonstrate the use of failed initialization.

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new]; // This will failed
        
        if (p == nil) {
            NSLog(@"Error: not able to create instance of Person");
        } else {
            NSLog(@"Person is %@", p);
        }
    }
    
    return 0;
}
