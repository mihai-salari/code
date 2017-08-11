#import <Foundation/Foundation.h>
#import "Person.h"
#import "SmallPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        [p sayHello];
        [p sayGoodbye];
        
        SmallPerson *sp = [[SmallPerson alloc] init];
        [sp sayHello];
        
        Person *p2 = [Person person];
        [p2 sayHello];
        
        SmallPerson *sp2 = [SmallPerson person];
        [sp2 sayGoodbye];
    }
    
    return 0;
}
