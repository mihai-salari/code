#import <Foundation/Foundation.h>
#import "Foo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Foo *foo = [Foo fooWithName:@"Foo"];
        
        NSLog(@"I am %@", foo.name);
        NSLog(@"There is %i foo", [Foo fooCount]);
        
        for (int i = 0; i < 10; i++) {
            Foo *f = [Foo fooWithName:[NSString stringWithFormat:@"Foo_%d", i]];
            
            NSLog(@"I am %@", f.name);
            NSLog(@"There is %i instance of f", [Foo fooCount]);
        }
    }
    
    return 0;
}

/*

 2017-09-10 17:28:13.729403+0800 ClassInitializeMethod[57150:3586064] I am Foo
 2017-09-10 17:28:13.729562+0800 ClassInitializeMethod[57150:3586064] There is 101 foo
 2017-09-10 17:28:13.729633+0800 ClassInitializeMethod[57150:3586064] I am Foo_0
 2017-09-10 17:28:13.729645+0800 ClassInitializeMethod[57150:3586064] There is 102 instance of f
 2017-09-10 17:28:13.729717+0800 ClassInitializeMethod[57150:3586064] I am Foo_1
 2017-09-10 17:28:13.729727+0800 ClassInitializeMethod[57150:3586064] There is 103 instance of f
 2017-09-10 17:28:13.729744+0800 ClassInitializeMethod[57150:3586064] I am Foo_2
 2017-09-10 17:28:13.729751+0800 ClassInitializeMethod[57150:3586064] There is 104 instance of f
 2017-09-10 17:28:13.729761+0800 ClassInitializeMethod[57150:3586064] I am Foo_3
 2017-09-10 17:28:13.729768+0800 ClassInitializeMethod[57150:3586064] There is 105 instance of f
 2017-09-10 17:28:13.729777+0800 ClassInitializeMethod[57150:3586064] I am Foo_4
 2017-09-10 17:28:13.729783+0800 ClassInitializeMethod[57150:3586064] There is 106 instance of f
 2017-09-10 17:28:13.729791+0800 ClassInitializeMethod[57150:3586064] I am Foo_5
 2017-09-10 17:28:13.729836+0800 ClassInitializeMethod[57150:3586064] There is 107 instance of f
 2017-09-10 17:28:13.729881+0800 ClassInitializeMethod[57150:3586064] I am Foo_6
 2017-09-10 17:28:13.729890+0800 ClassInitializeMethod[57150:3586064] There is 108 instance of f
 2017-09-10 17:28:13.729925+0800 ClassInitializeMethod[57150:3586064] I am Foo_7
 2017-09-10 17:28:13.729938+0800 ClassInitializeMethod[57150:3586064] There is 109 instance of f
 2017-09-10 17:28:13.729953+0800 ClassInitializeMethod[57150:3586064] I am Foo_8
 2017-09-10 17:28:13.729978+0800 ClassInitializeMethod[57150:3586064] There is 110 instance of f
 2017-09-10 17:28:13.730008+0800 ClassInitializeMethod[57150:3586064] I am Foo_9
 2017-09-10 17:28:13.730017+0800 ClassInitializeMethod[57150:3586064] There is 111 instance of f
 Program ended with exit code: 0

*/
