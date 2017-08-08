#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *names = [NSArray arrayWithObjects:@"Foo", @"Bar", @"Moo", nil];
        NSEnumerator *enumerator = [names objectEnumerator];
        NSEnumerator *reverseEnumerator = [names reverseObjectEnumerator];
        
        for (NSString *name in enumerator) {
            NSLog(@"name is %@", name);
        }
        
        for (NSString *name in names) {
            NSLog(@"name is %@", name);
        }
    }
    
    return 0;
}
