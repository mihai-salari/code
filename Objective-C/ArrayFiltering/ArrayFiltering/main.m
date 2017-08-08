#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *foo = [[Person alloc] init];
        foo.firstName = @"Foo";
        foo.lastName = @"Bar";
        foo.basicSalary = 1500.0;
        
        Person *nick = [[Person alloc] init];
        nick.firstName = @"Nick";
        nick.lastName = @"Dick";
        nick.basicSalary = 950.0;
        
        Person *moo = [[Person alloc] init];
        moo.firstName = @"Moo";
        moo.lastName = @"Boo";
        moo.basicSalary = 2000.0;
        
        Person *john = [[Person alloc] init];
        john.firstName = @"John";
        john.lastName = @"Appleseed";
        john.basicSalary = 950.0;
        
        NSMutableArray *person = [NSMutableArray arrayWithObjects:foo, nick, moo, nil];
        [person addObject:john];
        
        NSArray *personArray = [NSArray arrayWithArray:person];
        
        NSPredicate *salaryPredicate = [NSPredicate predicateWithFormat:@"self.basicSalary >= 1500"];
        NSArray *richPersonArray = [personArray filteredArrayUsingPredicate:salaryPredicate];
        
        NSLog(@"Person who salary >= 2000: %@", richPersonArray);
        
        nick.basicSalary = 10000.0;
        
        // Note that all below arrays are pointing to the same Person reference above,
        // that's why when we set 'person' to nil, the other two are not call because
        // all person are deallocated already.
        NSLog(@"person: %@", person);
        NSLog(@"personArray: %@", personArray);
        NSLog(@"richPersonArray: %@", richPersonArray);
        
        person = nil;
        personArray = nil;
        richPersonArray = nil;        
    }
    
    return 0;
}
