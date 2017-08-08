#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *names = [NSArray arrayWithObjects:@"Foo", @"Bar", @"Moo", nil];
        NSEnumerator *enumerator = [names objectEnumerator];
        NSString *name;
        
        while (name = [enumerator nextObject]) {
            NSLog(@"Name: %@", name);
        }
        
        NSEnumerator *reverseEnumerator = [names reverseObjectEnumerator];
        
        while (name = [reverseEnumerator nextObject]) {
            NSLog(@"Name: %@", name);
        }
    }
    
    return 0;
}
