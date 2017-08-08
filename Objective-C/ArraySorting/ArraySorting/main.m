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
        
        NSMutableArray *person = [NSMutableArray arrayWithObjects:foo, nick, moo, nil];
    }
    
    return 0;
}
