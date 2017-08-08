#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSSet *_set = [[NSSet alloc] initWithObjects:@"Foo", @"Bar", nil];
        
        if ([_set containsObject:@"Foo"]) {
            NSLog(@"I found Foo!");
        }
    }
    
    return 0;
}
