#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p setFirstName:"Foo"];
        [p setLastName:"Bar"];
        
        printf("P's first name is %s\n", [p firstName]);
        printf("P's last name is %s\n", [p lastName]);
        printf("P's full name is %s\n", [p fullName]);
    }
    
    return 0;
}
