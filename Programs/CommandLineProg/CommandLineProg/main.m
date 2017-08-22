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

/*
 
 To compile the program from command-line:

 18:54:40 ~/Code/Programs/CommandLineProg/CommandLineProg
 18:54:40 ~/Code/Programs/CommandLineProg/CommandLineProg pwd
 /Users/choonsiong/Code/Programs/CommandLineProg/CommandLineProg
 18:54:41 ~/Code/Programs/CommandLineProg/CommandLineProg
 18:54:41 ~/Code/Programs/CommandLineProg/CommandLineProg ls -l
 total 24
 -rw-r--r--@ 1 choonsiong  staff  208 Aug 22 18:53 Person.h
 -rw-r--r--@ 1 choonsiong  staff  691 Aug 22 18:53 Person.m
 -rw-r--r--@ 1 choonsiong  staff  419 Aug 22 18:54 main.m
 18:54:43 ~/Code/Programs/CommandLineProg/CommandLineProg
 18:54:43 ~/Code/Programs/CommandLineProg/CommandLineProg clang -fobjc-arc Person.m main.m -o prog
 18:55:08 ~/Code/Programs/CommandLineProg/CommandLineProg ./prog
 P's first name is Foo
 P's last name is Bar
 P's full name is Foo Bar
 18:55:10 ~/Code/Programs/CommandLineProg/CommandLineProg

*/
