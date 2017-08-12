#import <Foundation/Foundation.h>
#import "Person.h"
#import "SmallPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person __weak *weakP = [[Person alloc] init]; // due to weak reference, deallocated immediately
        
        Person *p = [[Person alloc] init];
        [p sayHello];
        [p sayGoodbye];
        
        [p setFirstName:@"Foo"];
        [p setLastName:@"Bar"];
        [p sayHello];
        
        Person *pp = [Person personWithFirstName:@"John" andLastName:@"Appleseed"];
        [pp sayHello];
        [pp setName:@"John Appleseed"];
        
        
        NSLog(@"pp's age is %@", [p age]);
        NSLog(@"pp's gender is %u", [p gender]);
        
        SmallPerson *sp = [[SmallPerson alloc] init];
        [sp sayHello];
        [sp setName:@"Small Person"];
        
        Person *p2 = [Person person];
        [p2 sayHello];
        [p2 setName:@"Person Two"];
        
        SmallPerson *sp2 = [SmallPerson person];
        [sp2 sayGoodbye];
        [sp2 setName:@"Small Person Two"];
        
        SmallPerson *sp3;
        
        if (nil == sp3) {
            NSLog(@"Oh fuck, sp3 is nil");
        } else {
            NSLog(@"Oh fuck, sp3 is something");
        }
        
        NSLog(@"p's name is '%@'.", p.name);
        NSLog(@"p's age is %@.", p.age);
        
        p.name = @"Foo Bar Foo";
        p.gender = Female;
        p.age = @22;
        
        NSLog(@"%@", p);
    }
    
    return 0;
}
