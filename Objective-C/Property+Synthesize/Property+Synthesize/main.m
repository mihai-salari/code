#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        
        p.lastName = @"Bar";
        
        NSLog(@"P's last name is %@", p.lastName);
        
        [p fullName];
    }
    
    return 0;
}
